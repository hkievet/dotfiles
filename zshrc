# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# my username:
export DEFAULT_USER=achieve

# Path to your oh-my-zsh installation.
export ZSH=/Users/achieve/.oh-my-zsh

# pip will only run if there is a virtual environment activated
export PIP_REQUIRE_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh

#Note to self, I have no idea how to order this stuff...

export EDITOR=nvim

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim="nvim"
alias pytest="python -m unittest"
alias mux="tmuxinator"
alias tmux="tmux -2" # 256 bit colors babe

# Use rvm
source /Users/achieve/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
