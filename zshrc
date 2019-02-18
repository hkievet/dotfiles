# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
if [ ! -f ~/dotfiles/config/zshrc.conf ]; then
  echo "No configuration file setup for zshrc.  Please copy and edit ~/dotfiles/config/zshrc.example.conf"
  else
  source ~/dotfiles/config/zshrc.conf
fi


source $(brew --prefix nvm)/nvm.sh
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
nvm use stable

# my username:
export DEFAULT_USER=hunterkievet

# Path to your oh-my-zsh installation.
export ZSH=/Users/hunterkievet/.oh-my-zsh


# pip will only run if there is a virtual environment activated
# export PIP_REQUIRE_VIRTUALENV=true
# source /usr/local/bin/virtualenvwrapper.sh

#Note to self, I have no idea how to order this stuff...

export EDITOR=nvim

ZSH_THEME="agnoster"

plugins=(git npm)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim="nvim"
alias pytest="python -m unittest"
alias mux="tmuxinator"
alias tmux="tmux -2" # 256 bit colors babe
alias npminstall="rm -rf node_modules && npm install"

alias python="python3"
alias pip="pip3"

# Set Java Version to 1.7 for Campus
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home"
export PATH="$PATH:$JAVA_HOME"

# Use rvm
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source /Users/hunter.kievet/.rvm/scripts/rvm
type rvm | head -n 1
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/gems/ruby-2.3-1/bin" # Add RVM to PATH for scripting
rvm use 2.3.1

export PATH="/Users/hunter.kievet/.pyenv/bin:$PATH"
export PATH="/Users/hunter.kievet/Library/Python/3.5/bin/:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

eval "$(thefuck --alias)"

# for marmoset autocomplete
autoload bashcompinit
bashcompinit
export MARMOSET_LOCATION="/Users/hunterkievet/work/marmoset"
if [ -f "$MARMOSET_LOCATION/dcrun_completion.sh" ]; then
  source "$MARMOSET_LOCATION/dcrun_completion.sh"
fi

# virtualenv python  `pip install --user virtualenv`
export PATH="/Users/hunterkievet/Library/Python/3.7/bin:$PATH"

source ~/dotfiles/aliases/.alias_oneome

# clear
echo "Though walls of granite intervine"

