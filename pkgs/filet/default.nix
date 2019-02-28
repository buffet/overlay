{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "filet";
  version = "20190228.0";

  src = fetchFromGitHub {
    owner = "buffet";
    repo = "filet";
    rev = "da8e98d64c1c53c76ab84d8fc3489392096b222e";
    sha256 = "184sinp2kqny26bzdyq16rbn926b2pj85ikdf0c8pkkh9b5jyrii";
  };

  makeFlags = [ "PREFIX=$(out)" ];

  meta = with stdenv.lib; {
    description = "A fucking fucking fast file fucker (afffff)";
    homepage = https://github.com/buffet/filet;
    license = licenses.mpl20;
    platforms = platforms.all;
    maintainers = with maintainers; [ buffet ];
  };
}
