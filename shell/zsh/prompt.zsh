setopt PROMPT_SUBST
autoload -U add-zsh-hook
precmd() { vcs_info }
precmd_functions+=(prompt_fn_one)

# Variables {{{
local nbsp=" "
local newline='
'
local magenta="%F{5}"
local blue="%F{4}"
local green="%F{2}"
local cyan="%F{6}"
local dotnet_purp="%F{128}"
# }}}

# Use vcs_info to show the branch {{{
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git # hg svn
zstyle ':vcs_info:*' check-for-changes false
zstyle ':vcs_info:*' formats "%b"
# zstyle ':vcs_info:git*:*' formats '[%b%m%c%u] ' # default ' (%s)-[%b]%c%u-'
# VCS_BRANCH="%F{5}$NBSP\${vcs_info_msg_0_}%f"
# }}}
vcs_branch="%F{5}\${vcs_info_msg_0_}%f"

# More detailed stats with porcelain. {{{
prompt_fn_one() {
    vcs_stats=$($GOBIN/porcelain -raw)
}
# }}}

suffix() {
  # Add new `$` to prompt to reflect $SHLVL
  if [[ -n "$TMUX" ]]; then
      local lvl=$(($SHLVL - 1))
  else
      local lvl=$SHLVL
  fi

  #  Char is `$` normally and `#` for root.
  if [[ $EUID -eq 0 ]]; then
    local char='#'
  else
    local char='$'
  fi

  #  Mix it all up
  for (( i = 0; i < $lvl; i++ )); do
    suffix+=$char;
  done;
  echo -n $suffix
}


# ==============================================================================
# Spaceship Sections
# ==============================================================================
local golang_symbol=""
local jobs_symbol="♩"
local dotnet_symbol=".NET"

# If there are Go-specific files in current directory, or current directory is under the GOPATH {{{
prompt_golang() {
  [[ -d Godeps || -f glide.yaml || -n *.go(#qN^/) || -f Gopkg.yml || -f Gopkg.lock || ( $GOPATH && $PWD =~ $GOPATH ) ]] || return

  local go_version=$(go version | grep --colour=never -oE '[[:digit:]].[[:digit:]]')
  echo -n "%F{12}$golang_symbol v${go_version} "
}  # }}}

# Show icon if there's a working jobs in the background {{{
prompt_jobs() {
  local jobs_amount=$( (jobs) | wc -l )

  [[ $jobs_amount -gt 0 ]] || return
  [[ $jobs_amount -eq 1 ]] && jobs_amount=''

  echo -n "%F{11}${jobs_symbol}${jobs_amount}%f"
}  # }}}

# Show current version of .NET SDK {{{
prompt_dotnet() {
  # Show DOTNET status only for folders containing project.json, global.json, .csproj, .xproj or .sln files
  [[ -f project.json || -f global.json || -n *.csproj(#qN^/) || -n *.xproj(#qN^/) || -n *.sln(#qN^/) ]] || return

  # dotnet-cli automatically handles SDK pinning (specified in a global.json file)
  # therefore, this already returns the expected version for the current directory
  local dotnet_version=$(dotnet --version 2>/dev/null)

  echo -n "%F{128}${dotnet_symbol} ${dotnet_version}%f"
}  # }}}

prompt_parts=(
  dotnet
  golang
  jobs
)

build_prompt() {
  setopt extended_glob
  RETVAL=$?
  for segment in $@; do
    prompt_$segment
  done
}

built_prompt() {
  build_prompt $prompt_parts
}

# TOPLINE=" %F{5}\$GO_GIT_STAT%f\$CHAR "
PS1="%F{2} %f"
PS1+="%B%F{4}%1~ "
PS1+="$vcs_branch%F{1}%b\$vcs_stats%f "
PS1+='%B$(built_prompt)%b'
PS1+="$newline"
PS1+='%F{2} %F{2}%B$(suffix)%b%f '


# ==============================================================================
RPROMPT="%B%F{4}%~%f%b"
# PS1="$VCS_BRANCH%F{1}\$VCS_STATS%f\$CHAR "
# PROMPT='$(built_prompt)'

#  ⬢  .  ' ' ' ' '==>' '✨ ' ' '                      
# SYMBOL="╚═ ✨ "
# SPACESHIP_TIME_FORMAT="%D{╔═ %a %I:%M %p} "

