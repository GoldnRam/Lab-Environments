#!/bin/bash
# Install Neovim (AppImage for latest version)
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage /usr/local/bin/nvim

# Note: You would add lines here to git clone your personal dotfiles 
# or copy your local init.lua from the host to the guest.
echo "Neovim installed. Copy your config to ~/.config/nvim/"
