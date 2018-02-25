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
local bright_blue="%F{12}"
local green="%F{2}"
local bright_green="%F{10}"
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
local npm_symbol="npm"
local node_symbol=""

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

  echo -n "%F{11}${jobs_symbol}${jobs_amount}%f "
}  # }}}

# Show current version of .NET SDK {{{
prompt_dotnet() {
  # Show DOTNET status only for folders containing project.json, global.json, .csproj, .xproj or .sln files
  [[ -f project.json || -f global.json || -n *.csproj(#qN^/) || -n *.xproj(#qN^/) || -n *.sln(#qN^/) ]] || return

  # dotnet-cli automatically handles SDK pinning (specified in a global.json file)
  # therefore, this already returns the expected version for the current directory
  local dotnet_version=$(dotnet --version 2>/dev/null)

  echo -n "%F{128}${dotnet_symbol} ${dotnet_version}%f "
}  # }}}

# Show NPM version only when repository is a package {{{
prompt_npm() {
  [[ -f package.json ]] || return

  # Grep and cut out package version
  local package_version=$(grep -E '"version": "v?([0-9]+\.){1,}' package.json | cut -d\" -f4 2> /dev/null)

  # Handle version not found
  if [ ! "$package_version" ]; then
    package_version="⚠"
  else
    package_version="v${package_version}"
  fi

  echo -n "%F{1}${npm_symbol} ${package_version}%f "
}
# }}}

# Show NODE status only for JS-specific folders {{{
prompt_node() {
  [[ -f package.json || -d node_modules || -n *.js(#qN^/) ]] || return

  local node_version=$(node -v 2>/dev/null)

  echo -n "%F{65}${node_symbol} ${node_version}%f "
}
# }}}

prompt_parts=(
  dotnet
  golang
  node
  npm
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

PS1=""
PS1+="%B%F{12}%1~ "
PS1+="$vcs_branch%F{1}%b\$vcs_stats%f "
PS1+='%B$(built_prompt)%b'
PS1+="$newline"
PS1+='%F{65}%B$(suffix)%b%f '


# ==============================================================================
RPROMPT="%B%F{12}%~%f%b"

#  ⬢  .  ' ' ' ' '==>' '✨ ' ' '                      
# SYMBOL="╚═ ✨ "
# SPACESHIP_TIME_FORMAT="%D{╔═ %a %I:%M %p} "

