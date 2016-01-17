{stdenv, writeText, fetchFromGitHub }:

stdenv.mkDerivation rec {
    name = "hex-registry";
    rev = "26d23ff";
    version = "0.0.0+build.${rev}";

    src = fetchFromGitHub {
        owner = "erlang-nix";
        repo = "hex-pm-registry-snapshots";
        inherit rev;
        sha256 = "0wiwli1cph7vv3y965larvpfll8lj1j4k1ckhjqw465czfx4gkxl";
    };

    installPhase = ''
       mkdir -p "$out/var/hex"
       zcat "registry.ets.gz" > "$out/var/hex/registry.ets"
    '';

    setupHook = writeText "setupHook.sh" ''
        export HEX_REGISTRY_SNAPSHOT="$1/var/hex/registry.ets"
   '';
}
