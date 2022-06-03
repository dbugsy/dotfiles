# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR="vim"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs="git status"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --all"
alias gcam="git commit -am"

# Zendesk aliases
alias cdob="cd $GOPATH/src/github.com/zendesk/outbound"
# initialize rbenv on startup
eval "$(rbenv init -)"

# initialize thefuck on startup
eval $(thefuck --alias)
alias oops=fuck #make it polite

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set Javahome using asdf
. ~/.asdf/plugins/java/set-java-home.zsh

# google cloud
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# python
eval "$(_PIPENV_COMPLETE=zsh_source pipenv)"

# mysql
export SANDBOX_ORCHESTRATOR_DATABASE_USERNAME="root"
export SANDBOX_ORCHESTRATOR_DATABASE_PASSWORD=""
export SANDBOX_ORCHESTRATOR_DATABASE_NAME="sandbox_orchestrator"
export SANDBOX_ORCHESTRATOR_DATABASE_HOST="localhost"
export SANDBOX_ORCHESTRATOR_DATABASE_PORT="3306"

# go path
export GOPATH=~/Code/go
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export DOCKER_IMAGES_MOUNT_GOPATH=true
export DOCKER_IMAGES_GOPATH_MOUNT_POINT=$GOPATH
export DOCKER_VM_MEMORY=12885

# zendesk path
export ZENPATH="$HOME/Code/zendesk"
#
# The higher the number of CPUs the faster it will run.
export DOCKER_VM_CPUS=2
# BEGIN ZDI
source /Users/daniel.bergquist/Code/zendesk/zdi/dockmaster/zdi.sh
# END ZDI
