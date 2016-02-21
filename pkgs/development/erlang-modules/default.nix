{ stdenv, pkgs }: #? import <nixpkgs> {} }:

let
  self = rec {
    callPackage = pkgs.lib.callPackageWith (pkgs // self // hexPackages);
    hexOverrides = import ./hex-overrides.nix {
      inherit stdenv;
      inherit pkgs;
      callPackage = self.callPackage;
    };
    hexPackages = import ./hex-packages.nix {
      inherit stdenv;
      inherit pkgs;
      overrides = hexOverrides;
      callPackage = self.callPackage;
    };

    buildRebar3 = callPackage ./build-rebar3.nix {};
    buildHex = callPackage ./build-hex.nix {};

    ## Non hex packages
    webdriver = callPackage ./webdriver {};
  };
in self // self.hexPackages
