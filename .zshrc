# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/damianlajara/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# https://github.com/denysdovhan/spaceship-prompt
ZSH_THEME="spaceship-prompt/spaceship"
SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_PROMPT_SEPARATE_LINE="true"
SPACESHIP_TIME_SHOW="true"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions osx npm node)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# A function to extract correctly any archive based on extension
# USE: extract imazip.zip or extract imatar.tar
function extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjf $1      ;;
      *.tar.gz)   tar xzf $1      ;;
      *.bz2)      bunzip2 $1      ;;
      *.rar)      rar x $1        ;;
      *.gz)       gunzip $1       ;;
      *.tar)      tar xf $1       ;;
      *.tbz2)     tar xjf $1      ;;
      *.tgz)      tar xzf $1      ;;
      *.zip)      unzip $1        ;;
      *.Z)        uncompress $1   ;;
      *)          echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# A function to run rails tests
function bert () {
	if [ -z "$1" ]; then
		time bundle exec rake test;
	else
		time bundle exec rake test TEST=$1;
	fi
}

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='code'
fi

# A function to easily grep for a matching process
# USE: psg postgres
function psg {
  FIRST=`echo $1 | sed -e 's/^\(.\).*/\1/'`
  REST=`echo $1 | sed -e 's/^.\(.*\)/\1/'`
  ps aux | grep "[$FIRST]$REST"
}

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export VISUAL="code -w"
export SVN_EDITOR="nano"
export GIT_EDITOR="/usr/bin/nano"

## Aliases

# Rails
alias berc='bundle exec rails console'

# Finder
alias showall='defaults write com.apple.finder AppleShowAllFiles -bool true'
alias hideall='defaults write com.apple.finder AppleShowAllFiles -bool false'
alias restart='killall Finder'

# Mkdir
alias mkdir='mkdir -pv' # Make directories on demand

# Ls
alias ll='ls -lahG'

# History
alias h='history'

# Moving through directories
alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias home=' cd ~'
alias documents='cd ~/Documents'
alias desktop='cd ~/Desktop'

# Grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Calculator
alias calc='bc -l' #enable with math support

# Nice colored syntax for diff
alias diff='colordiff' # brew install colordiff

## Git

# Git clone
alias gcl="git clone"

# Git status
alias gst="git status"

# Git pull
alias gpl="git pull"

# Git push
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gpom="git push -u origin master"
alias gpo="git push -u origin"

# Git add
alias gaa='git add --all' # Stage all new, modified or deleted files

# Git diff
alias gdo="git diff | nano"
alias gd="git diff"
alias gd="git diff --staged"

# Git checkout
alias gco="git checkout"
alias gcob="git checkout -b"

# Git branch
alias gb="git branch"
alias gbdl="git branch -D" # delete local branch
alias gbdr="git push origin --delete" # delete remote branch
alias gba="git branch -a"

# Git commit
alias gc="git commit -v"
alias gca="git commit -v -a"
alias gcm="git commit -m"
alias gcam="git commit --amend"

# Git rebase
alias gr="git rebase"
alias gri="git rebase --interactive"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias gra="git rebase --abort"

# Git remove local branch
alias grlb="git fetch --all --prune; git branch -vv | grep “: gone]” | awk ‘{print $1 }’ | xargs -n 1 branch -d"

# Git remotes
alias gremotes="git remotes -v" # List all remote repos

# Git reset
alias gre="git reset"
alias gre1="git reset HEAD^"
alias gre2="git reset HEAD^^"
alias gres="git reset --soft"
alias greh="git reset --hard"
alias greh1="git reset HEAD^ --hard"
alias greh2="git reset HEAD^^ --hard"

# Git log
alias gl="git log"
alias glp="log --pretty=format:\"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]\" --decorate --date=relative"

# Http Server
alias node_server="http-server -o -c-1"

# Heroku environment
alias heroku_prepare="RAILS_ENV=production bundle exec rake assets:precompile"

# Rspec
alias rff="rspec --fail-fast"

# Open .zshrc in code
alias zshconfig="code -n ~/.zshrc"
alias zshreload="source ~/.zshrc"

# Creates alias "fuck" from the 'thefuck' package (brew install thefuck first)
# https://github.com/nvbn/thefuck
# eval "$(thefuck --alias FUCK)"
