PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH="$HOME/bin:$PATH"
export PATH=~/.scripts:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/local/node/bin:$PATH
export PATH=/usr/local/git:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH="/usr/local/heroku/bin:$PATH"
export EDITOR=vim

export PS1='\[\e[1;32m\]➜ \W\[\e[0m\]\[\e[1;33m\]$(__git_ps1 "#%s")\[\e[0m\] '

source ~/.scripts/.git-completion.sh
source ~/.scripts/z/z.sh
source ~/.scripts/nvm/nvm.sh

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{aliases,path,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"