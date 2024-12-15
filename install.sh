#!/bin/bash

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sudo rm -rf $HOME/.config/nvim
sudo rm -rf $HOME/.tmux.conf

sudo mkdir -p $HOME/.config/nvim

sudo cp -R ./nvim $HOME/.config/
sudo cp ./.tmux.conf $HOME/
sudo cp ./.vimrc $HOME/

echo Done
