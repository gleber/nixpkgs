{ stdenv, buildPythonPackage, fetchPypi, isPy3k
, requests, tqdm, websocket-client
}:

buildPythonPackage rec {
  pname = "plexapi";
  version = "3.1.0";

  disabled = !isPy3k;

  src = fetchPypi {
    inherit pname version;
    sha256 = "9886b1c8321d16e971376dc609b902e0c84118846642b5e09f08a4ca876a7f20";
  };

  propagatedBuildInputs = [ websocket-client tqdm requests ];

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
