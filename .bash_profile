alias atom="open Atom"


# set timestamp in history
export HISTTIMEFORMAT="%d/%m/%y %T "

# git autocomplete
source $(brew --prefix)/etc/bash_completion.d/git-completion.bash


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

# include git info
source ~/.git_prompt.sh
GIT_PS1_SHOWCOLORHINTS=true
PROMPT_COMMAND='__git_ps1 "$BLUE\u@\h $YELLOW\w$COLOR_NONE" "\\\$ "'
