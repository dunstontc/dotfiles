
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
fi

# Prefix
PREFIX="╚═ $SUFFIX "
