#!/bin/zsh
# Environment Setup
# -----------------
# Alias' and Exports

# PATH
# export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export EDITOR='subl -w'
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
JAVA_HOME=$(/usr/libexec/java_home)

# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# Owner
#export USER_NAME="YOUR NAME"
#eval "$(rbenv init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

#Add to backup directory
function bfile() {  cp "$1" "$HOME/Developer/config/Backup"; }

# Life Alias'
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias srczsh="source ~/.zshrc"
alias srcenv="source ~/Developer/config/env.sh"
alias sbl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias envconfig="subl ~/Developer/config/env.sh"
alias backcon="cd ~/Developer/config/Backup"
# Fall 2015 Classes
alias ee109="cd ~/Documents/School/USC/Fall\ 2015/EE109\ Embedded"
alias cs170="cd ~/Documents/School/USC/Fall\ 2015/CS170\ Discrete"
alias cs104="cd ~/Documents/School/USC/Fall\ 2015/CS104\ Data\ Structures"
# Spring 2016 Classes
alias cs201="cd ~/Documents/School/USC/Spring\ 2016/CSCI201\ Software\ Dev/"
alias ee209="cd ~/Documents/School/USC/Spring\ 2016/EE209\ Digital\ Systems"
alias cs360="cd ~/Documents/School/USC/Spring\ 2016/CSCI360\ Artificial\ Intelligence"