#!/bin/bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mkdir -p $HOME/.config/nvim $HOME/.config/skhd

cp -R ./nvim $HOME/.config/
cp ./.tmux.conf $HOME/
cp ./.vimrc $HOME/
cp ./.vimrc $HOME/
cp ./.zshrc $HOME/
cp ./.aliases.zsh $HOME/
cp ./skhdrc $HOME/.config/skhd/

echo Done
