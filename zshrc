# echo "loading zshrc"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
if [ ! -f ~/Documents/2-coding/dotfiles/config/zshrc.conf ]; then
  echo "No configuration file setup for zshrc.  Please copy and edit ~/dotfiles/config/zshrc.example.conf"
  else
  source ~/Documents/2-coding/dotfiles/config/zshrc.conf
fi

export ZSH=/Users/$DEFAULT_USER/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git npm)
source $ZSH/oh-my-zsh.sh



# source <(antibody init)
# antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

source $(brew --prefix nvm)/nvm.sh
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

nvm use 22 

# Path to your oh-my-zsh installation.

# pip will only run if there is a virtual environment activated
# export PIP_REQUIRE_VIRTUALENV=true
# source /usr/local/bin/virtualenvwrapper.sh

#Note to self, I have no idea how to order this stuff...

export EDITOR=nvim


# source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim="nvim"
alias pytest="python -m unittest"
alias mux="tmuxinator"
alias tmux="tmux -2" # 256 bit colors babe
alias npminstall="rm -rf node_modules && npm install"

alias python="python3"
alias pip="pip3"
alias sourcevenv="source env/bin/activate"

# for marmoset autocomplete
autoload bashcompinit
bashcompinit
export MARMOSET_LOCATION="/Users/$DEFAULT_USER/work/marmoset"
if [ -f "$MARMOSET_LOCATION/dcrun_completion.sh" ]; then
  source "$MARMOSET_LOCATION/dcrun_completion.sh"
fi

# virtualenv python  `pip install --user virtualenv`
export PATH="/Users/$DEFAULT_USER/Library/Python/3.7/bin:$PATH"
export PATH="/Users/$DEFAULT_USER/bin:$PATH"
export PATH=$PATH:/usr/local/mysql/bin
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH" 
export PATH="/Users/$DEFAULT_USER/dotfiles/bin:$PATH" 

source ~/Documents/2-coding/dotfiles/aliases/.alias_oneome
source ~/Documents/2-coding/dotfiles/aliases/alias_git
source ~/Documents/2-coding/dotfiles/aliases/alias_misc

alias ctags="`brew --prefix`/bin/ctags"

# https://starship.rs/
eval "$(starship init zsh)"

