{ callPackage }:
(callPackage ../common.nix { }).makeCddaPackage rec {
  pname = "cataclysm-dda-bin-git";
  timestamp = "2026-06-23-0742";
  version = "cdda-experimental-${timestamp}";
  hash = "sha256-pZSXytS3+Nga/c/lObmP7PUqXBcyOS9Ym/7xrzo9BbQ=";
}
