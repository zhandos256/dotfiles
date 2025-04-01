#!/bin/bash

# Установка Tmux Plugin Manager (TPM)
# Клонирование репозитория TPM в директорию плагинов tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Установка Packer - менеджера плагинов для Neovim
# Клонирование репозитория Packer в директорию плагинов Neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Создание необходимых директорий для конфигураций
# Создание директорий для Neovim и skhd если они не существуют
mkdir -p $HOME/.config/nvim $HOME/.config/skhd

# Копирование конфигурационных файлов
# Копирование конфигурации Neovim
cp -R ./nvim $HOME/.config/

# Копирование конфигурации Tmux
cp ./.tmux.conf $HOME/

# Копирование конфигурации Vim
cp ./.vimrc $HOME/

# Копирование конфигурации Zsh
cp ./.zshrc $HOME/

# Копирование алиасов Zsh
cp ./.aliases.zsh $HOME/

# Копирование конфигурации skhd (горячие клавиши)
cp ./skhdrc $HOME/.config/skhd/

# Завершение установки
echo Done
