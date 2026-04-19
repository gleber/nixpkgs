{
  lib,
  buildGoModule,
  buildNpmPackage,
  fetchFromGitHub,
  nixosTests,
  testers,
}:

let
  version = "2.6.1";

  src = fetchFromGitHub {
    owner = "silverbulletmd";
    repo = "silverbullet";
    rev = version;
    hash = "sha256-vHRLOYsFsQjpDu3mlbJxWq+P07JnHdO54myFb2Rm18s=";
  };

  frontend = buildNpmPackage {
    pname = "silverbullet-frontend";
    inherit version src;

    npmDepsHash = "sha256-I5ohns5NKA2rl+jJDEbKb/P6ky6QjyLZc2QzcCsSu4A=";

    buildPhase = ''
      runHook preBuild

      npm run build
      npm run build:plug-compile

      runHook postBuild
    '';

    installPhase = ''
      runHook preInstall

      mkdir -p $out/client_bundle
      cp -r client_bundle/* $out/client_bundle/

      runHook postInstall
    '';
  };
in
buildGoModule (finalAttrs: {
  pname = "silverbullet";
  inherit version src;

  vendorHash = "sha256-SvMPyJbSVrj+lwXrNh2WEYNI41oqlzchFxCtXvIl4/4=";

  env.CGO_ENABLED = 0;

  ldflags = [
    "-X main.version=${version}"
  ];

  preBuild = ''
    rm -rf client_bundle/*
    cp -r --no-preserve=mode ${frontend}/client_bundle/* client_bundle/
  '';

  passthru = {
    tests = {
      inherit (nixosTests) silverbullet;
      version = testers.testVersion {
        package = finalAttrs.finalPackage;
        command = "silverbullet version";
      };
    };
  };

  meta = {
    changelog = "https://github.com/silverbulletmd/silverbullet/blob/${version}/website/CHANGELOG.md";
    description = "Open-source, self-hosted, offline-capable Personal Knowledge Management (PKM) web application";
    homepage = "https://silverbullet.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ aorith ];
    mainProgram = "silverbullet";
  };
})
