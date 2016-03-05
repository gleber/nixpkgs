{ stdenv, pkgs, fetchFromGitHub }: #? import <nixpkgs> {} }:

let
  self = rec {
    callPackage = pkgs.lib.callPackageWith (pkgs // self // hexPackages);
    hexOverrides = import ./hex-overrides.nix {
      inherit stdenv;
      inherit pkgs;
      up = self;
      callPackage = self.callPackage;
    };
    hexPackages = import ./hex-packages.nix {
      inherit stdenv;
      inherit pkgs;
      overrides = hexOverrides;
      callPackage = self.callPackage;
    };

    buildRebar3 = callPackage ./build-rebar3.nix {};
    buildErlangMk = callPackage ./build-erlang-mk.nix {};
    buildHex = callPackage ./build-hex.nix {};
    buildHexErlangMk = callPackage ./build-hex-erlang-mk.nix {};

    ## Non hex packages
    webdriver = callPackage ./webdriver {};

    synrc_sh_0_9_0 = callPackage ({ buildRebar3 }: buildRebar3 {
      name = "sh";
      version = "0.9.0";
      compilePorts = true;

      src = fetchFromGitHub {
        owner = "synrc";
        repo = "sh";
        rev = "0.9";
        sha256 = "1maxw11xwcq3a8gf0ijlwg38vln8z23xbcff4rb7nil54j1c0sld";
      };
    }) {};
    synrc_sh = synrc_sh_0_9_0;

    fs_1_9_0 = callPackage ({ buildRebar3 }: buildRebar3 {
      name = "fs";
      version = "1.9.0";
      compilePorts = true;

      src = fetchFromGitHub {
        owner = "synrc";
        repo = "fs";
        rev = "1.9";
        sha256 = "09mkmswr450hg73vw3crnppacfxipj0n1nsggp8mm6mhapdmbbj6";
      };
    }) {};
    fs = fs_1_9_0;
  };
in self // self.hexPackages
