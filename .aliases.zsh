alias cls="clear"
alias o="open "
alias quit="exit"
alias c="pbcopy"
alias hh="tldr"

# python
alias ac="source ~/files/activate_env.sh"
alias ca="deactivate"
alias venv="/usr/bin/python3 -m venv .venv && source ./.venv/bin/activate && pip install -U pip"
alias python3="/usr/bin/python3"
alias reqs="pip freeze > requirements.txt"

# vi
alias vconf="vi $HOME/.vimrc"

# zsh
alias zconf="vi ~/.zshrc"
alias zupd="source ~/.zshrc"
alias aliass="vi $ZSH/.aliases.zsh"

# TMUX
alias tt="tmux"
alias tconf="vim ~/.tmux.conf"
alias tupd="tmux source-file ~/.tmux.conf"
alias tks="tmux kill-server"
alias ta="tmux attach -t"
alias tls="tmux ls"

# GIT
alias gw="git switch"
alias gb="git branch"
alias gs="git status"

# Docker
alias dup="docker up"
