# .bashrc

# Determine if platform is Linux or macOS (Darwin) and colorize shell accordingly

platform='unknown'
unamestr=`uname`

if [[ "$unamestr" == 'Linux' ]]; then
  platform='Linux'
  alias ls="ls --color -CF1a"
  export LS_COLORS="di=36:ln=1;35:so=1;31:pi=1;33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

  alias top="COLUMNS=200 top -c"
elif [[ "$unamestr" == 'Darwin' ]]; then
  platform='macOS'
  alias ls="ls -GhF1"
  export LSCOLORS=gxFxBxDxCxegedabagacad
fi



# Aliases

alias ll="ls -lhAF"
alias skill="kill -9"
alias resource="source ~/.bash_profile"
alias secrets="vim ~/.bash_secrets"

greproc()
{
  if [ "${1}x" == "x" ]
  then
    echo "you gotta pass something in"
  else
    ps aux | grep -i "$1" | grep -v grep
  fi
}



# PS1 configuration

source ~/.git-completion.bash
source ~/.git-prompt.sh

PROMPT_COMMAND=__prompt_command

__prompt_command() {
  local EXIT="$?"

  # PS1 Colors
  local c_reset="\[\e[0m\]" #\[\e[m\]
  local c_black="\[\e[0;30m\]"
  local c_red="\[\e[0;31m\]"
  local c_green="\[\e[0;32m\]"
  local c_yellow="\[\e[0;33m\]"
  local c_blue="\[\e[0;34m\]"
  local c_magenta="\[\e[0;35m\]"
  local c_cyan="\[\e[0;36m\]"
  local c_lightgray="\[\e[0;37m\]"
  local c_default="\[\e[0;39m\]" #???

  local directory_color="${c_green}"

  if [ $EXIT != 0 ]; then
    directory_color="${c_red}"
  fi

  # PS1 helpers
  local git_ps1=${c_reset}'$(__git_ps1 " (%s)")'
  local date_and_time="${c_lightgray}[\d - \t]"
  local directory="${directory_color}\w"

  if [[ $platform == 'Linux' ]]; then
    prompt_symbol="${c_magenta} » ${c_reset}"
    username_and_hostname="${c_red}\u${c_lightgray}@${c_magenta}\h"
  else
    prompt_symbol="${c_cyan} ∫ ${c_reset}"
    username_and_hostname="${c_red}\u${c_lightgray}@${c_cyan}\h"
  fi

  PS1="\n${date_and_time} ${directory}\n ${username_and_hostname}:${git_ps1}${prompt_symbol}"
}



# Exports

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
export EDITOR=vim
export CLICOLOR=1

export HISTFILESIZE=-1
export HISTSIZE=1000000
export HISTCONTROL=ignoredups
export HISTFILE=~/.bash_history_actual
shopt -s histappend
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# some yarn stuff I guess?
export PATH="$HOME/.yarn/bin:$PATH"

# making macOS homebrew play nice with compilers
if [[ "$platform" == 'macOS' ]]; then
  brew_dir="/opt/homebrew"
  export PATH="$brew_dir/bin:$PATH"
  export CPATH="$brew_dir/include"
  export LIBRARY_PATH="$brew_dir/lib"
fi
