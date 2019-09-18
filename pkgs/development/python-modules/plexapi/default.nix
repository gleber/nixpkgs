{ stdenv, buildPythonPackage, fetchPypi, isPy3k
, requests, tqdm, websocket_client
}:

buildPythonPackage rec {
  pname = "PlexAPI";
  version = "3.1.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0kffx74ppvadkg3lv7dd03h3fmas1j8l2kkhgxrr6ssb6mpqfi20";
  };

  propagatedBuildInputs = [ websocket_client tqdm requests ];

  checkInputs = [ ];

  checkPhase = ''
  '';

  meta = with stdenv.lib; {
    homepage = https://github.com/pkkid/python-plexapi;
    description = "Python bindings for the Plex API";
    license = licenses.bsd3;
    maintainers = with maintainers; [ gleber ];
  };
}
