# set timestamp in history
export HISTTIMEFORMAT="%d/%m/%y %T "
# set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# git autocomplete
source $(brew --prefix)/etc/bash_completion.d/git-completion.bash

docker_container_id () {
  docker ps | grep $1 | awk '{print $1}'
}

docker_ssh_by_name () {
  id=$(docker_container_id $1)
  docker exec -it $id /bin/sh
}

docker_kill_by_name () {
  id=$(docker_container_id $1)
  docker kill $id
}
alias cid="docker_container_id"
alias dssh="docker_ssh_by_name"
alias dkill="docker_kill_by_name"

# GO
export GOPATH=~/go
export PATH=$PATH:${GOPATH//://bin:}/bin

### PROMPT
# The various escape codes that we can use to color our prompt.
        RED="\[\033[0;31m\]"
     YELLOW="\[\033[1;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[1;34m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
 COLOR_NONE="\[\e[0m\]"

 # pyenv setup
 export PYENV_ROOT="$HOME/.pyenv"
 export PATH="$PYENV_ROOT/bin:$PATH"
 if command -v pyenv 1>/dev/null 2>&1; then
   eval "$(pyenv init -)"
   eval "$(pyenv virtualenv-init -)"
 fi

# include git info
source ~/.git_prompt.sh
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
PROMPT_COMMAND='__git_ps1 "$GREEN\u@\h $BLUE$PYENV_VERSION $YELLOW\w$COLOR_NONE" "\\\$ "'
