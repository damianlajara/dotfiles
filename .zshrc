# ZShell Config

# Path to your oh-my-zsh installation.
export ZSH=/Users/damian/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# https://github.com/bhilburn/powerlevel9k
ZSH_THEME="powerlevel9k/powerlevel9k"

##### Also make sure to install these fonts!!! (I prefer Meslo)
# https://github.com/powerline/fonts

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

plugins=(git zsh-autosuggestions bundler osx rake ruby rails last-working-dir npm brew bower node battery web-search)

# User configuration

export PATH="$PATH:/Users/damian/.rvm/gems/ruby-2.2.2/bin:/Users/damian/.rvm/gems/ruby-2.2.2@global/bin:/Users/damian/.rvm/rubies/ruby-2.2.2/bin:/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Postgres.app/Contents/Versions/9.4/bin:/Users/damian/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# Environment Variables
# =====================
  # Library Paths
  # These variables tell your shell where they can find certain
  # required libraries so other programs can reliably call the variable name
  # instead of a hardcoded path.

    # NODE_PATH
    # Node Path from Homebrew I believe
    export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

    # Those NODE & Python Paths won't break anything even if you
    # don't have NODE or Python installed. Eventually you will and
    # then you don't have to update your bash_profile

  # Configurations

    # GIT_MERGE_AUTO_EDIT
    # This variable configures git to not require a message when you merge.
    export GIT_MERGE_AUTOEDIT='no'

    # Editors
    # Tells your shell that when a program requires various editors, use atom.
    # The -w flag tells your shell to wait until atom exits
    export VISUAL="atom -w"
    export SVN_EDITOR="nano"
    export GIT_EDITOR="/usr/bin/nano"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR=‘atom -w’
# else
#   export EDITOR=‘atom -w’
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set the default hostname
HOSTNAME=$(hostname)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
  # Zshell Config
  # alias zshconfig=‘open ~/.zshrc'
  # alias ohmyzsh=‘open ~/.oh-my-zsh'

  # Finder
  alias showall='defaults write com.apple.finder AppleShowAllFiles -bool true'
  alias hideall='defaults write com.apple.finder AppleShowAllFiles -bool false'
  alias restart='killall Finder'

  # Atom
  alias atomn='atom -n' # Open atom in a new window

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
  alias flatiron='cd ~/FlatironPrepwork'

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
  alias gcam="git commit -am"
  alias gcm="git commit -m"
  alias gcam="git commit —amend"
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

  # Heroku environment
  alias heroku_prepare="RAILS_ENV=production bundle exec rake assets:precompile"

  # Rspec
  alias rff="rspec --fail-fast"
  # Variable segments for theme: (https://github.com/bhilburn/powerlevel9k)
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time battery root_indicator)

  # Open .zshrc in atom
  alias zconfig="atom -n ~/.zshrc"
  # RVM
  # Mandatory loading of RVM into the shell
  # This must be the last line of your profile always

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
