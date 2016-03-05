{ stdenv, writeText, erlang, elixir, rebar3, openssl, libyaml, fetchHex, fetchFromGitHub,
  tree,
  pc, buildEnv }:

{ name, version
, src, appName ? name
, setupHook ? null
, buildInputs ? [], erlangDeps ? []
, postPatch ? ""
, compilePorts ? false
, installPhase ? null
, meta ? {}
, ... }:

with stdenv.lib;

let
  shell = drv: stdenv.mkDerivation {
    name = "interactive-shell-${drv.name}";
    buildInputs = [ drv ];
  };

  pkg = self: stdenv.mkDerivation ({

    name = "${name}-${version}";
    inherit version;
    inherit erlangDeps;

    buildInputs = unique (buildInputs ++ [ erlang elixir openssl libyaml tree ]);
    propagatedBuildInputs = erlangDeps;

    inherit src;

    setupHook = if setupHook == null
    then writeText "setupHook.sh" ''
       addToSearchPath ERL_LIBS "$1/lib/erlang/lib/"
       addToSearchPath ERLANG_DEPS "$1"
    ''
    else setupHook;

    postPatch = ''
      ${postPatch}
    '';

    configurePhase = ''
      runHook preConfigure
      set -x
      tree
      set +x
      runHook postConfigure
    '';

    buildPhase = ''
      runHook preBuild
      set -x
      make
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
        fd="$reldir"
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
