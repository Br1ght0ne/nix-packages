bump-cdda:
    #!/usr/bin/env bash
    old=$(nix eval --raw .#cataclysm-dda-git-bin.version | rg -o '\d{4}-\d{2}-\d{2}-\d{4}')
    latest=$(gh release list -R CleverRaven/Cataclysm-DDA --limit=1 --json=tagName)
    version=$(echo $latest | jq -r '.[0].tagName' | rg -o '\d{4}-\d{2}-\d{2}-\d{4}')
    echo "${old} -> ${version}"
    sed -i "s/${old}/${version}/" packages/cataclysm/cataclysm-dda-git-bin/default.nix
    oldhash=$(nix eval --raw .#cataclysm-dda-git-bin.src.hash)
    newurl=$(nix eval --raw .#cataclysm-dda-git-bin.src.url)
    newhash=$(nix hash convert --hash-algo sha256 $(nix-prefetch-url $newurl))
    sed -i "s|${oldhash}|${newhash}|" packages/cataclysm/cataclysm-dda-git-bin/default.nix
