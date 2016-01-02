BLUE='\e[0;34m';
RED="\e[4;31m"
CYAN="\e[0;36m"
WHITE="\e[0;37m"

export PS1="$BLUE\${BRANCH}\e[m $WHITE@\u $CYAN\w:\[\e[0m\] "

# Git Autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

function get_branch {
  if [ -d .git ]; then
    BRANCH="$(git branch | awk '/\*/ { print $2 }') ☁︎ "
  else
    BRANCH='➳'
  fi
}

PROMPT_COMMAND="get_branch; $PROMPT_COMMAND"

# Other options for when I feel like changing it up
# ⚑☂◉≀∿∾≜⊣⟢ ☗
# (❍ᴥ❍ʋ)
# ⚆ _ ⚆
# ~(˘▾˘~)
# ℬ℞ª∩©ℌ
# (づ｡◕‿‿◕｡)づ
