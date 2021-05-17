[ -s ~/.bash_aliases ] && source ~/.bash_aliases
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# append to the history file, don't overwrite it
shopt -s histappend

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

create_ps1() {
    local R="\[$(tput setaf 1)\]"
    local G="\[$(tput setaf 2)\]"
    local Y="\[$(tput setaf 3)\]"
    local B="\[$(tput setaf 27)\]"
    local E="\[$(tput sgr0)\]"
    export PS1="$G\u@\h$E:$B\w$E \$ "
}
PROMPT_DIRTRIM=5
create_ps1
