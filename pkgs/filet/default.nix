{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "filet";
  version = "20190227.0";

  src = fetchFromGitHub {
    owner = "buffet";
    repo = "filet";
    rev = "b4136072cb916bde87b3225d78e4245744b7c28f";
    sha256 = "0p03j1l800rb3hkccs9j1aajb2z1ppcn678sv05bh0hrm3pgz10f";
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
