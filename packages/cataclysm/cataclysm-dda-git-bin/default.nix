{ callPackage }:
(callPackage ../common.nix { }).makeCddaPackage rec {
  pname = "cataclysm-dda-bin-git";
  timestamp = "2026-06-30-0611";
  version = "cdda-experimental-${timestamp}";
  hash = "sha256-1+E6c2d7oE2HF2qDTP3WoiumOqVBSQ+obLOMmfhCJ6U=";
}
