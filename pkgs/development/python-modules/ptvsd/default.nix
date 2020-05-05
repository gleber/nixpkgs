{ stdenv, buildPythonPackage, fetchPypi, isPy3k
}:

buildPythonPackage rec {
  pname = "ptvsd";
  version = "4.3.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1ar8v9mk0m68cr91mqpr4q9w3dcmqsm0pysh7jafbg7x31hc019v";
    extension = "zip";
  };

  doCheck = false;

  meta = with stdenv.lib; {
    homepage = https://github.com/microsoft/ptvsd;
    description = "Remote debugging server for Python support in Visual Studio and Visual Studio Code";
    license = licenses.bsd3;
    maintainers = with maintainers; [ gleber ];
  };
}
