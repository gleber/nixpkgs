{stdenv, writeText, fetchFromGitHub }:

stdenv.mkDerivation rec {
    name = "hex-registry";
    rev = "adbd8ce";
    version = "0.0.0+build.${rev}";

    src = fetchFromGitHub {
        owner = "erlang-nix";
        repo = "hex-pm-registry-snapshots";
        inherit rev;
        sha256 = "1m2in94qb9x0v8h21mapx7g57kk73jn4ysg184yriryd8n3qzrlw";
    };

    installPhase = ''
       mkdir -p "$out/var/hex"
       zcat "registry.ets.gz" > "$out/var/hex/registry.ets"
    '';

    setupHook = writeText "setupHook.sh" ''
        export HEX_REGISTRY_SNAPSHOT="$1/var/hex/registry.ets"
   '';
}
