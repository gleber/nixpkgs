/* hex-packages.nix is an auto-generated file -- DO NOT EDIT! */

/* Unbuildable packages:

 * active_0_9_0
 * cache_tab_1_0_2
 * cloudi_core_1_4_0_rc_4
 * cloudi_core_1_5_1
 * cloudi_service_api_requests_1_5_1
 * cloudi_service_db_1_5_1
 * cloudi_service_db_cassandra_1_3_3
 * cloudi_service_db_cassandra_cql_1_5_1
 * cloudi_service_db_couchdb_1_5_1
 * cloudi_service_db_elasticsearch_1_3_3
 * cloudi_service_db_http_elli_1_5_1
 * cloudi_service_db_memcached_1_5_1
 * cloudi_service_db_mysql_1_5_1
 * cloudi_service_db_pgsql_1_5_1
 * cloudi_service_db_riak_1_3_3
 * cloudi_service_db_tokyotyrant_1_5_0
 * cloudi_service_filesystem_1_5_1
 * cloudi_service_http_client_1_5_1
 * cloudi_service_http_cowboy_1_5_1
 * cloudi_service_http_rest_1_5_1
 * cloudi_service_map_reduce_1_5_1
 * cloudi_service_monitoring_1_5_1
 * cloudi_service_queue_1_5_1
 * cloudi_service_quorum_1_5_1
 * cloudi_service_router_1_5_1
 * cloudi_service_tcp_1_5_1
 * cloudi_service_timers_1_5_1
 * cloudi_service_udp_1_5_1
 * cloudi_service_validate_1_5_1
 * cloudi_service_zeromq_1_5_1
 * comeonin_2_1_1
 * conferl_0_0_1
 * couchbeam_1_2_1
 * cpg_1_5_0
 * craterl_0_2_3
 * crc_0_3_0
 * crypto_ext_0_1_1
 * db_0_9_0
 * ddb_client_0_1_17
 * denrei_0_2_3
 * discount_0_7_0
 * dovetail_0_0_3
 * dproto_0_1_12
 * dqe_0_1_22
 * ekstat_0_2_2
 * eleveldb_2_1_3
 * elibphonenumber_0_1_1
 * elixir_ale_0_4_1
 * emodel_1_3_1
 * enotify_0_1_0
 * epubnub_0_1_0
 * eql_0_1_2
 * erlastic_search_1_1_1
 * erlaudio_0_2_3
 * erldn_1_0_5
 * erltrace_0_1_4
 * escalus_2_6_4
 * esip_1_0_2
 * ex_bitcask_0_1_0
 * exmerl_0_1_1
 * ezlib_1_0_1
 * fast_tls_1_0_1
 * fast_xml_1_1_3
 * fast_yaml_1_0_2
 * folsom_ddb_0_1_20
 * fqc_0_1_5
 * fqc_0_1_7
 * gpb_3_18_8
 * gpb_3_19_0
 * hackney_1_1_0
 * hackney_1_3_1
 * hackney_1_3_2
 * hackney_1_4_4
 * hackney_1_4_8
 * hash_ring_ex_1_1_2
 * iconv_1_0_0
 * jc_1_0_4
 * katipo_0_2_4
 * keccakf1600_2_0_0
 * kvs_2_1_0
 * lasp_0_0_4
 * lasse_1_1_0
 * libleofs_0_1_2
 * libsnarlmatch_0_1_5
 * libsodium_0_0_3
 * mad_0_9_0
 * mcrypt_0_1_0
 * mdns_client_lib_0_1_33
 * mmath_0_1_15
 * mmath_0_1_16
 * msgpack_0_4_0
 * mstore_0_1_9
 * n2o_2_3_0
 * nacl_0_3_0
 * observer_cli_1_0_3
 * p1_mysql_1_0_1
 * p1_pgsql_1_0_1
 * p1_stringprep_1_0_1
 * p1_utils_1_0_3
 * p1_xml_1_1_1
 * picosat_0_1_0
 * pooler_1_4_0
 * pqueue_1_4_0
 * rankmatcher_0_1_2
 * rebar3_abnfc_plugin_0_1_0
 * rebar3_auto_0_3_0
 * rebar3_autotest_0_1_1
 * rebar3_eqc_0_0_8
 * rebar3_exunit_0_1_1
 * rebar3_gpb_plugin_1_0_1
 * rebar3_live_0_1_3
 * rebar3_proper_plugin_0_1_0
 * rebar3_run_0_2_0
 * rebar3_yang_plugin_0_2_1
 * rebar_protobuffs_0_1_0
 * recon_2_2_1
 * riak_ensemble_2_1_3
 * savory_0_0_2
 * serial_0_1_2
 * service_1_5_1
 * slp_0_0_2
 * snappy_1_1_1
 * sqlite3_1_1_5
 * ssl_verify_hostname_1_0_5
 * ssl_verify_hostname_1_0_6
 * stringprep_1_0_2
 * stun_1_0_1
 * syslog_1_0_2
 * ucol_nif_1_1_5
 * weber_0_1_0
 * wpa_supplicant_0_1_0
 * xref_runner_0_2_5
 * yomel_0_5_0

*/
{ stdenv, pkgs, callPackage, overrides ? (self: super: {}) }:

