alias cls="clear"
alias o="open "
alias quit="exit"
alias c="pbcopy"
alias hh="tldr"

# python
alias ac="source ~/files/activate_env.sh"
alias ca="deactivate"
alias venv="/usr/bin/python3 -m venv .env && source ./.env/bin/activate && pip install -U pip"
alias python3="/usr/bin/python3"

# zsh
alias zconf="nvim ~/.zshrc"
alias zupd="source ~/.zshrc"

# TMUX
alias tt="tmux"
alias tconf="vim ~/.tmux.conf"
alias tupd="tmux source-file ~/.tmux.conf"
alias tks="tmux kill-server"
alias ta="tmux attach -t"
alias tls="tmux ls"

# VIM
alias v="nvim"
alias vconf="nvim ~/.config/nvim/"

# GIT
alias gw="git switch"
alias gb="git branch"
alias gs="git status"
