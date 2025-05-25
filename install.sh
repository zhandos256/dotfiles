#!/bin/bash

mkdir -p $HOME/.config $HOME/.config/skhd $HOME/files

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

cp -R ./nvim $HOME/.config/
cp -R ./karabiner $HOME/.config/
cp ./.tmux.conf $HOME/
cp ./.vimrc $HOME/
cp ./.zshrc $HOME/
cp ./.aliases.zsh $HOME/
cp ./skhdrc $HOME/.config/skhd/
cp ./activate_env.sh $HOME/files
cp ./new_userbot.sh $HOME/files

echo Done
