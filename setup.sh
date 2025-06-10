#!/bin/bash

# safety
set -Eeuo pipefail
set +x

# packages
sudo apt install -y fish neofetch

# fish setup
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
cp -rf ./config/* ~/.config

# nerd font for starship
curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash -s -- --silent
export PATH="$HOME/.local/bin:$PATH"
getnf -i Hack

# starship
curl -sS https://starship.rs/install.sh | sh
