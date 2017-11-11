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

#Styling output
#Use them as:
#echo "${txtbld}This is bold text output from shell script${txtrst}"
#echo "${txtred}This is coloured red except ${txtblu}this is blue${txtrst}"
#${txtrst} will reset the terminal.
txtund=$(tput sgr 0 1)    # Underline
txtbld=$(tput bold)       # Bold
txtred=$(tput setaf 1)    # Red
txtgrn=$(tput setaf 2)    # Green
txtylw=$(tput setaf 3)    # Yellow
txtblu=$(tput setaf 4)    # Blue
txtpur=$(tput setaf 5)    # Purple
txtcyn=$(tput setaf 6)    # Cyan
txtwht=$(tput setaf 7)    # White
txtrst=$(tput sgr0)       # Text reset

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
#already defined by "take"
function mkcd() { mkdir -p "$@" && cd "$_"; }

#time zsh startup
function timezsh() {
  echo "${txtcyn}Timing zsh bootup${txtrst}"
  time zsh -ilc exit
}

#Add to backup directory
function bfile() {  cp "$1" "$HOME/Developer/config/Backup"; }

#Download Mega Files
function mdl() {
  cd ~/Downloads
  for file in "$@"
  do
    echo "Downloading ${txtcyn}$file${txtrst} in background..."
    megadl $file &
  done
}

# Life Alias'
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias zshconfig="nano ~/.zshrc"
alias envconfig="nano ~/.oh-my-zsh/custom/env.sh"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias srczsh="source ~/.zshrc"
alias srcenv="source ~/Developer/config/env.sh"
alias sbl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias backcon="cd ~/Developer/config/Backup"
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
