setopt PROMPT_SUBST
autoload -U add-zsh-hook
precmd() { vcs_info }
# precmd_functions+=(prompt_fn_one)
source $DOTFILES/shell/zsh/git-prompt.zsh



# Variables {{{
local nbsp=" "
local newline='
'
local red="%F{167}"
local yellow="%F{179}"
local green="%F{65}"
local blue="%F{75}"
local light_blue="%F{117}"
local cyan="%F{43}"
local magenta="%F{176}"

local purp="%F{128}"
# }}}

# Use vcs_info to show the branch {{{
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git # hg svn
zstyle ':vcs_info:*' check-for-changes false
zstyle ':vcs_info:*' formats "%b"
# zstyle ':vcs_info:git*:*' formats '[%b%m%c%u] ' # default ' (%s)-[%b]%c%u-'
# VCS_BRANCH="%F{5}$NBSP\${vcs_info_msg_0_}%f"
vcs_branch="$magenta\${vcs_info_msg_0_}%f"
# }}}

# Prompt Character {{{
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
# }}}


# ==============================================================================
# Spaceship Sections
# ==============================================================================
local ansible_symbol=""
local dotnet_symbol=""
# local dotnet_symbol=".NET"
local docker_symbol=""
local golang_symbol=""
local jobs_symbol="♩"
local node_symbol=""
local npm_symbol="npm" # 
local swift_symbol=""


# If there are Go-specific files in current directory, or current directory is under the GOPATH {{{
prompt_golang() {
  [[ -d Godeps || -f glide.yaml || -n *.go(#qN^/) || -f Gopkg.yml || -f Gopkg.lock || ( $GOPATH && $PWD =~ $GOPATH ) ]] || return

  local go_version=$(go version | grep --colour=never -oE '[[:digit:]].[[:digit:]]')
  echo -n "$light_blue$golang_symbol v${go_version} "
}  # }}}

# Show icon if there's a working jobs in the background {{{
prompt_jobs() {
  local jobs_amount=$( (jobs) | wc -l )

  [[ $jobs_amount -gt 0 ]] || return
  [[ $jobs_amount -eq 1 ]] && jobs_amount=''

  echo -n "$yellow${jobs_symbol}${jobs_amount}%f "
}  # }}}

# Show current version of .NET SDK {{{
prompt_dotnet() {
  # Show DOTNET status only for folders containing project.json, global.json, .csproj, .xproj or .sln files
  [[ -f project.json || -f global.json || -n *.csproj(#qN^/) || -n *.xproj(#qN^/) || -n *.sln(#qN^/) ]] || return

  # dotnet-cli automatically handles SDK pinning (specified in a global.json file)
  # therefore, this already returns the expected version for the current directory
  local dotnet_version=$(dotnet --version 2>/dev/null)

  echo -n "$purp${dotnet_symbol} ${dotnet_version}%f "
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

  echo -n "$red${npm_symbol} ${package_version}%f "
}
# }}}

# Show NODE status only for JS-specific folders {{{
prompt_node() {
  [[ -f package.json || -d node_modules || -n *.js(#qN^/) ]] || return

  local node_version=$(node -v 2>/dev/null)

  echo -n "$green${node_symbol} ${node_version}%f "
}
# }}}

# Show current Docker version and connected machine {{{
prompt_docker() {
  # Show Docker status only for Docker-specific folders
  [[ -f Dockerfile || -f docker-compose.yml ]] || return

  # if docker daemon isn't running you'll get an error saying it can't connect
  local docker_version=$(docker version -f "{{.Server.Version}}" 2>/dev/null)
  [[ -z $docker_version ]] && return

  if [[ -n $DOCKER_MACHINE_NAME ]]; then
    docker_version+=" via ($DOCKER_MACHINE_NAME)"
  fi

    echo -n "$light_blue${docker_symbol} ${docker_version}%f "
}
# }}}

prompt_parts=(
  git_status
  dotnet
  golang
  node
  npm
  docker
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


# *  -  Unstaged Change
# +  -  Staged Change
# %  -  Untracked Files
# $  -  Stashed
# <  -  Behind Upstream
# >  -  Ahead of Upstream
# <> -  D
# =  -  No difference between upstream
# $(__git_ps1 " (%s)")

PS1=""
PS1+="%B$blue%1~%f "
PS1+="$vcs_branch "
PS1+='%B$(built_prompt)%b'
PS1+="$newline"
PS1+="$green%B\$(suffix)%b%f "


# ==============================================================================
RPROMPT="%B$blue%~%f%b"

# %D{╔═ %a %I:%M %p
#    ╚═ ✨ "

