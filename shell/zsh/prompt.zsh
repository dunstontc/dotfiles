setopt PROMPT_SUBST
autoload -U add-zsh-hook
precmd() { vcs_info }
precmd_functions+=(prompt_fn_one)

# # local NBSP=" "
# local NEWLINE='
# '
local blue="%F{5}"

# Use vcs_info to show the branch {{{
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git # hg svn
zstyle ':vcs_info:*' check-for-changes false
zstyle ':vcs_info:*' formats "%b"
# zstyle ':vcs_info:git*:*' formats '[%b%m%c%u] ' # default ' (%s)-[%b]%c%u-'
# VCS_BRANCH="%F{5}$NBSP\${vcs_info_msg_0_}%f"
# }}}
VCS_BRANCH="%F{5}$NBSP\${vcs_info_msg_0_}%f"

# More detailed stats with porcelain. {{{
prompt_fn_one() {
    VCS_STATS="$($GOBIN/porcelain -raw)"
}
# }}}

# Add new `$` to prompt to reflect $SHLVL {{{
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
# }}}

# Change Color if the last command didn't exit with 0. {{{
if [[ $? -eq 0 ]]; then
    local CHAR="%F{2}$SUFFIX%f"
else
    local CHAR="%F{1}$SUFFIX%f"
fi
# }}}

# ==============================================================================
# Spaceship Sections
# ==============================================================================
local GOLANG_SYMBOL=""

prompt_golang() {
  # If there are Go-specific files in current directory, or current directory is under the GOPATH
  [[ -d Godeps || -f glide.yaml || -n *.go(#qN^/) || -f Gopkg.yml || -f Gopkg.lock || ( $GOPATH && $PWD =~ $GOPATH ) ]] || return

  local go_version=$(go version | grep --colour=never -oE '[[:digit:]].[[:digit:]]')
  echo -n "%F{12}$GOLANG_SYMBOL v${go_version} "

}


# Show icon if there's a working jobs in the background
spaceship_jobs() {
  local jobs_amount=$( (jobs) | wc -l )

  [[ $jobs_amount -gt 0 ]] || return
  [[ $jobs_amount -eq 1 ]] && jobs_amount=''

  spaceship::section \
    "$SPACESHIP_JOBS_COLOR" \
    "$SPACESHIP_JOBS_PREFIX" \
    "${SPACESHIP_JOBS_SYMBOL}${jobs_amount}" \
    "$SPACESHIP_JOBS_SUFFIX"
# # Go
# prompt_go() {
#   if [[ (-f *.go(#qN) || -d Godeps || -f glide.yaml) ]]; then
#     if command -v go > /dev/null 2>&1; then
#     fi
#   fi
# }
prompt_order=(
  golang
)

build_prompt() {
  setopt extended_glob
  RETVAL=$?
  for segment in $@; do
    prompt_$segment
  done
}


built_prompt() {
  build_prompt $prompt_order
}
# TOPLINE=" %F{5}\$GO_GIT_STAT%f\$CHAR "
PS1=" "
PS1+="$VCS_BRANCH%F{1}\$VCS_STATS%f"
PS1+='$(built_prompt)'
PS1+="$NEWLINE"
PS1+=" %F{12}%1~/"
PS1+=" $CHAR "


# ==============================================================================
RPROMPT="%F{12}%~%f"
# PS1="$VCS_BRANCH%F{1}\$VCS_STATS%f\$CHAR "
# PROMPT='$(built_prompt)'

#  ⬢  .  ' ' ' ' '==>' '✨ ' ' '     ☠                  
# SYMBOL="╚═ ✨ "
# SPACESHIP_TIME_FORMAT="%D{╔═ %a %I:%M %p} "
