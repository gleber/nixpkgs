{ stdenv, pkgs }: #? import <nixpkgs> {} }:

let
  self = rec {
    callPackage = pkgs.lib.callPackageWith (pkgs // self // hexPackages);
    hexOverrides = import ./hex-overrides.nix {
      inherit stdenv;
      callPackage = self.callPackage;
    };
    hexPackages = import ./hex-packages.nix {
      inherit stdenv;
      callPackage = self.callPackage;
      overrides = hexOverrides;
    };

    buildRebar3 = callPackage ./build-rebar3.nix {};
    buildHex = callPackage ./build-hex.nix {};

    ## Non hex packages
    webdriver = callPackage ./webdriver {};
  };
in self // self.hexPackages
