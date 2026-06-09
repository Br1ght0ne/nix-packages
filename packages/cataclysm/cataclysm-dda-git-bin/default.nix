{ callPackage }:
(callPackage ../common.nix { }).makeCddaPackage {
  pname = "cataclysm-dda-bin-git";
  version = "cdda-experimental-2026-06-09-1259";
  timestamp = "2026-06-09-1259";
  hash = "sha256-bz9GFnReySDroO9Fjz2vLnkYoI6A+CPVz1dzRxSBda8=";
}
