{
  autoPatchelfHook,
  common-updater-scripts,
  fetchzip,
  lib,
  stdenv,
  stdenvNoCC,
  writeShellScript,
}:
stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "silverbullet-cli";
  version = "2.6.1";

  src =
    finalAttrs.passthru.sources.${stdenv.hostPlatform.system}
      or (throw "Unsupported system: ${stdenv.hostPlatform.system}");

  nativeBuildInputs = lib.optionals stdenv.hostPlatform.isLinux [ autoPatchelfHook ];

  buildInputs = [ stdenv.cc.cc.lib ];

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    install -Dm755 $src/silverbullet-cli $out/bin/silverbullet-cli
    runHook postInstall
  '';

  passthru = {
    sources = {
      "x86_64-linux" = fetchzip {
        url = "https://github.com/silverbulletmd/silverbullet/releases/download/${finalAttrs.version}/silverbullet-cli-linux-x86_64.zip";
        hash = "sha256-zE8phpI69COeuJ7yOG5jPo/Qp4TjxmyHD4rOsaIwCrI=";
        stripRoot = false;
      };
      "aarch64-linux" = fetchzip {
        url = "https://github.com/silverbulletmd/silverbullet/releases/download/${finalAttrs.version}/silverbullet-cli-linux-aarch64.zip";
        hash = "sha256-nrTjWWUUdeQSsPKHqoIYNkNAhmEjeqVWDWjMHyhQfPQ=";
        stripRoot = false;
      };
      "x86_64-darwin" = fetchzip {
        url = "https://github.com/silverbulletmd/silverbullet/releases/download/${finalAttrs.version}/silverbullet-cli-darwin-x86_64.zip";
        hash = "sha256-OuWd0Iw/WZ97GbexhDkUXb+wDM5x+SJ4iGRINXan4Jw=";
        stripRoot = false;
      };
      "aarch64-darwin" = fetchzip {
        url = "https://github.com/silverbulletmd/silverbullet/releases/download/${finalAttrs.version}/silverbullet-cli-darwin-aarch64.zip";
        hash = "sha256-7WMoHBfEVSFatLmKuEegSp02sAe4zt5csHrzDq/11ng=";
        stripRoot = false;
      };
    };

    updateScript = writeShellScript "update-silverbullet-cli" ''
      NEW_VERSION="$1"
      for platform in ${lib.escapeShellArgs finalAttrs.meta.platforms}; do
        ${lib.getExe' common-updater-scripts "update-source-version"} "silverbullet-cli" "$NEW_VERSION" --ignore-same-version --source-key="sources.$platform"
      done
    '';
  };

  meta = {
    changelog = "https://github.com/silverbulletmd/silverbullet/blob/${finalAttrs.version}/website/CHANGELOG.md";
    description = "CLI for SilverBullet, an open-source, self-hosted, offline-capable Personal Knowledge Management (PKM) web application";
    homepage = "https://silverbullet.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ aorith ];
    mainProgram = "silverbullet-cli";
    platforms = builtins.attrNames finalAttrs.passthru.sources;
  };
})
