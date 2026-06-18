{ callPackage }:
(callPackage ../common.nix { }).makeCddaPackage rec {
  pname = "cataclysm-dda-bin-git";
  timestamp = "2026-06-17-2219";
  version = "cdda-experimental-${timestamp}";
  hash = "sha256-Zb/e2GlgVxx6IlRd80OXLaKMW2eqrDiOtvoNnlCJ96c=";
}