let
  packages = self: rec {
    amqp_client_3_5_6 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          rabbit_common_3_5_6
        }:
          buildHex ({
            name = "amqp_client";
            version = "3.5.6";
            sha256 =
              "3dc10a5ba146fd737502d407a1afee0c460b4477d66ca361240985f412a2e9a3";

            erlangDeps  = [ rabbit_common_3_5_6 ];

            meta = {
              description = "Erlang RabbitMQ/AMQP client.";
              license = stdenv.lib.licenses.mpl11;
              homepage = "https://github.com/jbrisbin/amqp_client";
            };
          } // packageOverrides)
      ) {};

    amqp_client = amqp_client_3_5_6;

    aws_http_0_2_4 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          barrel_jiffy_0_14_4,
          lhttpc_1_3_0
        }:
          buildHex ({
            name = "aws_http";
            version = "0.2.4";
            sha256 =
              "96065da0d348a8e47e01531cfa720615e15a21c1bd4e5c82decf56026cde128f";

            buildPlugins  = [ rebar3_hex ];

            erlangDeps  = [ barrel_jiffy_0_14_4 lhttpc_1_3_0 ];

            meta = {
              description = "Amazon AWS HTTP helpers";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/anha0825/erl_aws_http";
            };
          } // packageOverrides)
      ) {};

    aws_http = aws_http_0_2_4;

    backoff_1_1_3 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "backoff";
            version = "1.1.3";
            sha256 =
              "30cead738d20e4c8d36cd37857dd5e23aeba57cb868bf64766d47d371422bdff";

            buildPlugins  = [ rebar3_proper ];


            meta = {
              description = "Exponential backoffs library";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/ferd/backoff";
            };
          } // packageOverrides)
      ) {};

    backoff = backoff_1_1_3;

    barrel_ibrowse_4_2_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "barrel_ibrowse";
            version = "4.2.0";
            sha256 =
              "58bd9e45932c10fd3d0ceb5c4e47952c3243ea300b388192761ac20be197b2ca";

            meta = {
              description = "Erlang HTTP client application";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/barrel-db/ibrowse";
            };
          } // packageOverrides)
      ) {};

    barrel_ibrowse = barrel_ibrowse_4_2_0;

    barrel_jiffy_0_14_4 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "barrel_jiffy";
            version = "0.14.4";
            sha256 =
              "3b730d6a18e988b8411f449bbb5df3637eb7bea864302924581b2391dd6b6e71";
            compilePorts = true;

            meta = {
              description = "JSON Decoder/Encoder.";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/barrel-db/jiffy";
            };
          } // packageOverrides)
      ) {};

    barrel_jiffy_0_14_5 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "barrel_jiffy";
            version = "0.14.5";
            sha256 =
              "8a874c6dbcf439a7d7b300b4463f47e088fd54e2b715ef7261e21807ee421f47";
            compilePorts = true;

            meta = {
              description = "JSON Decoder/Encoder.";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/barrel-db/jiffy";
            };
          } // packageOverrides)
      ) {};

    barrel_jiffy = barrel_jiffy_0_14_5;

    barrel_oauth_1_6_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "barrel_oauth";
            version = "1.6.0";
            sha256 =
              "b2a800b771d45f32a9a55d416054b3bdfab3a925b62e8000f2c08b719390d4dd";

            meta = {
              description = "An Erlang OAuth 1.0 implementation";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/barrel-db/erlang-oauth";
            };
          } // packageOverrides)
      ) {};

    barrel_oauth = barrel_oauth_1_6_0;

    base16_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "base16";
            version = "1.0.0";
            sha256 =
              "02afd0827e61a7b07093873e063575ca3a2b07520567c7f8cec7c5d42f052d76";

            meta = {
              description = "Base16 encoding and decoding";
              license = with stdenv.lib.licenses; [ bsd3 free ];
              homepage = "https://github.com/goj/base16";
            };
          } // packageOverrides)
      ) {};

    base16 = base16_1_0_0;

    base64url_0_0_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "base64url";
            version = "0.0.1";
            sha256 =
              "fab09b20e3f5db886725544cbcf875b8e73ec93363954eb8a1a9ed834aa8c1f9";

            meta = {
              description = "URL safe base64-compatible codec";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/dvv/base64url";
            };
          } // packageOverrides)
      ) {};

    base64url = base64url_0_0_1;

    bbmustache_1_0_4 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "bbmustache";
            version = "1.0.4";
            sha256 =
              "03b0d47db66e86df993896dce7578d7e4aae5f84636809b45fa8a3e34ee59b12";

            meta = {
              description =
                "Binary pattern match Based Mustache template engine for Erlang/OTP";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/soranoba/bbmustache";
            };
          } // packageOverrides)
      ) {};

    bbmustache_1_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "bbmustache";
            version = "1.1.0";
            sha256 =
              "aa22469836bb8a9928ad741bdd2038d49116228bfbe0c2d6c792e1bdd4b256d9";

            meta = {
              description =
                "Binary pattern match Based Mustache template engine for Erlang/OTP";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/soranoba/bbmustache";
            };
          } // packageOverrides)
      ) {};

    bbmustache = bbmustache_1_1_0;

    bear_0_8_3 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "bear";
            version = "0.8.3";
            sha256 =
              "0a04ce4702e00e0a43c0fcdd63e38c9c7d64dceb32b27ffed261709e7c3861ad";

            meta = {
              description = "Statistics functions for Erlang";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/puzza007/bear";
            };
          } // packageOverrides)
      ) {};

    bear = bear_0_8_3;

    bert_0_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "bert";
            version = "0.1.0";
            sha256 =
              "2a561521ec3529b248658a3e2d3d4bfe6729b0ab8291c701bf15ef413eda1506";

            meta = {
              description = "BERT Encoder/Decoder";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/yuce/bert.erl";
            };
          } // packageOverrides)
      ) {};

    bert = bert_0_1_0;

    bstr_0_3_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "bstr";
            version = "0.3.0";
            sha256 =
              "0fb4e05619663d48dabcd21023915741277ba392f2a5710dde7ab6034760284d";

            meta = {
              description = "Erlang library that uses binaries as strings";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/jcomellas/bstr";
            };
          } // packageOverrides)
      ) {};

    bstr = bstr_0_3_0;

    certifi_0_1_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "certifi";
            version = "0.1.1";
            sha256 =
              "e6d1dda48fad1b1c5b454c8402e2ac375ae12bf85a9910decaf791f330a7de29";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description = "An OTP library";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/certifi/erlang-certifi";
            };
          } // packageOverrides)
      ) {};

    certifi_0_3_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "certifi";
            version = "0.3.0";
            sha256 =
              "42ae85fe91c038a634a5fb8d0c77f4fc581914c508f087c7138e9366a1517f6a";

            meta = {
              description = "An OTP library";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/certifi/erlang-certifi";
            };
          } // packageOverrides)
      ) {};

    certifi = certifi_0_3_0;

    cet_0_2_2 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          bbmustache_1_0_4,
          bstr_0_3_0,
          cowboy_1_0_4,
          gen_smtp_0_9_0,
          jsx_2_8_0,
          lager_3_0_1
        }:
          buildHex ({
            name = "cet";
            version = "0.2.2";
            sha256 =
              "3da06f36791484576e4b338a2d8b5cfa65fe81ae7ed748aa7df85de0cb3bd2b4";

            erlangDeps  = [
                            bbmustache_1_0_4
                            bstr_0_3_0
                            cowboy_1_0_4
                            gen_smtp_0_9_0
                            jsx_2_8_0
                            lager_3_0_1
                          ];

            meta = {
              description = "Cielo24 Erlang Tools";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/Cielo24/cet";
            };
          } // packageOverrides)
      ) {};

    cet = cet_0_2_2;

    cf_0_1_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "cf";
            version = "0.1.2";
            sha256 =
              "c86f56bca74dd3616057b28574d920973fe665ecb064aa458dc6a2447f3f4924";

            meta = {
              description = "Terminal colour helper";
              license = stdenv.lib.licenses.mit;
            };
          } // packageOverrides)
      ) {};

    cf_0_2_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "cf";
            version = "0.2.1";
            sha256 =
              "baee9aa7ec2dfa3cb4486b67211177caa293f876780f0b313b45718edef6a0a5";

            meta = {
              description = "Terminal colour helper";
              license = stdenv.lib.licenses.mit;
            };
          } // packageOverrides)
      ) {};

    cf = cf_0_2_1;

    cmark_0_6_8 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "cmark";
            version = "0.6.8";
            sha256 =
              "ee148d419684923567be4f413cf82c6f8da2d235e40d434e616febca158372cc";
            compilePorts = true;

            meta = {
              longDescription = "Elixir NIF for cmark (C), a parser library
                                following the CommonMark spec, a compatible
                                implementation of Markdown.";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/asaaki/cmark.ex";
            };
          } // packageOverrides)
      ) {};

    cmark = cmark_0_6_8;

    cowboy_1_0_4 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          cowlib_1_0_2,
          ranch_1_2_1
        }:
          buildHex ({
            name = "cowboy";
            version = "1.0.4";
            sha256 =
              "6a0edee96885fae3a8dd0ac1f333538a42e807db638a9453064ccfdaa6b9fdac";

            erlangDeps  = [ cowlib_1_0_2 ranch_1_2_1 ];

            meta = {
              description =
                "Small, fast, modular HTTP server written in Erlang.";
              license = stdenv.lib.licenses.isc;
              homepage = "https://github.com/ninenines/cowboy";
            };
          } // packageOverrides)
      ) {};

    cowboy = cowboy_1_0_4;

    cowlib_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "cowlib";
            version = "1.0.0";
            sha256 =
              "4dacd60356177ec8cf93dbff399de17435b613f3318202614d3d5acbccee1474";

            meta = {
              description = "Support library for manipulating Web protocols.";
              license = stdenv.lib.licenses.isc;
              homepage = "https://github.com/ninenines/cowlib";
            };
          } // packageOverrides)
      ) {};

    cowlib_1_0_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "cowlib";
            version = "1.0.2";
            sha256 =
              "db622da03aa039e6366ab953e31186cc8190d32905e33788a1acb22744e6abd2";

            meta = {
              description = "Support library for manipulating Web protocols.";
              license = stdenv.lib.licenses.isc;
              homepage = "https://github.com/ninenines/cowlib";
            };
          } // packageOverrides)
      ) {};

    cowlib_1_3_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "cowlib";
            version = "1.3.0";
            sha256 =
              "2b1ac020ec92e7a59cb7322779870c2d3adc7c904ecb3b9fa406f04dc9816b73";

            meta = {
              description = "Support library for manipulating Web protocols.";
              license = stdenv.lib.licenses.isc;
              homepage = "https://github.com/ninenines/cowlib";
            };
          } // packageOverrides)
      ) {};

    cowlib = cowlib_1_3_0;

    cpg_1_5_1 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          quickrand_1_5_1,
          reltool_util_1_5_1,
          trie_1_5_1
        }:
          buildHex ({
            name = "cpg";
            version = "1.5.1";
            sha256 =
              "3bd7b7c48a0f959985d7038d6c533ee5540d12b8adfa6693409f4f6f492f4b45";

            erlangDeps  = [ quickrand_1_5_1 reltool_util_1_5_1 trie_1_5_1 ];

            meta = {
              description = "CloudI Process Groups";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/cpg";
            };
          } // packageOverrides)
      ) {};

    cpg = cpg_1_5_1;

    crypto_rsassa_pss_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "crypto_rsassa_pss";
            version = "1.0.0";
            sha256 =
              "d8f48874dbef940a8954126249499714e702d8ae0a8f23230a6c2f4a92833313";

            meta = {
              description =
                "RSASSA-PSS Public Key Cryptographic Signature Algorithm for Erlang";
              license = stdenv.lib.licenses.free;
              homepage =
                "https://github.com/potatosalad/erlang-crypto_rsassa_pss";
            };
          } // packageOverrides)
      ) {};

    crypto_rsassa_pss = crypto_rsassa_pss_1_0_0;

    cth_readable_1_2_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {}, cf_0_2_1 }:
          buildHex ({
            name = "cth_readable";
            version = "1.2.0";
            sha256 =
              "41dee2a37e0f266c590b3ea9542ca664e84ebc781a3949115eba658afc08026d";

            erlangDeps  = [ cf_0_2_1 ];

            meta = {
              description = "Common Test hooks for more readable logs";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/ferd/cth_readable";
            };
          } // packageOverrides)
      ) {};

    cth_readable = cth_readable_1_2_0;

    cucumberl_0_0_6 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "cucumberl";
            version = "0.0.6";
            sha256 =
              "3b9ea813997fd8c1e3d2b004e89288496dc21d2e5027f432e5900569d2c61cf3";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description = "A pure-erlang implementation of Cucumber.";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/ericbmerritt/cucumberl";
            };
          } // packageOverrides)
      ) {};

    cucumberl = cucumberl_0_0_6;

    detergent_0_3_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "detergent";
            version = "0.3.0";
            sha256 =
              "510cfb5d35b4b344762f074b73c8696b4bdde654ea046b3365cf92760ae33362";

            meta = {
              description = "An emulsifying Erlang SOAP library";
              license = with stdenv.lib.licenses; [ unlicense bsd3 ];
              homepage = "https://github.com/devinus/detergent";
            };
          } // packageOverrides)
      ) {};

    detergent = detergent_0_3_0;

    dflow_0_1_5 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "dflow";
            version = "0.1.5";
            sha256 =
              "f08e73f22d4c620ef5f358a0b40f8fe3b91219ca3922fbdbe7e42f1cb58f737e";

            meta = {
              description = "Pipelined flow processing engine";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/dalmatinerdb/dflow";
            };
          } // packageOverrides)
      ) {};

    dflow = dflow_0_1_5;

    dynamic_compile_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "dynamic_compile";
            version = "1.0.0";
            sha256 =
              "eb73d8e9a6334914f79c15ee8214acad9659c42222d49beda3e8b6f6789a980a";

            meta = {
              description =
                "compile and load erlang modules from string input";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/okeuday/dynamic_compile";
            };
          } // packageOverrides)
      ) {};

    dynamic_compile = dynamic_compile_1_0_0;

    econfig_0_7_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "econfig";
            version = "0.7.1";
            sha256 =
              "b11d68e3d288b5cb4bd34e668e03176c4ea42790c09f1f449cdbd46a649ea7f3";

            meta = {
              description = "simple Erlang config handler using INI files";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/benoitc/econfig";
            };
          } // packageOverrides)
      ) {};

    econfig = econfig_0_7_1;

    edown_0_7_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "edown";
            version = "0.7.0";
            sha256 =
              "6d7365a7854cd724e8d1fd005f5faa4444eae6a87eb6df9b789b6e7f6f09110a";

            meta = {
              description = "Markdown generated from Edoc.";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/uwiger/edown";
            };
          } // packageOverrides)
      ) {};

    edown = edown_0_7_0;

    egithub_0_2_2 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          goldrush_0_1_7,
          jiffy_0_14_7,
          lager_3_0_2,
          shotgun_0_2_2
        }:
          buildHex ({
            name = "egithub";
            version = "0.2.2";
            sha256 =
              "ff8e279d3868576cc2a05336c7ca4bed3972f7a01676be859b7e1750da4570f8";

            erlangDeps  = [
                            goldrush_0_1_7
                            jiffy_0_14_7
                            lager_3_0_2
                            shotgun_0_2_2
                          ];

            meta = {
              description = "GitHub API client";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/inaka/erlang-github";
            };
          } // packageOverrides)
      ) {};

    egithub = egithub_0_2_2;

    elli_1_0_4 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "elli";
            version = "1.0.4";
            sha256 =
              "87641b9c069b1372dac4e1bdda795076ea3142af78aac0d63896a38079e89e8e";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description =
                "Fast and robust web server for building high-throughput, low-latency apps";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/knutin/elli";
            };
          } // packageOverrides)
      ) {};

    elli = elli_1_0_4;

    ensq_0_1_6 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          jsx_1_4_5,
          jsxd_0_1_10,
          lager_2_1_1
        }:
          buildHex ({
            name = "ensq";
            version = "0.1.6";
            sha256 =
              "dd8c167eef061bb80384b34a81dc9a2079d42b254bd4ecbb0aa586937182a466";

            erlangDeps  = [ jsx_1_4_5 jsxd_0_1_10 lager_2_1_1 ];

            meta = {
              description = "Erlang client for NSQ";
              license = stdenv.lib.licenses.cddl;
              homepage = "https://github.com/project-fifo/ensq";
            };
          } // packageOverrides)
      ) {};

    ensq = ensq_0_1_6;

    eper_0_94_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "eper";
            version = "0.94.0";
            sha256 =
              "8d853792fa61a7fd068fe9c113a8a44bc839e11ad70cb8d5d2884566e3bede39";

            meta = {
              longDescription = "Erlang Performance and Debugging Tools sherk -
                                a profiler, similar to Linux oprofile or MacOs
                                shark gperf - a graphical performance monitor;
                                shows CPU, memory and network usage dtop -
                                similar to unix top redbug- similar to the OTP
                                dbg application, but safer, better etc.";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/massemanet/eper";
            };
          } // packageOverrides)
      ) {};

    eper = eper_0_94_0;

    epgsql_3_1_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "epgsql";
            version = "3.1.1";
            sha256 =
              "4b3f478ad090aed7200b2a8c9f2d5ef45c3aaa167be896b5237bba4b40f461d8";

            meta = {
              description = "PostgreSQL Client";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/epgsql/epgsql";
            };
          } // packageOverrides)
      ) {};

    epgsql = epgsql_3_1_1;

    episcina_1_1_0 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, gproc_0_3_1
        }:
          buildHex ({
            name = "episcina";
            version = "1.1.0";
            sha256 =
              "16238717bfbc8cb226342f6b098bb1fafb48c7547265a10ad3e6e83899abc46f";

            erlangDeps  = [ gproc_0_3_1 ];

            meta = {
              description = "Erlang Connection Pool";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    episcina = episcina_1_1_0;

    eplugin_0_1_4 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, lager_2_1_1
        }:
          buildHex ({
            name = "eplugin";
            version = "0.1.4";
            sha256 =
              "5103579323fb71e2c245fb5886c53e9ff4115282c09ecb5368b0ae293f0b20fe";

            erlangDeps  = [ lager_2_1_1 ];

            meta = {
              description = "plugin provider for erlang";
              license = stdenv.lib.licenses.cddl;
              homepage = "https://github.com/Licenser/eplugin";
            };
          } // packageOverrides)
      ) {};

    eplugin = eplugin_0_1_4;

    eredis_1_0_8 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "eredis";
            version = "1.0.8";
            sha256 =
              "f303533e72129b264a2d8217c4ddc977c7527ff4b8a6a55f92f62b7fcc099334";

            meta = {
              description = "Erlang Redis client";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/wooga/eredis";
            };
          } // packageOverrides)
      ) {};

    eredis = eredis_1_0_8;

    eredis_cluster_0_5_4 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          eredis_1_0_8,
          poolboy_1_5_1
        }:
          buildHex ({
            name = "eredis_cluster";
            version = "0.5.4";
            sha256 =
              "09320fe4fb737923e254d6d7ff4da421c1515fc74be9d2d9482ee4a576367681";

            erlangDeps  = [ eredis_1_0_8 poolboy_1_5_1 ];

            meta = {
              description =
                "An erlang wrapper for eredis library to support cluster mode";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/adrienmo/eredis_cluster";
            };
          } // packageOverrides)
      ) {};

    eredis_cluster = eredis_cluster_0_5_4;

    erlang_lua_0_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "erlang_lua";
            version = "0.1.0";
            sha256 =
              "4376a57f86e43ae1d687dca8b6c7c7f692b95d30091a9550636328358026e6eb";
            compilePorts = true;

            meta = {
              longDescription = "Erlang-lua hex package, using Erlang's Port
                                and C Node to run Lua VM as an external Node";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/rtraschke/erlang-lua";
            };
          } // packageOverrides)
      ) {};

    erlang_lua = erlang_lua_0_1_0;

    erlang_term_1_4_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "erlang_term";
            version = "1.4.0";
            sha256 =
              "1a4d491dbd13b7a714815af10fc658948a5a440de23755a32b741ca07d8ba592";

            meta = {
              description = "Provide the in-memory size of Erlang terms";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/erlang_term";
            };
          } // packageOverrides)
      ) {};

    erlang_term_1_5_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "erlang_term";
            version = "1.5.1";
            sha256 =
              "88bae81a80306e82fd3fc43e2d8228049e666f3cfe4627687832cd7edb878e06";

            meta = {
              description = "Provide the in-memory size of Erlang terms";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/erlang_term";
            };
          } // packageOverrides)
      ) {};

    erlang_term = erlang_term_1_5_1;

    erlang_version_0_2_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "erlang_version";
            version = "0.2.0";
            sha256 =
              "74daddba65a247ec57913e5de8f243af42bbbc3d6a0c411a1252da81c09ae661";

            meta = {
              description = "Retrieve Erlang/OTP version like `18.1'";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/sapporo-beam/erlang_version";
            };
          } // packageOverrides)
      ) {};

    erlang_version = erlang_version_0_2_0;

    erlcloud_0_11_0 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          jsx_2_6_2,
          lhttpc_1_3_0,
          meck_0_8_3
        }:
          buildHex ({
            name = "erlcloud";
            version = "0.11.0";
            sha256 =
              "ca9876dab57ed8fb5fb75ab6ce11e59a346387d357d7a038a2e18d1d31a30716";

            erlangDeps  = [ jsx_2_6_2 lhttpc_1_3_0 meck_0_8_3 ];

            meta = {
              description = "Erlang cloud computing library";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/erlcloud/erlcloud";
            };
          } // packageOverrides)
      ) {};

    erlcloud_0_12_0 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          jsx_2_7_2,
          lhttpc_1_3_0,
          meck_0_8_3
        }:
          buildHex ({
            name = "erlcloud";
            version = "0.12.0";
            sha256 =
              "2ff2631a4e405a645cedf2713ec66728023e93ac80ed47035554a7d6205d412d";

            erlangDeps  = [ jsx_2_7_2 lhttpc_1_3_0 meck_0_8_3 ];

            meta = {
              description = "Erlang cloud computing library";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/erlcloud/erlcloud";
            };
          } // packageOverrides)
      ) {};

    erlcloud = erlcloud_0_12_0;

    erlexec_1_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "erlexec";
            version = "1.1.0";
            sha256 =
              "772162f0f0349f89ea11b9f27401cb437ccaabf480320284a13f2259bb63cb87";
            compilePorts = true;
            buildPlugins  = [ pc ];


            meta = {
              description = "OS Process Manager";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/saleyn/erlexec";
            };
          } // packageOverrides)
      ) {};

    erlexec = erlexec_1_1_0;

    erlsh_0_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "erlsh";
            version = "0.1.0";
            sha256 =
              "94ef1492dd59fef211f01ffd40c47b6e51c0f59e2a3d0739366e4890961332d9";
            compilePorts = true;

            meta = {
              longDescription = "Family of functions and ports involving
                                interacting with the system shell, paths and
                                external programs.";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    erlsh = erlsh_0_1_0;

    erlsom_1_2_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "erlsom";
            version = "1.2.1";
            sha256 =
              "e8f4d1d83583df7d1db8346aa30b82a6599b93fcc4b2d9165007e02ed40e7cae";

            meta = {
              description = "erlsom XSD parser";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    erlsom = erlsom_1_2_1;

    erlware_commons_0_18_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {}, cf_0_2_1 }:
          buildHex ({
            name = "erlware_commons";
            version = "0.18.0";
            sha256 =
              "e71dda7cd5dcf34c9d07255d49c67e1d229dd230c101fdb996820bcdb5b03c49";

            erlangDeps  = [ cf_0_2_1 ];

            meta = {
              description = "Additional standard library for Erlang";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/erlware/erlware_commons";
            };
          } // packageOverrides)
      ) {};

    erlware_commons = erlware_commons_0_18_0;

    erlzk_0_6_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "erlzk";
            version = "0.6.1";
            sha256 =
              "6bba045ad0b7beb566825b463ada2464929655ce01e291022c1efed81a674759";

            meta = {
              description = "A Pure Erlang ZooKeeper Client (no C dependency)";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/huaban/erlzk";
            };
          } // packageOverrides)
      ) {};

    erlzk = erlzk_0_6_1;

    esel_0_1_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "esel";
            version = "0.1.2";
            sha256 =
              "874d1775c86d27d9e88486a37351ffc09f826ef062c8ea211e65d08e103f946c";

            meta = {
              description = "An wrapper around openssl";
              license = stdenv.lib.licenses.mit;
            };
          } // packageOverrides)
      ) {};

    esel = esel_0_1_2;

    esqlite_0_2_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "esqlite";
            version = "0.2.1";
            sha256 =
              "79f2d1d05e6e29e50228af794dac8900ce47dd60bc11fbf1279f924f83752689";
            compilePorts = true;

            meta = {
              description = "A Sqlite3 NIF";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/mmzeeman/esqlite";
            };
          } // packageOverrides)
      ) {};

    esqlite = esqlite_0_2_1;

    eunit_formatters_0_3_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "eunit_formatters";
            version = "0.3.1";
            sha256 =
              "64a40741429b7aff149c605d5a6135a48046af394a7282074e6003b3b56ae931";

            meta = {
              description = "Better output for eunit suites";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/seancribbs/eunit_formatters";
            };
          } // packageOverrides)
      ) {};

    eunit_formatters = eunit_formatters_0_3_1;

    exec_1_0_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "exec";
            version = "1.0.1";
            sha256 =
              "87c7ef2dea2bb503bb0eec8cb34776172999aecc6e12d90f7629796a7a3ccb1f";
            compilePorts = true;
            buildPlugins  = [ pc ];


            meta = {
              description = "OS Process Manager";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/saleyn/erlexec";
            };
          } // packageOverrides)
      ) {};

    exec = exec_1_0_1;

    ezmq_0_2_0 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          gen_listener_tcp_0_3_2,
          lager_3_0_2
        }:
          buildHex ({
            name = "ezmq";
            version = "0.2.0";
            sha256 =
              "bc804ffded0b0d0f684d4313ad3fa676479df962c584daaf5aa14ada5b86a52b";

            erlangDeps  = [ gen_listener_tcp_0_3_2 lager_3_0_2 ];

            meta = {
              description = "Native Erlang 0MQ implementation";
              license = stdenv.lib.licenses.mpl20;
              homepage = "https://github.com/zeromq/ezmq";
            };
          } // packageOverrides)
      ) {};

    ezmq = ezmq_0_2_0;

    feeder_2_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "feeder";
            version = "2.0.0";
            sha256 =
              "9780c5f032d3480cf7d9fd71d3f0c5f73211e0d3a8d9cdabcb1327b3a4ff758e";

            meta = {
              description = "Stream parse RSS and Atom formatted XML feeds.
";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/michaelnisi/feeder";
            };
          } // packageOverrides)
      ) {};

    feeder = feeder_2_0_0;

    fifo_utils_0_1_19 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, lager_2_1_1
        }:
          buildHex ({
            name = "fifo_utils";
            version = "0.1.19";
            sha256 =
              "503927c87f7b5619715663d5220643a069f62df9a5ee503b82341fb353ba12d5";

            erlangDeps  = [ lager_2_1_1 ];

            meta = {
              description = "FiFo utility library";
              license = stdenv.lib.licenses.cddl;
              homepage = "https://github.com/project-fifo/fifo_utils";
            };
          } // packageOverrides)
      ) {};

    fifo_utils = fifo_utils_0_1_19;

    fn_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "fn";
            version = "1.0.0";
            sha256 =
              "1433b353c8739bb28ac0d6826c9f6a05033f158e8c8195faf01a863668b3bbc7";

            meta = {
              description = "More functional Erlang";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/artemeff/fn";
            };
          } // packageOverrides)
      ) {};

    fn = fn_1_0_0;

    folsom_0_8_3 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, bear_0_8_3
        }:
          buildHex ({
            name = "folsom";
            version = "0.8.3";
            sha256 =
              "afaa1ea4cd2a10a32242ac5d76fa7b17e98d202883859136b791d9a383b26820";

            erlangDeps  = [ bear_0_8_3 ];

            meta = {
              description = "Erlang based metrics system";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    folsom = folsom_0_8_3;

    folsomite_1_2_8 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, folsom_0_8_3
        }:
          buildHex ({
            name = "folsomite";
            version = "1.2.8";
            sha256 =
              "9ce64603cdffb8ad55e950142146b3fe05533020906a81aa9c2f524635d813dc";

            erlangDeps  = [ folsom_0_8_3 ];

            meta = {
              description = "Blow up your Graphite server with Folsom metrics";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    folsomite = folsomite_1_2_8;

    forms_0_0_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "forms";
            version = "0.0.1";
            sha256 =
              "530f63ed8ed5a171f744fc75bd69cb2e36496899d19dbef48101b4636b795868";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description =
                "Toolbox that simplifies working with Erlang's abstract format";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/efcasado/forms";
            };
          } // packageOverrides)
      ) {};

    forms = forms_0_0_1;

    fs_0_9_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "fs";
            version = "0.9.2";
            sha256 =
              "9a00246e8af58cdf465ae7c48fd6fd7ba2e43300413dfcc25447ecd3bf76f0c1";
            compilePorts = true;

            meta = {
              description = "FS VXZ Listener";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    fs = fs_0_9_2;

    fuse_2_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "fuse";
            version = "2.0.0";
            sha256 =
              "e2c55c0629ce418974165a65b342e54527333303d7e9c1f0493679144c9698cb";

            meta = {
              description = "A Circuit breaker implementation for Erlang";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/jlouis/fuse";
            };
          } // packageOverrides)
      ) {};

    fuse = fuse_2_0_0;

    gen_listener_tcp_0_3_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "gen_listener_tcp";
            version = "0.3.2";
            sha256 =
              "b3c3fbc525ba2b32d947b06811d38470d5b0abe2ca81b623192a71539ed22336";

            meta = {
              description = "Generic TCP Server";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/travelping/gen_listener_tcp";
            };
          } // packageOverrides)
      ) {};

    gen_listener_tcp = gen_listener_tcp_0_3_2;

    gen_smtp_0_9_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "gen_smtp";
            version = "0.9.0";
            sha256 =
              "5a05f23a7cbe0c6242d290b445c6bbc0c287e3d0e09d3fcdc6bcd2c8973b6688";

            meta = {
              longDescription = "A generic Erlang SMTP server framework that
                                can be extended via callback modules in the OTP
                                style. ";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/Vagabond/gen_smtp";
            };
          } // packageOverrides)
      ) {};

    gen_smtp = gen_smtp_0_9_0;

    getopt_0_8_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "getopt";
            version = "0.8.2";
            sha256 =
              "736e6db3679fbbad46373efb96b69509f8e420281635e9d92989af9f0a0483f7";

            meta = {
              description = "Command-line options parser for Erlang";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/jcomellas/getopt";
            };
          } // packageOverrides)
      ) {};

    getopt = getopt_0_8_2;

    goldrush_0_1_7 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "goldrush";
            version = "0.1.7";
            sha256 =
              "a94a74cd363ce5f4970ed8242c551ec62b71939db1bbfd2e030142cab25a4ffe";

            meta = {
              description =
                "Small, Fast event processing and monitoring for Erlang/OTP applications.
";
              license = stdenv.lib.licenses.isc;
              homepage = "https://github.com/DeadZen/goldrush";
            };
          } // packageOverrides)
      ) {};

    goldrush = goldrush_0_1_7;

    gproc_0_3_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "gproc";
            version = "0.3.1";
            sha256 =
              "3c449925a5cbf57cc40d13c6c282bc1080b5ed3bad97e1acdbe969fd63a65fce";

            meta = {
              longDescription = "Gproc is a process dictionary for Erlang,
                                which provides a number of useful features
                                beyond what the built-in dictionary has: * Use
                                any term as a process alias * Register a process
                                under several aliases * Non-unique properties
                                can be registered simultaneously by many
                                processes * QLC and match specification
                                interface for efficient queries on the
                                dictionary * Await registration, let's you wait
                                until a process registers itself * Atomically
                                give away registered names and properties to
                                another process * Counters, and aggregated
                                counters, which automatically maintain the total
                                of all counters with a given name * Global
                                registry, with all the above functions applied
                                to a network of nodes";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/uwiger/gproc";
            };
          } // packageOverrides)
      ) {};

    gproc_0_5_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "gproc";
            version = "0.5.0";
            sha256 =
              "5bc0fa4e999a6665b92ce57a7f12d7e9d1c26bfc39b0f657994be05cd3818b18";

            meta = {
              longDescription = "Gproc is a process dictionary for Erlang,
                                which provides a number of useful features
                                beyond what the built-in dictionary has: * Use
                                any term as a process alias * Register a process
                                under several aliases * Non-unique properties
                                can be registered simultaneously by many
                                processes * QLC and match specification
                                interface for efficient queries on the
                                dictionary * Await registration, let's you wait
                                until a process registers itself * Atomically
                                give away registered names and properties to
                                another process * Counters, and aggregated
                                counters, which automatically maintain the total
                                of all counters with a given name * Global
                                registry, with all the above functions applied
                                to a network of nodes";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/uwiger/gproc";
            };
          } // packageOverrides)
      ) {};

    gproc = gproc_0_5_0;

    gun_1_0_0_pre_1 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          cowlib_1_3_0,
          ranch_1_1_0
        }:
          buildHex ({
            name = "gun";
            version = "1.0.0-pre.1";
            sha256 =
              "53aca19e83b15127aa4e299435823b367d5ba6797852984af6c2b9b493be9d56";

            erlangDeps  = [ cowlib_1_3_0 ranch_1_1_0 ];

            meta = {
              description = "Asynchronous SPDY, HTTP and Websocket client.";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    gun = gun_1_0_0_pre_1;

    gurka_0_1_7 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "gurka";
            version = "0.1.7";
            sha256 =
              "b46c96446f46a53411a3b45d126ec19e724178818206ca1d2dd16abff28df6b5";

            meta = {
              description = "Erlang implementation of Cucumber";
              license = stdenv.lib.licenses.mit;
            };
          } // packageOverrides)
      ) {};

    gurka = gurka_0_1_7;

    hamcrest_0_1_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "hamcrest";
            version = "0.1.1";
            sha256 =
              "5207b83e8d3168b9cbbeb3b4c4d83817a38a05f55478510e9c4db83ef83fa0ca";

            meta = {
              description = "Erlang port of Hamcrest";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/hyperthunk/hamcrest-erlang";
            };
          } // packageOverrides)
      ) {};

    hamcrest = hamcrest_0_1_1;

    hlc_2_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "hlc";
            version = "2.0.0";
            sha256 =
              "460ac04654e920e068d1fd17aec1f78b1879cc42ac7f3def7497f0d1cc5056ad";

            meta = {
              description = "hybrid logical clock";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/barrel-db/hlc";
            };
          } // packageOverrides)
      ) {};

    hlc = hlc_2_0_0;

    hooks_1_1_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "hooks";
            version = "1.1.1";
            sha256 =
              "6834ad3a2a624a5ffd49e9cb146ff49ded423b67f31905b122d24128c72c5c85";

            meta = {
              description = "generic plugin & hook system";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/barrel-db/hooks";
            };
          } // packageOverrides)
      ) {};

    hooks = hooks_1_1_1;

    http_signature_1_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "http_signature";
            version = "1.1.0";
            sha256 =
              "3e6036d9c29289ed0e35dd6f41821dec9061ce20aad3c4d35dcbae8c84eb3baa";

            meta = {
              description =
                "Erlang and Elixir implementations of Joyent's HTTP Signature Scheme.";
              license = stdenv.lib.licenses.free;
              homepage =
                "https://github.com/potatosalad/erlang-http_signature";
            };
          } // packageOverrides)
      ) {};

    http_signature = http_signature_1_1_0;

    ibrowse_4_2_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "ibrowse";
            version = "4.2.2";
            sha256 =
              "b800cb7442bcc852c6832821e9d0a7098ff626e1415bddaeff4596640b31c0ae";

            meta = {
              description = "Erlang HTTP client application";
              license = with stdenv.lib.licenses; [ free bsd3 ];
              homepage = "https://github.com/cmullaparthi/ibrowse";
            };
          } // packageOverrides)
      ) {};

    ibrowse = ibrowse_4_2_2;

    idna_1_0_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "idna";
            version = "1.0.2";
            sha256 =
              "a5d645e307aa4f67efe31682f720b7eaf431ab148b3d6fb66cbaf6314499610f";

            meta = {
              description = "A pure Erlang IDNA implementation";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/benoitc/erlang-idna";
            };
          } // packageOverrides)
      ) {};

    idna_1_0_3 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "idna";
            version = "1.0.3";
            sha256 =
              "357d489a51112db4f216034406834f9172b3c0ff5a12f83fb28b25ca271541d1";

            meta = {
              description = "A pure Erlang IDNA implementation";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/benoitc/erlang-idna";
            };
          } // packageOverrides)
      ) {};

    idna = idna_1_0_3;

    inaka_aleppo_0_9_9 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "inaka_aleppo";
            version = "0.9.9";
            sha256 =
              "11c09648e42b5755a437319a12826c17344a162db73dd2880457b0fa3a1ce1ff";

            meta = {
              description = "Aleppo: ALternative Erlang Pre-ProcessOr";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/inaka/aleppo";
            };
          } // packageOverrides)
      ) {};

    inaka_aleppo = inaka_aleppo_0_9_9;

    inaka_mixer_0_1_5 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "inaka_mixer";
            version = "0.1.5";
            sha256 =
              "37af35b1c17a94a0cb643cba23cba2ca68d6fe51c3ad8337629d4c3c017cc912";

            meta = {
              description = "Mix in public functions from external modules";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/inaka/mixer";
            };
          } // packageOverrides)
      ) {};

    inaka_mixer = inaka_mixer_0_1_5;

    jiffy_0_14_7 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "jiffy";
            version = "0.14.7";
            sha256 =
              "2b3b0f7976dae9c8266036e0d7e0398b64ac5207e3beee4c57896e44b2c17e97";
            compilePorts = true;

            meta = {
              description = "JSON Decoder/Encoder.";
              license = with stdenv.lib.licenses; [ mit bsd3 ];
              homepage = "https://github.com/davisp/jiffy";
            };
          } // packageOverrides)
      ) {};

    jiffy = jiffy_0_14_7;

    jose_1_6_1 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          base64url_0_0_1
        }:
          buildHex ({
            name = "jose";
            version = "1.6.1";
            sha256 =
              "36f1875790af6a1353a737fa13c6ba1f5356f1bd569341ac035eeaa22be23ac9";

            erlangDeps  = [ base64url_0_0_1 ];

            meta = {
              description =
                "JSON Object Signing and Encryption (JOSE) for Erlang and Elixir.";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/potatosalad/erlang-jose";
            };
          } // packageOverrides)
      ) {};

    jose = jose_1_6_1;

    jsone_1_2_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "jsone";
            version = "1.2.0";
            sha256 =
              "a60e74284d3a923cde65c00a39dd4542fd7da7c22e8385c0378ad419c54b2e08";

            meta = {
              description = "Erlang JSON Library";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/sile/jsone";
            };
          } // packageOverrides)
      ) {};

    jsone = jsone_1_2_0;

    jsx_1_4_5 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "jsx";
            version = "1.4.5";
            sha256 =
              "ff5115611c5dd789cebe3addc07d18b86340f701c52ad063caba6fe8da3a489b";

            meta = {
              longDescription = "an erlang application for consuming, producing
                                and manipulating json. inspired by yajl";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/talentdeficit/jsx";
            };
          } // packageOverrides)
      ) {};

    jsx_2_2_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "jsx";
            version = "2.2.0";
            sha256 =
              "d0bbc1ef47fd2fed84e28faed66918cf9eceed03b7ded48a23076e716fdbc84f";

            meta = {
              longDescription = "an erlang application for consuming, producing
                                and manipulating json. inspired by yajl";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/talentdeficit/jsx";
            };
          } // packageOverrides)
      ) {};

    jsx_2_6_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "jsx";
            version = "2.6.2";
            sha256 =
              "6bfccb6461cc3c7d5cc63f3e69ffeb2f1f8de50eca5980065311c056a69a907f";

            meta = {
              longDescription = "an erlang application for consuming, producing
                                and manipulating json. inspired by yajl";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/talentdeficit/jsx";
            };
          } // packageOverrides)
      ) {};

    jsx_2_7_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "jsx";
            version = "2.7.1";
            sha256 =
              "52d0e8bda0c8624bc59c3119236eb49bb66289702ea3d59ad76fd2a56cdf9089";

            meta = {
              longDescription = "an erlang application for consuming, producing
                                and manipulating json. inspired by yajl";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/talentdeficit/jsx";
            };
          } // packageOverrides)
      ) {};

    jsx_2_7_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "jsx";
            version = "2.7.2";
            sha256 =
              "36ca4772c09d69efc9e069aec7327cbd57d53d56c9a2777d8fb3bf3c1eab6df3";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              longDescription = "an erlang application for consuming, producing
                                and manipulating json. inspired by yajl";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/talentdeficit/jsx";
            };
          } // packageOverrides)
      ) {};

    jsx_2_8_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "jsx";
            version = "2.8.0";
            sha256 =
              "a8ba15d5bac2c48b2be1224a0542ad794538d79e2cc16841a4e24ca75f0f8378";

            meta = {
              longDescription = "an erlang application for consuming, producing
                                and manipulating json. inspired by yajl";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/talentdeficit/jsx";
            };
          } // packageOverrides)
      ) {};

    jsx = jsx_2_8_0;

    jsxd_0_1_10 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "jsxd";
            version = "0.1.10";
            sha256 =
              "f71a8238f08a1dee130e8959ff5343524891fa6531392667a5b911cead5f5082";

            meta = {
              description =
                "jsx data structire traversing and modification library.";
              license = stdenv.lib.licenses.cddl;
              homepage = "https://github.com/Licenser/jsxd";
            };
          } // packageOverrides)
      ) {};

    jsxd = jsxd_0_1_10;

    jsxn_0_2_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {}, jsx_2_8_0 }:
          buildHex ({
            name = "jsxn";
            version = "0.2.1";
            sha256 =
              "122a52538dc34ddf4a6efcaeb9744fc948d132f3608e96f109a0d1a054fd1f57";

            erlangDeps  = [ jsx_2_8_0 ];

            meta = {
              description = "jsx but with maps";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/talentdeficit/jsxn";
            };
          } // packageOverrides)
      ) {};

    jsxn = jsxn_0_2_1;

    jwalk_1_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "jwalk";
            version = "1.1.0";
            sha256 =
              "10c150910ba3539583887cb2b5c3f70d602138471e6f6b5c22498aa18ed654e1";

            meta = {
              longDescription = "Helper module for working with Erlang
                                proplist, map, EEP-18 and mochijson-style
                                representations of JSON";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/jr0senblum/jwalk";
            };
          } // packageOverrides)
      ) {};

    jwalk = jwalk_1_1_0;

    jwt_0_1_1 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          base64url_0_0_1,
          jsx_2_8_0
        }:
          buildHex ({
            name = "jwt";
            version = "0.1.1";
            sha256 =
              "abcff4a2a42af2b7b7bdf55eeb2b73ce2e3bef760750004e74bc5835d64d2188";

            erlangDeps  = [ base64url_0_0_1 jsx_2_8_0 ];

            meta = {
              description = "Erlang JWT library";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/artemeff/jwt";
            };
          } // packageOverrides)
      ) {};

    jwt = jwt_0_1_1;

    key2value_1_4_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "key2value";
            version = "1.4.0";
            sha256 =
              "ad63453fcf54ab853581b78c6d2df56be41ea691ba4bc05920264c19f35a0ded";

            meta = {
              description = "Erlang 2-way Map";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/key2value";
            };
          } // packageOverrides)
      ) {};

    key2value_1_5_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "key2value";
            version = "1.5.1";
            sha256 =
              "2a40464b9f8ef62e8828d869ac8d2bf9135b4956d29ba4eb044e8522b2d35ffa";

            meta = {
              description = "Erlang 2-way Map";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/key2value";
            };
          } // packageOverrides)
      ) {};

    key2value = key2value_1_5_1;

    keys1value_1_5_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "keys1value";
            version = "1.5.1";
            sha256 =
              "2385132be0903c170fe21e54a0c3e746a604777b66ee458bb6e5f25650d3354f";

            meta = {
              description = "Erlang Set Associative Map For Key Lists";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/keys1value";
            };
          } // packageOverrides)
      ) {};

    keys1value = keys1value_1_5_1;

    lager_2_1_1 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, goldrush_0_1_7
        }:
          buildHex ({
            name = "lager";
            version = "2.1.1";
            sha256 =
              "5eb1c17ff0f8692285b7648ef5d827d492b8d7554da782afc300ebb4861d5aba";

            erlangDeps  = [ goldrush_0_1_7 ];

            meta = {
              description = "Erlang logging framework";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/basho/lager";
            };
          } // packageOverrides)
      ) {};

    lager_3_0_1 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, goldrush_0_1_7
        }:
          buildHex ({
            name = "lager";
            version = "3.0.1";
            sha256 =
              "d32c9233105b72dc5c1f6a8fe9a33cc205ecccc359c4449950060cee5a329e35";

            erlangDeps  = [ goldrush_0_1_7 ];

            meta = {
              description = "Erlang logging framework";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/basho/lager";
            };
          } // packageOverrides)
      ) {};

    lager_3_0_2 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, goldrush_0_1_7
        }:
          buildHex ({
            name = "lager";
            version = "3.0.2";
            sha256 =
              "527f3b233e01b6cb68780c14ef675ed08ec02247dc029cacecbb56c78dfca100";

            erlangDeps  = [ goldrush_0_1_7 ];

            meta = {
              description = "Erlang logging framework";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/basho/lager";
            };
          } // packageOverrides)
      ) {};

    lager = lager_3_0_2;

    lager_watchdog_0_1_10 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, lager_2_1_1
        }:
          buildHex ({
            name = "lager_watchdog";
            version = "0.1.10";
            sha256 =
              "ac2a5f7d519fa69fff3d41c5c19419552085346f98de4378ca38efa81c322a94";

            erlangDeps  = [ lager_2_1_1 ];

            meta = {
              description = "lager provider to send data to watchdog.";
              license = stdenv.lib.licenses.cddl;
              homepage = "https://github.com/project-fifo/lager_watchdog";
            };
          } // packageOverrides)
      ) {};

    lager_watchdog = lager_watchdog_0_1_10;

    lhttpc_1_3_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "lhttpc";
            version = "1.3.0";
            sha256 =
              "ddd2bd4b85159bc987c954b14877168e6a3c3e516105702189776e97c50296a4";

            meta = {
              description = "Lightweight HTTP/1.1 client";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/talko/lhttpc";
            };
          } // packageOverrides)
      ) {};

    lhttpc = lhttpc_1_3_0;

    libsnarlmatch_0_1_7 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "libsnarlmatch";
            version = "0.1.7";
            sha256 =
              "72e9bcf7968e75774393778146ac6596116f1c60136dd607ad249183684ee380";

            meta = {
              description = "permission matcher library";
              license = stdenv.lib.licenses.cddl;
              homepage = "https://github.com/project-fifo/libsnarlmatch";
            };
          } // packageOverrides)
      ) {};

    libsnarlmatch = libsnarlmatch_0_1_7;

    locker_1_0_8 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          proper_1_1_1_beta
        }:
          buildHex ({
            name = "locker";
            version = "1.0.8";
            sha256 =
              "9cf9890e6b12dab7b8d1997c455348742db6caf2eaac3b64c514cd4e8dca2b56";

            erlangDeps  = [ proper_1_1_1_beta ];

            meta = {
              longDescription = "Distributed de-centralized consistent
                                in-memory key-value store written in Erlang.";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/wooga/locker";
            };
          } // packageOverrides)
      ) {};

    locker = locker_1_0_8;

    lru_1_3_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "lru";
            version = "1.3.1";
            sha256 =
              "cd6ac15c383d58cd2933df9cb918617b24b12b6e5fb24d94c4c8f200fd93f619";

            meta = {
              description = "implements a fixed-size LRU cache";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/barrel-db/erlang-lru";
            };
          } // packageOverrides)
      ) {};

    lru = lru_1_3_1;

    lz4_0_2_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "lz4";
            version = "0.2.2";
            sha256 =
              "a59522221e7cdfe3792bf8b3bb21cfe7ac657790e5826201fa2c5d0bc7484a2d";
            compilePorts = true;

            meta = {
              description = "LZ4 bindings for Erlang";
              license = stdenv.lib.licenses.isc;
              homepage = "https://github.com/szktty/erlang-lz4.git";
            };
          } // packageOverrides)
      ) {};

    lz4 = lz4_0_2_2;

    mdns_client_0_1_7 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, lager_2_1_1
        }:
          buildHex ({
            name = "mdns_client";
            version = "0.1.7";
            sha256 =
              "c707532d693bd19bed8ccd167574b6b0337f07e38b87bd7f9111d9cb9799fac2";

            erlangDeps  = [ lager_2_1_1 ];

            meta = {
              description = "mDNS service discovery client";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/Licenser/erlang-mdns-client";
            };
          } // packageOverrides)
      ) {};

    mdns_client = mdns_client_0_1_7;

    mdns_server_0_2_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "mdns_server";
            version = "0.2.0";
            sha256 =
              "bc9465880e15e57033960ab6820258b87134bef69032210c67e53e3718e289d0";

            meta = {
              description = "mDNS service discovery server";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/Licenser/erlang-mdns-server";
            };
          } // packageOverrides)
      ) {};

    mdns_server = mdns_server_0_2_0;

    mdns_server_lib_0_2_3 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          lager_3_0_2,
          mdns_server_0_2_0,
          ranch_1_1_0
        }:
          buildHex ({
            name = "mdns_server_lib";
            version = "0.2.3";
            sha256 =
              "078775ccea5d768095716ca6bd82f657601203352495d9726f4cc080c8c07695";

            erlangDeps  = [ lager_3_0_2 mdns_server_0_2_0 ranch_1_1_0 ];

            meta = {
              description =
                "server side for mdns client server implementation";
              license = stdenv.lib.licenses.cddl;
              homepage = "https://github.com/Licenser/mdns_server_lib";
            };
          } // packageOverrides)
      ) {};

    mdns_server_lib = mdns_server_lib_0_2_3;

    meck_0_8_3 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "meck";
            version = "0.8.3";
            sha256 =
              "53bd3873d0193d6b2b4a165cfc4b9ffc3934355c3ba19e88239ef6a027cc02b6";

            meta = {
              description = "A mocking framework for Erlang";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/eproxus/meck";
            };
          } // packageOverrides)
      ) {};

    meck_0_8_4 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "meck";
            version = "0.8.4";
            sha256 =
              "2cdfbd0edd8f62b3d2061efc03c0e490282dd2ea6de44e15d2006e83f4f8eead";

            meta = {
              description = "A mocking framework for Erlang";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/eproxus/meck";
            };
          } // packageOverrides)
      ) {};

    meck = meck_0_8_4;

    meta_0_0_1 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, forms_0_0_1
        }:
          buildHex ({
            name = "meta";
            version = "0.0.1";
            sha256 =
              "9aa1be58e265a16eafb9092d9675427672721ca9d3c924664e561b0857c6dcb8";

            buildPlugins  = [ rebar3_hex ];

            erlangDeps  = [ forms_0_0_1 ];

            meta = {
              description = "A metaprogramming library for Erlang";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/efcasado/forms";
            };
          } // packageOverrides)
      ) {};

    meta = meta_0_0_1;

    metrics_0_2_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "metrics";
            version = "0.2.1";
            sha256 =
              "1cccc3534fa5a7861a3dcc0414afba00a616937e82c95d6172a523a5d2e97c03";

            meta = {
              description =
                "A generic interface to different metrics systems in Erlang.";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/benoitc/erlang-metrics";
            };
          } // packageOverrides)
      ) {};

    metrics = metrics_0_2_1;

    mimerl_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "mimerl";
            version = "1.0.0";
            sha256 =
              "a30b01104a29bd3a363db8646e4ce0f7980f9ecd23a98707c46c3ced918c41b4";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description = "Library to handle mimetypes";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/benoitc/mimerl";
            };
          } // packageOverrides)
      ) {};

    mimerl_1_0_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "mimerl";
            version = "1.0.2";
            sha256 =
              "7a4c8e1115a2732a67d7624e28cf6c9f30c66711a9e92928e745c255887ba465";

            meta = {
              description = "Library to handle mimetypes";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/benoitc/mimerl";
            };
          } // packageOverrides)
      ) {};

    mimerl_1_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "mimerl";
            version = "1.1.0";
            sha256 =
              "def0f1922a5dcdeeee6e4f41139b364e7f0f40239774b528a0986b12bcb42ddc";

            meta = {
              description = "Library to handle mimetypes";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/benoitc/mimerl";
            };
          } // packageOverrides)
      ) {};

    mimerl = mimerl_1_1_0;

    mochiweb_2_12_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "mochiweb";
            version = "2.12.2";
            sha256 =
              "d3e681d4054b74a96cf2efcd09e94157ab83a5f55ddc4ce69f90b8144673bd7a";

            meta = {
              description =
                "MochiWeb is an Erlang library for building lightweight HTTP servers.
";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/mochi/mochiweb";
            };
          } // packageOverrides)
      ) {};

    mochiweb = mochiweb_2_12_2;

    mtx_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "mtx";
            version = "1.0.0";
            sha256 =
              "3bdcb209fe3cdfc5a6b5b95f619ecd123b7ee1d9203ace2178c8ff73be5bb90f";

            meta = {
              description = "Metrics Client";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/synrc/mtx";
            };
          } // packageOverrides)
      ) {};

    mtx = mtx_1_0_0;

    nats_msg_0_3_3 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "nats_msg";
            version = "0.3.3";
            sha256 =
              "80b2669f8c53395c156d3a121befe71a5131d7a42f14a38fbd7778a179b498ac";

            meta = {
              description =
                "Pure Erlang NATS Protocol Message Encoder/Decoder";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/yuce/nats_msg";
            };
          } // packageOverrides)
      ) {};

    nats_msg = nats_msg_0_3_3;

    neotoma_1_7_3 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "neotoma";
            version = "1.7.3";
            sha256 =
              "2da322b9b1567ffa0706a7f30f6bbbde70835ae44a1050615f4b4a3d436e0f28";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description = "PEG/Packrat toolkit and parser-generator.";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/seancribbs/neotoma";
            };
          } // packageOverrides)
      ) {};

    neotoma = neotoma_1_7_3;

    nerves_io_neopixel_0_2_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "nerves_io_neopixel";
            version = "0.2.0";
            sha256 =
              "662ca0af01330399eba9aff9806c086027ec5b3a2e235af4cd909282a6d09afa";

            meta = {
              description =
                "Drive WS2812B \"NeoPixel\" RGB LED strips from a Raspberry Pi using Elixir.";
              license = with stdenv.lib.licenses; [ mit free ];
              homepage = "https://github.com/GregMefford/nerves_io_neopixel";
            };
          } // packageOverrides)
      ) {};

    nerves_io_neopixel = nerves_io_neopixel_0_2_0;

    nodefinder_1_5_1 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          erlcloud_0_11_0
        }:
          buildHex ({
            name = "nodefinder";
            version = "1.5.1";
            sha256 =
              "c617372ee14c344c546a978936d7ceab283609b3b33b6516ed9b3651ad5bfb48";

            erlangDeps  = [ erlcloud_0_11_0 ];

            meta = {
              description = "Strategies For Automatic Node Discovery";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/nodefinder";
            };
          } // packageOverrides)
      ) {};

    nodefinder = nodefinder_1_5_1;

    p1_oauth2_0_6_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "p1_oauth2";
            version = "0.6.1";
            sha256 =
              "304923dcaf1edcc84b7f3f6fab1d5235777604ec3334453cf50de1060300e002";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description = "Erlang OAuth 2.0 implementation";
              license = with stdenv.lib.licenses; [ mit asl20 ];
              homepage = "https://github.com/processone/p1_oauth2";
            };
          } // packageOverrides)
      ) {};

    p1_oauth2 = p1_oauth2_0_6_1;

    p1_utils_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "p1_utils";
            version = "1.0.0";
            sha256 =
              "b2c6316286b071f2f667fb1c59b44fe0c996917515fa93374a4a3264affc5105";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description = "Erlang utility modules from ProcessOne";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/processone/p1_utils";
            };
          } // packageOverrides)
      ) {};

    p1_xmlrpc_1_15_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "p1_xmlrpc";
            version = "1.15.1";
            sha256 =
              "4bca3009ad6b6c37c30255e3d63191a188e0fc6b6db41a428fe111d699d1a330";

            meta = {
              description = "XML-RPC server";
              license = with stdenv.lib.licenses; [ free asl20 ];
              homepage = "https://github.com/processone/p1_xmlrpc";
            };
          } // packageOverrides)
      ) {};

    p1_xmlrpc = p1_xmlrpc_1_15_1;

    parse_trans_2_9_0 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, edown_0_7_0
        }:
          buildHex ({
            name = "parse_trans";
            version = "2.9.0";
            sha256 =
              "dda020976ad4aafe051ce785c0460a71a11b8b6b8c08a98e2c45b83edfdf2978";

            erlangDeps  = [ edown_0_7_0 ];

            meta = {
              description = "Parse transform utilities for Erlang.";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/uwiger/parse_trans";
            };
          } // packageOverrides)
      ) {};

    parse_trans = parse_trans_2_9_0;

    pc_1_2_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "pc";
            version = "1.2.0";
            sha256 =
              "ef0f59d26a25af0a5247ef1a06d28d8300f8624647b02dc521ac79a7eceb8883";

            meta = {
              description = "a rebar3 port compiler for native code";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/blt/port_compiler";
            };
          } // packageOverrides)
      ) {};

    pc = pc_1_2_0;

    png_0_1_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "png";
            version = "0.1.1";
            sha256 =
              "f8d4a17c118dcc16bb18d0fda6e26947001f9312bc6c061d2236b424fc3dd9ea";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              longDescription = "A pure Erlang library for creating PNG images.
                                It can currently create 8 and 16 bit RGB, RGB
                                with alpha, indexed, grayscale and grayscale
                                with alpha images.";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/yuce/png";
            };
          } // packageOverrides)
      ) {};

    png = png_0_1_1;

    poolboy_1_5_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "poolboy";
            version = "1.5.1";
            sha256 =
              "8f7168911120e13419e086e78d20e4d1a6776f1eee2411ac9f790af10813389f";

            meta = {
              description = "A hunky Erlang worker pool factory";
              license = with stdenv.lib.licenses; [ unlicense asl20 ];
              homepage = "https://github.com/devinus/poolboy";
            };
          } // packageOverrides)
      ) {};

    poolboy = poolboy_1_5_1;

    pooler_1_5_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "pooler";
            version = "1.5.0";
            sha256 =
              "f493b4b947967fa4250dd1f96e86a5440ecab51da114d2c256cced58ad991908";

            meta = {
              description = "An OTP Process Pool Application";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/seth/pooler";
            };
          } // packageOverrides)
      ) {};

    pooler = pooler_1_5_0;

    pot_0_9_4 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "pot";
            version = "0.9.4";
            sha256 =
              "ba6814a8e2be50d64ee65612cf627aba4784555054c22ac5066e6543f349887c";

            meta = {
              longDescription = "POT is an Erlang library for generating Google
                                Authenticator compatible one time passwords.";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/yuce/pot";
            };
          } // packageOverrides)
      ) {};

    pot = pot_0_9_4;

    pqueue_1_5_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "pqueue";
            version = "1.5.1";
            sha256 =
              "7ba01afe6b50ea4b239fa770f9e2c2db4871b3927ac44aea180d1fd52601b317";

            meta = {
              description = "Erlang Priority Queue Implementation";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/pqueue";
            };
          } // packageOverrides)
      ) {};

    pqueue = pqueue_1_5_1;

    proper_1_1_1_beta = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "proper";
            version = "1.1.1-beta";
            sha256 =
              "bde5c0fef0f8d804a7c06aab4f293d19f42149e5880b3412b75efa608e86d342";

            meta = {
              description =
                "QuickCheck-inspired property-based testing tool for Erlang.";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/manopapad/proper";
            };
          } // packageOverrides)
      ) {};

    proper = proper_1_1_1_beta;

    protobuffs_0_8_2 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, meck_0_8_4
        }:
          buildHex ({
            name = "protobuffs";
            version = "0.8.2";
            sha256 =
              "b77e9d03518927b290cc5bb5cc9622a177e70289100fea9ccb57873573e54553";

            erlangDeps  = [ meck_0_8_4 ];

            meta = {
              longDescription = "An implementation of Google's Protocol Buffers
                                for Erlang, based on
                                ngerakines/erlang_protobuffs.";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/basho/erlang_protobuffs";
            };
          } // packageOverrides)
      ) {};

    protobuffs = protobuffs_0_8_2;

    providers_1_6_0 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, getopt_0_8_2
        }:
          buildHex ({
            name = "providers";
            version = "1.6.0";
            sha256 =
              "0f6876529a613d34224de8c61d3660388eb981142360f2699486d8536050ce2f";

            erlangDeps  = [ getopt_0_8_2 ];

            meta = {
              description = "Providers provider.";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/tsloughter/providers";
            };
          } // packageOverrides)
      ) {};

    providers = providers_1_6_0;

    quickrand_1_5_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "quickrand";
            version = "1.5.0";
            sha256 =
              "aae7bba9ffe0967ef1ab4e89bb39c212c89471cdd200dbe81bc9be29676efdd1";

            meta = {
              longDescription = "Quick Random Number Generation: Provides a
                                simple interface to call efficient random number
                                generation functions based on the context.
                                Proper random number seeding is enforced.";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/quickrand";
            };
          } // packageOverrides)
      ) {};

    quickrand_1_5_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "quickrand";
            version = "1.5.1";
            sha256 =
              "0b3dcc6ddb23319c1f6a5ed143778864b8ad2f0ebd693a2d121cf5ae0c4db507";

            meta = {
              longDescription = "Quick Random Number Generation: Provides a
                                simple interface to call efficient random number
                                generation functions based on the context.
                                Proper random number seeding is enforced.";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/quickrand";
            };
          } // packageOverrides)
      ) {};

    quickrand = quickrand_1_5_1;

    quintana_0_2_0 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, folsom_0_8_3
        }:
          buildHex ({
            name = "quintana";
            version = "0.2.0";
            sha256 =
              "0646fe332ca3415ca6b0b273b4a5689ec902b9f9004ca62229ded00bd5f64cda";

            erlangDeps  = [ folsom_0_8_3 ];

            meta = {
              description = "Wrapper around some Folsom functions";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    quintana_0_2_1 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, folsom_0_8_3
        }:
          buildHex ({
            name = "quintana";
            version = "0.2.1";
            sha256 =
              "d4683eb33c71f6cab3b17b896b4fa9180f17a0a8b086440bfe0c5675182f0194";

            erlangDeps  = [ folsom_0_8_3 ];

            meta = {
              description = "Wrapper around some Folsom functions";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    quintana = quintana_0_2_1;

    rabbit_common_3_5_6 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "rabbit_common";
            version = "3.5.6";
            sha256 =
              "9335ab3ebc4e8e140d7bc9b1b0e7ee99c0aa87d0a746b704184121ba35c04f1c";

            meta = {
              longDescription = "Includes modules which are a runtime
                                dependency of the RabbitMQ/AMQP Erlang client
                                and are common to the RabbitMQ server.";
              license = stdenv.lib.licenses.mpl11;
              homepage = "https://github.com/jbrisbin/rabbit_common";
            };
          } // packageOverrides)
      ) {};

    rabbit_common = rabbit_common_3_5_6;

    ranch_1_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "ranch";
            version = "1.1.0";
            sha256 =
              "98ade939e63e6567da5dec5bc5bd93cbdc53d53f8b1aa998adec60dc4057f048";

            meta = {
              description = "Socket acceptor pool for TCP protocols.";
              license = stdenv.lib.licenses.isc;
              homepage = "https://github.com/ninenines/ranch";
            };
          } // packageOverrides)
      ) {};

    ranch_1_2_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "ranch";
            version = "1.2.1";
            sha256 =
              "f602d057615ce737945c239e9c8155d3f5300fc5b1255abf81f2a9d0d08e5b04";

            meta = {
              description = "Socket acceptor pool for TCP protocols.";
              license = stdenv.lib.licenses.isc;
              homepage = "https://github.com/ninenines/ranch";
            };
          } // packageOverrides)
      ) {};

    ranch = ranch_1_2_1;

    ratx_0_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "ratx";
            version = "0.1.0";
            sha256 =
              "fbf933ff32fdc127200880f5b567820bf03504ade1bd697ffbc0535dbafc23d6";

            meta = {
              description =
                "Rate limiter and overload protection for erlang and elixir applications.
";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/liveforeverx/ratx";
            };
          } // packageOverrides)
      ) {};

    ratx = ratx_0_1_0;

    rebar3_appup_plugin_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "rebar3_appup_plugin";
            version = "1.0.0";
            sha256 =
              "8211e7cf4f251cdd3c324864e6e090d89a9edb58d019f4cdb7e1084cc6a4b9d7";

            meta = {
              description = "A rebar3 plugin for handling .appup files";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/lrascao/rebar3_appup_plugin";
            };
          } // packageOverrides)
      ) {};

    rebar3_appup_plugin = rebar3_appup_plugin_1_0_0;

    rebar3_asn1_compiler_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "rebar3_asn1_compiler";
            version = "1.0.0";
            sha256 =
              "25ec1d5c97393195650ac8c7a06a267a886a1479950ee047c43b5228c07b30b9";

            meta = {
              description = "Compile ASN.1 modules with Rebar3";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/pyykkis/rebar3_asn1_compiler";
            };
          } // packageOverrides)
      ) {};

    rebar3_asn1_compiler = rebar3_asn1_compiler_1_0_0;

    rebar3_diameter_compiler_0_3_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "rebar3_diameter_compiler";
            version = "0.3.1";
            sha256 =
              "c5965e3810ccf9ef9ba9185a81fe569ef6e9f3a9e546e99c5e900736b0c39274";

            meta = {
              description = "Compile diameter .dia files";
              license = stdenv.lib.licenses.mit;
              homepage =
                "https://github.com/carlosedp/rebar3_diameter_compiler";
            };
          } // packageOverrides)
      ) {};

    rebar3_diameter_compiler = rebar3_diameter_compiler_0_3_1;

    rebar3_elixirc_0_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "rebar3_elixirc";
            version = "0.1.0";
            sha256 =
              "1c6ae367737306beefa0891d60cabf0357b85fcf472a2808c3e2295882f6ead8";

            meta = {
              description = "A rebar plugin";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/tsloughter/rebar3_elixirc";
            };
          } // packageOverrides)
      ) {};

    rebar3_elixirc = rebar3_elixirc_0_1_0;

    rebar3_hex_1_17_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "rebar3_hex";
            version = "1.17.0";
            sha256 =
              "46b7b9a49e393579a38f4aca260586497e113cc50996510621087e8fd0f19f4e";

            meta = {
              description = "Hex.pm plugin for rebar3";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/tsloughter/rebar3_hex";
            };
          } // packageOverrides)
      ) {};

    rebar3_hex = rebar3_hex_1_17_0;

    rebar3_idl_compiler_0_3_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "rebar3_idl_compiler";
            version = "0.3.0";
            sha256 =
              "31ba95205c40b990cb3c49abb397abc47b4d5f9c402db83f9daebbc44e69789d";

            meta = {
              description = "Rebar3 IDL Compiler";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/sebastiw/rebar3_idl_compiler";
            };
          } // packageOverrides)
      ) {};

    rebar3_idl_compiler = rebar3_idl_compiler_0_3_0;

    rebar3_neotoma_plugin_0_2_0 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, neotoma_1_7_3
        }:
          buildHex ({
            name = "rebar3_neotoma_plugin";
            version = "0.2.0";
            sha256 =
              "c0ebbdb08c017cac90c7d3310a9bd4a5088a46abd4e2fef9e9a9805a657396b8";

            erlangDeps  = [ neotoma_1_7_3 ];

            meta = {
              description = "Neotoma rebar plugin";
              license = stdenv.lib.licenses.free;
              homepage =
                "https://github.com/zamotivator/rebar3_neotoma_plugin";
            };
          } // packageOverrides)
      ) {};

    rebar3_neotoma_plugin = rebar3_neotoma_plugin_0_2_0;

    rebar3_proper_0_5_0 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          proper_1_1_1_beta
        }:
          buildHex ({
            name = "rebar3_proper";
            version = "0.5.0";
            sha256 =
              "c73549e279454f6a5887d564addafb779a4dd276460f17af5c26045ef8f44059";

            erlangDeps  = [ proper_1_1_1_beta ];

            meta = {
              description = "Run PropEr test suites";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/ferd/rebar3_proper";
            };
          } // packageOverrides)
      ) {};

    rebar3_proper = rebar3_proper_0_5_0;

    rebar3_protobuffs_0_2_0 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          protobuffs_0_8_2
        }:
          buildHex ({
            name = "rebar3_protobuffs";
            version = "0.2.0";
            sha256 =
              "b5422c5aee1dcea90fa44e4b769c01e8cefe8b1ab09e44b4d2008d465e80c49c";

            erlangDeps  = [ protobuffs_0_8_2 ];

            meta = {
              description = "A rebar plugin";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/benoitc/rebar3_protobuffs";
            };
          } // packageOverrides)
      ) {};

    rebar3_protobuffs = rebar3_protobuffs_0_2_0;

    rebar_alias_0_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "rebar_alias";
            version = "0.1.0";
            sha256 =
              "59fb42b39964af3a29ebe94c11247f618dd4d5e4e1a69cfaffabbed03ccff70f";

            meta = {
              description = "A rebar plugin";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    rebar_alias = rebar_alias_0_1_0;

    rebar_erl_vsn_0_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "rebar_erl_vsn";
            version = "0.1.0";
            sha256 =
              "7cf1e2e85a80785a4e4e1529a2c837dbd2d540214cf791214e56f931e5e9865d";

            meta = {
              description = "defines for erlang versions";
              license = stdenv.lib.licenses.mit;
            };
          } // packageOverrides)
      ) {};

    rebar_erl_vsn = rebar_erl_vsn_0_1_0;

    redo_2_0_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "redo";
            version = "2.0.1";
            sha256 =
              "f7b2be8c825ec34413c54d8f302cc935ce4ecac8421ae3914c5dadd816dcb1e6";

            meta = {
              description = "Pipelined Redis Erlang Driver";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/heroku/redo";
            };
          } // packageOverrides)
      ) {};

    redo = redo_2_0_1;

    relflow_1_0_4 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "relflow";
            version = "1.0.4";
            sha256 =
              "e6d9652ed7511aea18fa012d5abc19301acd8cbe81a44a159391086a5be12e1f";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description = "Rebar3 release workflow plugin";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    relflow = relflow_1_0_4;

    reltool_util_1_4_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "reltool_util";
            version = "1.4.0";
            sha256 =
              "a625874976fffe8ab56d4b5b7d5fd37620a2692462bbe24ae003ab13052ef0d3";

            meta = {
              description = "Erlang reltool utility functionality application";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/reltool_util";
            };
          } // packageOverrides)
      ) {};

    reltool_util_1_5_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "reltool_util";
            version = "1.5.1";
            sha256 =
              "746e16871afdcf85d8a115389193c8d660d0df1d26d6ac700590e0ad252646b1";

            meta = {
              description = "Erlang reltool utility functionality application";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/reltool_util";
            };
          } // packageOverrides)
      ) {};

    reltool_util = reltool_util_1_5_1;

    relx_3_15_0 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          bbmustache_1_0_4,
          cf_0_2_1,
          erlware_commons_0_18_0,
          getopt_0_8_2,
          providers_1_6_0
        }:
          buildHex ({
            name = "relx";
            version = "3.15.0";
            sha256 =
              "ceaab36c181b6789f625e36736db05fdb5ac90c034b150056f80e39952f26ab0";

            erlangDeps  = [
                            bbmustache_1_0_4
                            cf_0_2_1
                            erlware_commons_0_18_0
                            getopt_0_8_2
                            providers_1_6_0
                          ];

            meta = {
              description = "Release assembler for Erlang/OTP Releases";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/erlware/relx";
            };
          } // packageOverrides)
      ) {};

    relx = relx_3_15_0;

    reup_0_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "reup";
            version = "0.1.0";
            sha256 =
              "949a672190119f8b24160167e3685fdd5397474f98dc875ccfd31378ebd68506";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description =
                "dev watcher that auto compiles and reloads modules";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    reup = reup_0_1_0;

    rfc3339_0_2_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "rfc3339";
            version = "0.2.0";
            sha256 =
              "992ebf382d6982f2fff48928394d4d50d413b7a4abe576ba518b92c82ac2eb99";

            meta = {
              description = "an rfc3339 parser and formatter";
              license = with stdenv.lib.licenses; [ asl20 mit ];
              homepage = "https://github.com/talentdeficit/rfc3339";
            };
          } // packageOverrides)
      ) {};

    rfc3339 = rfc3339_0_2_0;

    riak_pb_2_1_0 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          hamcrest_0_1_1,
          protobuffs_0_8_2
        }:
          buildHex ({
            name = "riak_pb";
            version = "2.1.0";
            sha256 =
              "76309b9b831d276bf9abf92362183030ed63910a2e153f1f8a389e97dec6c287";

            erlangDeps  = [ hamcrest_0_1_1 protobuffs_0_8_2 ];

            meta = {
              description = "Riak Protocol Buffers Messages";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/basho/riak_pb";
            };
          } // packageOverrides)
      ) {};

    riak_pb = riak_pb_2_1_0;

    riakc_2_1_1 = callPackage
      (
        {
          buildHex, buildHexErlangMk, packageOverrides ? {}, riak_pb_2_1_0
        }:
          buildHex ({
            name = "riakc";
            version = "2.1.1";
            sha256 =
              "4f7141c03529d4f1c28c71eafcd797be0a538ba21d5d6923a17a9ca9e64e744e";

            erlangDeps  = [ riak_pb_2_1_0 ];

            meta = {
              description = "Erlang clients for Riak.";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/basho/riak-erlang-client";
            };
          } // packageOverrides)
      ) {};

    riakc = riakc_2_1_1;

    sbroker_0_7_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "sbroker";
            version = "0.7.0";
            sha256 =
              "5bc0bfd79896fd5b92072a71fa4a1e120f4110f2cf9562a0b9dd2fcfe9e5cfd2";

            meta = {
              description =
                "Process broker for dispatching with backpressure and load shedding";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/fishcakez/sbroker";
            };
          } // packageOverrides)
      ) {};

    sbroker = sbroker_0_7_0;

    sfmt_0_13_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "sfmt";
            version = "0.13.0";
            sha256 =
              "aaacd4824f2b3e439d360bcce6079863da1e7f564014602e9e7815f8740b6358";
            compilePorts = true;

            meta = {
              description =
                "SIMD-oriented Fast Mersenne Twister (SFMT) for Erlang.";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/jj1bdx/sfmt-erlang/";
            };
          } // packageOverrides)
      ) {};

    sfmt = sfmt_0_13_0;

    shotgun_0_2_2 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          gun_1_0_0_pre_1
        }:
          buildHex ({
            name = "shotgun";
            version = "0.2.2";
            sha256 =
              "d2993953cff0c82eb47744206ae171a141deeff84539fe2f58068e3909ae066c";

            erlangDeps  = [ gun_1_0_0_pre_1 ];

            meta = {
              description = "better than just a gun";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/inaka/shotgun";
            };
          } // packageOverrides)
      ) {};

    shotgun_0_2_3 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          cowlib_1_0_2,
          gun_1_0_0_pre_1
        }:
          buildHex ({
            name = "shotgun";
            version = "0.2.3";
            sha256 =
              "7b40dcf0faebf698fea541db5f6338f555d0c9c828493e9953d1748d9e5280b5";

            erlangDeps  = [ cowlib_1_0_2 gun_1_0_0_pre_1 ];

            meta = {
              description = "better than just a gun";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/inaka/shotgun";
            };
          } // packageOverrides)
      ) {};

    shotgun = shotgun_0_2_3;

    sidejob_2_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "sidejob";
            version = "2.0.0";
            sha256 =
              "19fea24060a1d0d37e78480fbd79d6b95e07f445aad725f7124a23194641c743";

            meta = {
              longDescription = "sidejob is an Erlang library that implements a
                                parallel, capacity-limited request pool. In
                                sidejob, these pools are called resources. A
                                resource is managed by multiple gen_server like
                                processes which can be sent calls and casts
                                using sidejob:call or sidejob:cast respectively.
                                This library was originally written to support
                                process bounding in Riak using the
                                sidejob_supervisor behavior. In Riak, this is
                                used to limit the number of concurrent get/put
                                FSMs that can be active, failing client requests
                                with {error, overload} if the limit is ever hit.
                                The purpose being to provide a fail-safe
                                mechanism during extreme overload scenarios. ";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/basho/sidejob";
            };
          } // packageOverrides)
      ) {};

    sidejob = sidejob_2_0_0;

    siphash_3_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "siphash";
            version = "3.0.0";
            sha256 =
              "91b8efc8f3e26713c1bb91a91c9b6a8f6a5f949986622b1d548e8fee1cde7347";
            compilePorts = true;

            meta = {
              description = "Elixir implementation of the SipHash hash family";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/zackehh/siphash-elixir";
            };
          } // packageOverrides)
      ) {};

    siphash = siphash_3_0_0;

    smurf_0_1_3 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "smurf";
            version = "0.1.3";
            sha256 =
              "5ed8e18ec8eea0647e7e938ce15cc76e59497d0a259cea15124520a48f0d6be6";

            meta = {
              description = "SMF interfacing library for erlang";
              license = stdenv.lib.licenses.cddl;
              homepage = "https://github.com/project-fifo/smurf";
            };
          } // packageOverrides)
      ) {};

    smurf = smurf_0_1_3;

    strftimerl_0_1_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "strftimerl";
            version = "0.1.1";
            sha256 =
              "c09c7cd6a421bcbc1020c1440a2e73e312b852adbb3034d11f3dffa27d7953b1";

            meta = {
              description = "strftime formatting in erlang";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/gmr/strftimerl";
            };
          } // packageOverrides)
      ) {};

    strftimerl = strftimerl_0_1_1;

    supool_1_5_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "supool";
            version = "1.5.1";
            sha256 =
              "c191d63ff19ae177bf4cfba02303ae4552d8b48ec4133e24053e037513dfae09";

            meta = {
              description = "Erlang Process Pool as a Supervisor";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/supool";
            };
          } // packageOverrides)
      ) {};

    supool = supool_1_5_1;

    switchboard_0_3_2 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          cowboy_1_0_4,
          gproc_0_5_0,
          jsx_2_8_0,
          lager_3_0_2
        }:
          buildHex ({
            name = "switchboard";
            version = "0.3.2";
            sha256 =
              "0b1debb284cd63e5220dc56462dafebd1418579bb40a5b8e51dfdf1f50bfbeb3";

            buildPlugins  = [ rebar3_hex ];

            erlangDeps  = [ cowboy_1_0_4 gproc_0_5_0 jsx_2_8_0 lager_3_0_2 ];

            meta = {
              description =
                "Conduct monitoring and operations across email accounts";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/thusfresh/switchboard";
            };
          } // packageOverrides)
      ) {};

    switchboard = switchboard_0_3_2;

    tea_crypto_1_0_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "tea_crypto";
            version = "1.0.0";
            sha256 =
              "0e7e60d0afe79f0624faa8a358a3a00c912cfa548f3632383927abca4db29cc6";

            meta = {
              description = "A TEA implementation in Erlang.
";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/keichan34/tea_crypto";
            };
          } // packageOverrides)
      ) {};

    tea_crypto = tea_crypto_1_0_0;

    termcap_0_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "termcap";
            version = "0.1.0";
            sha256 =
              "8c5167d68759bd1cd020eeaf5fd94153430fd19fa5a5fdeeb0b3129f0aba2a21";

            meta = {
              description = "Pure erlang termcap library";
              license = stdenv.lib.licenses.mit;
            };
          } // packageOverrides)
      ) {};

    termcap = termcap_0_1_0;

    tinymt_0_3_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHexErlangMk ({
            name = "tinymt";
            version = "0.3.1";
            sha256 =
              "9de8fcedf254661bc4aa550aac317e28be35d4a5d91adf3fa3689dfad6cc1e5a";

            meta = {
              description = "Tiny Mersenne Twister (TinyMT) for Erlang";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/jj1bdx/tinymt-erlang/";
            };
          } // packageOverrides)
      ) {};

    tinymt = tinymt_0_3_1;

    trie_1_5_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "trie";
            version = "1.5.0";
            sha256 =
              "613981536e33f58d92e44bd31801376f71deee0e57c63372fe8ab5fbbc37f7dc";

            meta = {
              description = "Erlang Trie Implementation";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/trie";
            };
          } // packageOverrides)
      ) {};

    trie_1_5_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "trie";
            version = "1.5.1";
            sha256 =
              "4b845dccfca8962b90584e98d270e2ff43e2e181bb046c4aae0e0f457679f98d";

            meta = {
              description = "Erlang Trie Implementation";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/trie";
            };
          } // packageOverrides)
      ) {};

    trie = trie_1_5_1;

    tsuru_1_0_2 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "tsuru";
            version = "1.0.2";
            sha256 =
              "b586ad8d47799a086e4225494f5e3cf4e306ca255a173a4b48fe51d542cefb6b";

            meta = {
              description =
                "A collection of useful tools for Erlang applications";
              license = stdenv.lib.licenses.mit;
            };
          } // packageOverrides)
      ) {};

    tsuru = tsuru_1_0_2;

    ui_0_1_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "ui";
            version = "0.1.1";
            sha256 =
              "492da59ca39055c0dfc794a2ebd564adb9ed635402c7b46659981f32aa9d94c1";

            buildPlugins  = [ rebar3_hex ];


            meta = {
              description = "An OTP application";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    ui = ui_0_1_1;

    uri_0_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "uri";
            version = "0.1.0";
            sha256 =
              "3833c3b5745fc0822df86c3a3591219048026fea8a535223b440d26029218996";

            meta = {
              description = "URI Parsing/Encoding Library";
              license = stdenv.lib.licenses.free;
            };
          } // packageOverrides)
      ) {};

    uri = uri_0_1_0;

    urilib_0_1_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "urilib";
            version = "0.1.1";
            sha256 =
              "6000180e6977263e5996921f243e0c152aad29c87d202f8a650acb412c5aa758";

            meta = {
              description =
                "A RFC-3986 URI Library for parsing and building URIs";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/gmr/urilib";
            };
          } // packageOverrides)
      ) {};

    urilib = urilib_0_1_1;

    uuid_erl_1_5_1 = callPackage
      (
        {
          buildHex,
          buildHexErlangMk,
          packageOverrides ? {},
          quickrand_1_5_1
        }:
          buildHex ({
            name = "uuid_erl";
            version = "1.5.1";
            sha256 =
              "fd2a8d90693631455073d4ae2b34fdb9d58da30c0ee0e63149fbf320c71b74fa";

            erlangDeps  = [ quickrand_1_5_1 ];

            meta = {
              description = "Erlang UUID Implementation";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/uuid";
            };
          } // packageOverrides)
      ) {};

    uuid_erl = uuid_erl_1_5_1;

    varpool_1_5_1 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "varpool";
            version = "1.5.1";
            sha256 =
              "ff6059bdcd0efad606e8c54ee623cfeaef59778c18e343dd772e84d99d188e26";

            meta = {
              description = "Erlang Process Pools as a Local Variable";
              license = stdenv.lib.licenses.bsd3;
              homepage = "https://github.com/okeuday/varpool";
            };
          } // packageOverrides)
      ) {};

    varpool = varpool_1_5_1;

    websocket_client_1_1_0 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "websocket_client";
            version = "1.1.0";
            sha256 =
              "21c3d0df073634f2ca349af5b54a61755d637d6390c34d8d57c064f68ca92acd";

            meta = {
              description = "Erlang websocket client";
              license = stdenv.lib.licenses.mit;
              homepage = "https://github.com/sanmiguel/websocket_client";
            };
          } // packageOverrides)
      ) {};

    websocket_client = websocket_client_1_1_0;

    worker_pool_1_0_4 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "worker_pool";
            version = "1.0.4";
            sha256 =
              "7854a3b94e9624728db3a0475d00e7d0728adf3bf2ee3802bbf8ca10356d6f64";

            meta = {
              description = "Erlang Worker Pool";
              license = stdenv.lib.licenses.free;
              homepage = "https://github.com/inaka/worker_pool";
            };
          } // packageOverrides)
      ) {};

    worker_pool = worker_pool_1_0_4;

    zipper_0_1_5 = callPackage
      (
        { buildHex, buildHexErlangMk, packageOverrides ? {} }:
          buildHex ({
            name = "zipper";
            version = "0.1.5";
            sha256 =
              "7df5552f41169a8feb1a2e81e2753ec4e4debb7d48cdf1edc77037205782d547";

            meta = {
              description = "Generic Zipper Implementation for Erlang";
              license = stdenv.lib.licenses.asl20;
              homepage = "https://github.com/inaka/zipper";
            };
          } // packageOverrides)
      ) {};

    zipper = zipper_0_1_5;

  };
in stdenv.lib.fix' (stdenv.lib.extends overrides packages)