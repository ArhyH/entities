# Navigation related aliases
# --------------------------

alias ..='cd ../'
alias ~='cd ~'
alias c='clear'
alias f='open -a Finder ./'



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

# Front-end related stuff
# -------------------------
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
