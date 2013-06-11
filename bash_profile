# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export LSCOLORS=ehfxcxdxbxegedabagacad

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# brew bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

##### ENVIRONMENT VARIABLES

# To use Homebrew's directories rather than ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv

export ANT_HOME="/Users/marco/bin/apache-ant-1.8.3"
export EDITOR=vim
export PYTHONPATH=$PYTHONPATH:$HOME/Documents/Projects/python
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_26-b03-383.jdk/Contents/Home
export SCALA_HOME=~/bin/play-2.1.1/
export NPM_HOME=/usr/local/share/npm
export PATH=$PATH:~/bin:$ANT_HOME/bin:$SCALA_HOME:$NPM_HOME/bin
export CVS_RSH=ssh


##### ALIASES 

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -A'
alias hgd='hg diff'
alias hgs='hg status'
alias gitd='git diff'
alias gits='git status'
alias fh='find . -name ' # find here

# Shadows system CVS which is old and doesn't support extssh
alias cvs=/usr/local/bin/cvs

# To enable shims and autocompletion in rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# To enable git-flow-completion
#source ~/conf/git-prompt.sh
source  ~/conf/git-flow-completion.bash

# Golang
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin

##### FUNCTIONS 

function tweet {
  curl -n -d status="$*" https://twitter.com/statuses/update.xml --insecure &> /dev/null
  echo "tweet'd"
}

# Fancy prompt
export PS1='\033[0;36m\](\u) \w\033[1;36m\]$(__git_ps1 " (%s)")\033[0m\] \$ '

