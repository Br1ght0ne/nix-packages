{
  stdenv,
  lib,
  fetchurl,
  unzip,
}:
let
  pname = "thaw";
  version = "2.0.0-rc.1";
  appName = "Thaw.app";
  homepage = "https://github.com/stonerl/Thaw";
in
stdenv.mkDerivation {
  inherit pname version;

  src = fetchurl {
    url = "${homepage}/releases/download/${version}/Thaw_${version}.zip";
    hash = "sha256-O+ejm9ElhvS2J8S9MX9wU7t/aOuImjosWbB+bMjdaY8=";
  };

  nativeBuildInputs = [ unzip ];

  installPhase = ''
    mkdir -p $out/Applications/${appName}
    cp -R ./* $out/Applications/${appName}
  '';

  meta = {
    description = "Menu bar manager for macOS 26";
    inherit homepage;
    sourceProvenance = with lib.sourceTypes; [ binaryNativeCode ];
    license = lib.licenses.gpl3;
    platforms = lib.platforms.darwin;
  };
}
