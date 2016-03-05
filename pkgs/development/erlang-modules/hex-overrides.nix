{ stdenv, callPackage, pkgs, up }:

self: super: let

  # Override individual fields of a derivation at lowest level and skip any
  # logic embedded in build-rebar3.nix, hence suitable mostlu for simple value
  # fields; this requires re-implementing pieces of said logic in overrides.
  overrideD = pkg: overrides: pkg.overrideDerivation overrides;

  # Override arguments of buildRebar3 call for a given function, allowing to use
  # logic embedded in build-rebar3.nix, hence suitable for fields which affect
  # other values in a derivation; Does not compose with itself.
  overrideF = pkg: overrides: pkg.override (oldArgs: {
    packageOverrides = overrides pkg;
  });

  # Thin wrapper around overrideF
  addErlangDeps = pkg: newErlangDeps: overrideF pkg (_:{
    erlangDeps = pkg.erlangDeps ++ newErlangDeps;
  });

  # Thin wrapper around overrideF
  addBuildInput = pkg: newBuildInputs: overrideF pkg (_:{
    buildInputs = pkg.buildInputs ++ newBuildInputs;
  });

in {
  barrel_jiffy_0_14_4 = overrideF super.barrel_jiffy_0_14_4 (_:{
    compilePorts = false;
    appName = "jiffy";
  });
  barrel_jiffy_0_14_5 = overrideF super.barrel_jiffy_0_14_5 (_:{
    compilePorts = false;
    appName = "jiffy";
  });
  barrel_jiffy = self.barrel_jiffy_0_14_5;

  mad_0_9_0 = addErlangDeps super.mad_0_9_0 [ self.fs_0_9_2 up.synrc_sh_0_9_0 ];
  mad = self.mad_0_9_0;

  active_0_9_0 = overrideF super.active_0_9_0 (pkg: {
    erlangDeps   = pkg.erlangDeps   ++ [ self.mad_0_9_0 self.fs_0_9_2 ];
    buildPlugins = pkg.buildPlugins ++ [ self.rebar3_hex ];
  });
  active = self.active_0_9_0;

  p1_xmlrpc_1_15_1 = overrideF super.p1_xmlrpc_1_15_1 (_:{
    buildPlugins = [ super.rebar3_hex ];
  });
  p1_xmlrpc = self.p1_xmlrpc_1_15_1;

  eleveldb_2_1_3 = addBuildInput super.eleveldb_2_1_3 [ pkgs.snappy ];
  eleveldb = self.eleveldb_2_1_3;

  fast_tls_1_0_1 = addBuildInput super.fast_tls_1_0_1 [ pkgs.openssl ];
  fast_tls = self.fast_tls_1_0_1;

  erlang_lua_0_1_0 = overrideF (addBuildInput super.erlang_lua_0_1_0 [ pkgs.lua ]) (_:{
    postPatch = ''
      sed -i 's|/Path_to_Lua_installation|${pkgs.lua}|' rebar.config
      ${super.erlang_lua_0_1_0.postPatch}
    '';
  });
  erlang_lua = self.erlang_lua_0_1_0;
}
