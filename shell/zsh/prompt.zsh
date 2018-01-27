

setopt PROMPT_SUBST

# PROMPT='%n in ${PWD/#$HOME/~}'

autoload -Uz vcs_info

precmd() { vcs_info }
zstyle ':vcs_info:*' enable git hg
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr  # default 'S'
zstyle ':vcs_info:*' unstagedstr "%F{red}●%f" # default 'U'

# Add new `$` to prompt to reflect $shlvl
if [[ -n "$TMUX" ]]; then
  local LVL=$(($SHLVL - 1))
else
  local LVL=$SHLVL
fi

if [[ $EUID -eq 0 ]]; then
  local SUFFIX=$(printf '#%.0s' {1..$LVL})
else
  local SUFFIX=$(printf '$%.0s' {1..$LVL})
  f"i":,

  "  "# Prefix
PREFIX="╚═ $SUFFIX "

RPROMPT="${PWD/#$HOME/~}"
PROMPT="%n in ${PWD/#$HOME/~} \n$SUFFIX"
