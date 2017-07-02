# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/cx/.oh-my-zsh

# mongodb
export PATH=/Users/cx/.mongodb-osx-x86_64-3.4.5/bin:$PATH

# Path to nvm & rvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

#export RVM_DIR="$HOME/.rvm"
#[ -s "$RVM_DIR/scripts/rvm" ] && \. "$RVM_DIR/scripts/rvm"


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
# ZSH_THEME="jispwoso"
# ZSH_THEME="rkj-repos" # git hash
# ZSH_THEME="linuxonly"
ZSH_THEME="kafeitu"
# ZSH_THEME="agnoster"
# ZSH_THEME="cobalt2"
# ZSH_THEME="powerlevel9k"

# #source  ~/powerlevel9k/powerlevel9k.zsh-theme
# POWERLEVEL9K_MODE='icon-fontconfig'

# POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# # Directory name show rule
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# POWERLEVEL9K_SHORTEN_STRATEGY="" 	# truncate_middle

# # Output time, date, and a symbol from the "Awesome Powerline Font" set
# # time: {f017, f252, f39d} ; date: {f073, f368} 
# POWERLEVEL9K_TIME_FORMAT="%D{\uf39d %H:%M:%S \uf368 %d/%m/%Y}"

# # context
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)


# Include Z
. ~/z.sh


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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cls="clear"
alias ll="ls -l"
alias la="ls -a"
alias del="trash"

# Open Applications
## dev
alias sbt="open -a Sublime_text -g"
alias ps="open -a Adobe_Photoshop_CC_2017 -g"
alias ws="open -a WebStorm -g"
alias v="open -a Visual_Studio_Code -g"
alias a="open -a Atom -g"

# The edition .zshrc file restart terminal
alias zs="source ~/.zshrc"

alias gum="git pull upstream master"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
