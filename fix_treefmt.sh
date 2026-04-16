#!/usr/bin/env bash
sed -i 's/^  __structuredAttrs = true;$/  __structuredAttrs = true;/g' pkgs/by-name/si/silverbullet-cli/package.nix
sed -i '/^  __structuredAttrs = true;$/!b;n;n;d' pkgs/by-name/si/silverbullet-cli/package.nix
