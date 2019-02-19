{ stdenv, fetchFromGitHub , meson, ninja , pkgconfig
, libevdev, libinput, libxkbcommon, pango, wayland, wayland-protocols, wlroots
}:

stdenv.mkDerivation rec {
  name = "kiwmi-${version}";
  version = "20190219.0";

  src = fetchFromGitHub {
    owner = "buffet";
    repo = "kiwmi";
    rev = "5cd44c7593deb31d7a44ab5b2447ac1b64026294";
    sha256 = "1bwr98ilahv001145i61rs7shjykgnzgxj9jjxmsry6z06id85zh";
  };

  nativeBuildInputs = [
    meson
    ninja
    pkgconfig
  ];

  buildInputs = [
    libevdev
    libinput
    libxkbcommon
    pango
    wayland
    wayland-protocols
    wlroots
  ];

  enableParallelBuilding = true;

  mesonFlags = [
    "-Dkiwmi-version=${version}"
  ];

  meta = with stdenv.lib; {
    description = "A client controlled Wayland compositor";
    homepage = https://github.com/buffet/kiwmi;
    license = licenses.mpl20;
    platforms = platforms.unix;
    maintainers = with maintainers; [ buffet ];
  };
}
