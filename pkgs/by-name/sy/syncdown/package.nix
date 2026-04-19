{
  lib,
  stdenv,
  stdenvNoCC,
  bun,
  cacert,
  fetchFromGitHub,
  autoPatchelfHook,
}:
let
  pname = "syncdown";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "hjinco";
    repo = "syncdown";
    rev = "cf7ef40af6c8a5f7b46a1798d3b367d6ddb1a108";
    hash = "sha256-J9OccGQeWPxs/OC4iDvr9yyZC2WrTofW9SZ5XDb4MIU=";
  };

  srcWithDeps = stdenvNoCC.mkDerivation {
    pname = "syncdown-src-with-deps";
    inherit version src;

    impureEnvVars = lib.fetchers.proxyImpureEnvVars ++ [
      "GIT_PROXY_COMMAND"
      "SOCKS_SERVER"
    ];

    nativeBuildInputs = [
      bun
      cacert
    ];

    dontConfigure = true;

    buildPhase = ''
      runHook preBuild

      export HOME=$(mktemp -d)
      bun install --frozen-lockfile --ignore-scripts

      runHook postBuild
    '';

    installPhase = ''
      runHook preInstall

      cp -r . $out

      runHook postInstall
    '';

    dontFixup = true;

    outputHash = "sha256-JuDE6Df6cue3hQz9aAXr7nq377eNIzb9z2S9RldrR0I=";
    outputHashAlgo = "sha256";
    outputHashMode = "recursive";
  };

  # Map Nix platforms to Bun targets
  bunTarget =
    {
      "aarch64-linux" = "bun-linux-arm64";
      "x86_64-linux" = "bun-linux-x64";
      "aarch64-darwin" = "bun-darwin-arm64";
      "x86_64-darwin" = "bun-darwin-x64";
    }
    .${stdenv.hostPlatform.system}
      or (throw "Unsupported system: ${stdenv.hostPlatform.system}");

in
stdenv.mkDerivation {
  inherit pname version;

  src = srcWithDeps;

  dontUnpack = true;

  nativeBuildInputs = [
    bun
  ] ++ lib.optionals stdenv.hostPlatform.isLinux [ autoPatchelfHook ];

  buildInputs = lib.optionals stdenv.hostPlatform.isLinux [ stdenv.cc.cc.lib ];

  buildPhase = ''
    runHook preBuild

    cp -r $src/. .
    chmod -R u+w .
    export HOME=$(mktemp -d)

    bun build --compile \
      --target ${bunTarget} \
      --outfile syncdown apps/cli/src/bin.ts

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin
    install -m755 syncdown $out/bin/syncdown

    runHook postInstall
  '';

  meta = {
    description = "Sync Markdown docs with Google Docs, Notion, etc";
    homepage = "https://syncdown.dev/";
    license = lib.licenses.mit;
    platforms = [
      "aarch64-linux"
      "x86_64-linux"
      "aarch64-darwin"
      "x86_64-darwin"
    ];
    maintainers = with lib.maintainers; [ gleber ];
    mainProgram = "syncdown";
  };
}
