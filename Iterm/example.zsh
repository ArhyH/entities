# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

#Alias
# -------------------------

alias ..='cd ../'
alias ~='cd ~'
alias c='clear'
alias f='open -a Finder ./' 
alias new='open -a Terminal ./'
alias gs='git status'
alias gaa='git add -A'
alias gcm='git commit -m'
alias ns='npm start'
alias ngrs='ngrok http 3000'

# Front-end related stuff
# -------------------------

alias ws='open -a "WebStorm" .'
alias hi='open -a "Visual Studio Code" .'
alias init-project='git clone https://github.com/nicolahorbach/init-project.git'

function magic {
  echo 'Doing some magic mystery...'
  cd ~/Desktop/projects
  mkdir $1
  cd $1
  open -a "Visual Studio Code" .
  git clone https://github.com/nicolahorbach/init-project.git .
  rm -rf .git
  git init
  echo 'Magic has happened!'
}

# added by Anaconda3 5.0.1 installer

export PATH="/Users/mac/anaconda3/bin:$PATH"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Network related aliases
# -----------------------

alias flushDNS='dscacheutil -flushcache'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'BRANCH:  %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '
