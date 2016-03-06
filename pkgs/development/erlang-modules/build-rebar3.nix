{ stdenv, writeText, erlang, rebar3, openssl, libyaml, fetchHex, fetchFromGitHub,
  tree,
  pc, buildEnv }:

{ name, version
, src, appName ? name
, setupHook ? null
, buildInputs ? [], erlangDeps ? [], buildPlugins ? []
, postPatch ? ""
, compilePorts ? false
, installPhase ? null
, meta ? {}
, ... }:

with stdenv.lib;

let
  ownPlugins = buildPlugins ++ (if compilePorts then [pc] else []);

  shell = drv: stdenv.mkDerivation {
    name = "interactive-shell-${drv.name}";
    buildInputs = [ drv ];
  };

  pkg = self: stdenv.mkDerivation ({

    name = "${name}-${version}";
    inherit version;
    inherit erlangDeps;

    buildInputs = unique (buildInputs ++ [ erlang rebar3 openssl libyaml tree ]);
    propagatedBuildInputs = unique (erlangDeps ++ ownPlugins);

    # The following are used by rebar3-nix-bootstrap
    inherit compilePorts;
    buildPlugins = ownPlugins;

    inherit src;

    setupHook = if setupHook == null
    then writeText "setupHook.sh" ''
       addToSearchPath ERL_LIBS "$1/lib/erlang/lib/"
       addToSearchPath ERLANG_DEPS "$1"
    ''
    else setupHook;

    postPatch = ''
      ${postPatch}
      rm -f rebar rebar3
    '';

    configurePhase = ''
      runHook preConfigure
      set -x
      cat rebar.lock || true
      rebar3-nix-bootstrap
      set +x
      runHook postConfigure
    '';

    buildPhase = ''
      runHook preBuild
      set -x
      cat rebar.config || true
      cat rebar.lock || true
      tree
      HOME=. rebar3 compile
      ${if compilePorts then ''
        DEBUG=1 HOME=. rebar3 pc compile
      '' else ''''}
      set +x
      runHook postBuild
    '';

    installPhase = if installPhase == null
    then ''
      runHook preInstall
      mkdir -p "$out/lib/erlang/lib/${appName}-${version}"
      mkdir "$out/nix-support"
      printf "${appName}" > "$out/nix-support/appName"
      for reldir in src ebin priv include; do
        fd="_build/default/lib/${appName}/$reldir"
        [ -d "$fd" ] || continue
        cp -Hrt "$out/lib/erlang/lib/${appName}-${version}" "$fd"
        success=1
      done
      runHook postInstall
    ''
    else installPhase;

    meta = {
      inherit (erlang.meta) platforms;
    } // meta;

    passthru = {
      packageName = name;
      env = shell self;
    };
  });
in
  fix pkg
