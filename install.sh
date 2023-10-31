#!/bin/bash

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

sudo mkdir -p $HOME/.config
sudo cp -R ./nvim $HOME/.config/

echo Done
