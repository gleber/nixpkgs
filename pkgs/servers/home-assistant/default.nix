{ lib, fetchurl, fetchFromGitHub, python3, protobuf3_6

# Look up dependencies of specified components in component-packages.nix
, extraComponents ? []

# Additional packages to add to propagatedBuildInputs
, extraPackages ? ps: []

# Override Python packages using
# self: super: { pkg = super.pkg.overridePythonAttrs (oldAttrs: { ... }); }
# Applied after defaultOverrides
, packageOverrides ? self: super: { }

# Skip pip install of required packages on startup
, skipPip ? true }:

let

  defaultOverrides = [
    # Override the version of some packages pinned in Home Assistant's setup.py
    (mkOverride "aiohttp" "3.5.4"
      "9c4c83f4fa1938377da32bc2d59379025ceeee8e24b89f72fcbccd8ca22dc9bf")
    (mkOverride "astral" "1.10.1"
      "d2a67243c4503131c856cafb1b1276de52a86e5b8a1d507b7e08bee51cb67bf1")
    (mkOverride "async-timeout" "3.0.1"
      "0c3c816a028d47f659d6ff5c745cb2acf1f966da1fe5c19c77a70282b25f4c5f")
    (mkOverride "attrs" "19.1.0"
      "f0b870f674851ecbfbbbd364d6b5cbdff9dcedbc7f3f5e18a6891057f21fe399")
    (mkOverride "bcrypt" "3.1.7"
      "0b0069c752ec14172c5f78208f1863d7ad6755a6fae6fe76ec2c80d13be41e42")
    (mkOverride "pyjwt" "1.7.1"
      "8d59a976fb773f3e6a39c85636357c4f0e242707394cadadd9814f5cbaa20e96")
    (mkOverride "cryptography" "2.7"
      "e6347742ac8f35ded4a46ff835c60e68c22a536a8ae5c4422966d06946b6d4c6")
    (mkOverride "cryptography_vectors" "2.7" # required by cryptography==2.7
      "f12dfb9bd669a68004074cb5b26df6e93ed1a95ebd1a999dff0a840212ff68bc")
    # (mkOverride "importlib-metadata" "0.18"
    #   "cb6ee23b46173539939964df59d3d72c3e0c1b5d54b84f1d8a7e912fe43612db")
    (mkOverride "python-slugify" "3.0.3"
      "0rpz8i790nm22jc5rgbvsdfv3c7nnphph3b7a7i207mighi6ix59")
    # (mkOverride "pyyaml" "5.1.1"
    #   "b4bb4d3f5e232425e25dda21c070ce05168a786ac9eda43768ab7f3ac2770955")
    (mkOverride "requests" "2.22.0"
      "11e007a8a2aa0323f5a921e9e6a2d7e4e67d9877e85773fba9ba6419025cbeb4")
    (mkOverride "ruamel_yaml" "0.15.100"
      "1r5j9n2jdq48z0k4bdia1f7krn8f2x3y49i9ba9iks2rg83g6hlf")
    (mkOverride "voluptuous" "0.11.7"
      "0mplkcpb5d8wjf8vk195fys4y6a3wbibiyf708imw33lphfk9g1a")
    (mkOverride "voluptuous-serialize" "2.2.0"
      "0ggiisrq7cbk307d09fdwfdcjb667jv90lx6gfwhxfpxgq66cccb")

    # used by auth.mfa_modules.totp
    (mkOverride "pyotp" "2.2.7"
      "be0ffeabddaa5ee53e7204e7740da842d070cf69168247a3d0c08541b84de602")

    # used by check_config script
    # can be unpinned once https://github.com/home-assistant/home-assistant/issues/11917 is resolved
    (mkOverride "colorlog" "4.0.2"
      "3cf31b25cbc8f86ec01fef582ef3b840950dea414084ed19ab922c8b493f9b42")

    # required by aioesphomeapi
    (self: super: {
      protobuf = super.protobuf.override {
        protobuf = protobuf3_6;
      };
    })

    # hass-frontend does not exist in python3.pkgs
    (self: super: {
      hass-frontend = self.callPackage ./frontend.nix { };
    })
  ];

  mkOverride = attrname: version: sha256:
    self: super: {
      ${attrname} = super.${attrname}.overridePythonAttrs (oldAttrs: {
        inherit version;
        src = oldAttrs.src.override {
          inherit version sha256;
        };
      });
    };

  py = python3.override {
    # Put packageOverrides at the start so they are applied after defaultOverrides
    packageOverrides = lib.foldr lib.composeExtensions (self: super: { }) ([ packageOverrides ] ++ defaultOverrides);
  };

  componentPackages = import ./component-packages.nix;

  availableComponents = builtins.attrNames componentPackages.components;

  getPackages = component: builtins.getAttr component componentPackages.components;

  componentBuildInputs = lib.concatMap (component: getPackages component py.pkgs) extraComponents;

  # Ensure that we are using a consistent package set
  extraBuildInputs = extraPackages py.pkgs;

  # Don't forget to run parse-requirements.py after updating
  hassVersion = "0.99.0";

in with py.pkgs; buildPythonApplication rec {
  pname = "homeassistant";
  version = assert (componentPackages.version == hassVersion); hassVersion;

  disabled = pythonOlder "3.5";

  inherit availableComponents;

  # PyPI tarball is missing tests/ directory
  src = fetchFromGitHub {
    owner = "home-assistant";
    repo = "home-assistant";
    rev = version;
    sha256 = "1ndin1nqr7m8l3kq90rc4c35n350imvp7njm6g9hxcyk64b011ki";
  };

  propagatedBuildInputs = [
    # From setup.py
    aiohttp astral async-timeout attrs bcrypt certifi importlib-metadata jinja2
    pyjwt cryptography pip python-slugify pytz pyyaml requests ruamel_yaml
    setuptools voluptuous voluptuous-serialize
    # From http, frontend and recorder components and auth.mfa_modules.totp
    sqlalchemy aiohttp-cors hass-frontend pyotp pyqrcode
  ] ++ componentBuildInputs ++ extraBuildInputs;

  checkInputs = [
    asynctest pytest pytest-aiohttp requests-mock pydispatcher aiohue
  ];

  checkPhase = ''
    # The components' dependencies are not included, so they cannot be tested
    # test_webhook_create_cloudhook imports hass_nabucasa and is thus excluded
    py.test --ignore tests/components -k "not test_webhook_create_cloudhook"
    # Some basic components should be tested however
    py.test \
      tests/components/{api,config,configurator,demo,discovery,frontend,group,history,history_graph} \
      tests/components/{homeassistant,http,logger,script,shell_command,system_log,websocket_api}
  '';

  makeWrapperArgs = lib.optional skipPip "--add-flags --skip-pip";

  meta = with lib; {
    homepage = https://home-assistant.io/;
    description = "Open-source home automation platform running on Python 3";
    license = licenses.asl20;
    maintainers = with maintainers; [ fleaz dotlambda globin ];
  };
}
