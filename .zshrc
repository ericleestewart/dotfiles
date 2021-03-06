# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew docker git sublime urltools zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="$HOME/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="subl $HOME/.zshrc"
alias ohmyzsh="subl $HOME/.oh-my-zsh"

######################################################################
# ALIASES                                                            #
######################################################################

alias dck="docker"
alias dco="docker-compose"
alias gst="git status"
alias ll="ls -lha"

######################################################################
# PATH SETTINGS                                                      #
######################################################################

# Add ~/bin. (Sublime Text)
if [ -d ~/bin ];
then
    export PATH=$PATH:$HOME/bin
fi

# Add /usr/local/sbin ahead of system paths (Homebrew)
if [ -d /usr/local/sbin ];
then
    export PATH=/usr/local/sbin:$PATH
fi

# Add /usr/local/bin ahead of system paths (Homebrew)
if [ -d /usr/local/bin ];
then
    export PATH=/usr/local/bin:$PATH
fi

######################################################################
# SHIM SETTINGS                                                      #
######################################################################

# To enable shims and autocompletion for rbenv
if which rbenv > /dev/null;
then
    eval "$(rbenv init -)"
fi

# To enable shims and autocompletion for pyenv
if which pyenv > /dev/null;
then
    eval "$(pyenv init -)"
fi

# To enable auto-activation add to your profile:
if which pyenv-virtualenv-init > /dev/null;
then
    eval "$(pyenv virtualenv-init -)";
fi

######################################################################
# APPLICATION SETTINGS                                               #
######################################################################

# Docker Compose
export COMPOSE_HTTP_TIMEOUT=3600

######################################################################
# SESSION SETTINGS                                                   #
######################################################################

ulimit -n 4096

######################################################################
# LOAD ENVIRONMENT SECRETS                                           #
######################################################################

if [ -f $HOME/.env-secrets ];
then
    source $HOME/.env-secrets
fi
