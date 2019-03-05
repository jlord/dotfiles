source ~/.git-completion.bash

PATH=node_modules/.bin:$PATH

alias gdab="git branch | grep -v "master" | xargs git branch -D"

BLUE="\[\e[0;34m\]"
RED="\[\e[4;31m\]"
CYAN="\[\e[0;36m\]"
WHITE="\[\e[0;37m\]"

export PS1="$CYAN\W\[\e[0m\] $BLUE\${BRANCH}\[\e[m\]"

function get_branch {
  if [ -d .git ]; then
    BRANCH="$(git branch | awk '/\*/ { print $2 }') ~(˘▾˘~)︎ "
  else
    BRANCH='➳'
  fi
}

PROMPT_COMMAND="get_branch; $PROMPT_COMMAND"
