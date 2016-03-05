{ stdenv, buildErlangMk, fetchHex }:

{ name, version, sha256
, hexPkg ? name
, ... }@attrs:

with stdenv.lib;

buildErlangMk (attrs // {

  src = fetchHex {
    pkg = hexPkg;
    inherit version;
    inherit sha256;
  };
})
