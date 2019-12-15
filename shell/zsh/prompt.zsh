
# https://stackoverflow.com/questions/689765/how-can-i-change-the-color-of-my-prompt-in-zsh-different-from-normal-text
# https://stackoverflow.com/questions/6159856/how-do-zsh-ansi-colour-codes-work

setopt PROMPT_SUBST
# autoload -U add-zsh-hook
# precmd() { vcs_info }
# precmd_functions+=(prompt_fn_one)
source $DOTFILES/shell/zsh/git-prompt.zsh

# Variables {{{
local nbsp=" "
local newline='
'
local red="%F{167}"
local orange="%F{173}"
local yellow="%F{179}"
local green="%F{65}"
local blue="%F{75}"
local grey="%F{8}"
local light_blue="%F{117}"
local cyan="%F{43}"
local magenta="%F{176}"

local purp="%F{128}"
local venv_yellow="%F{220}"
local elixir_purp="%F{92}"
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

  # if [[ "$IN_VSCODE" == "1" ]]; then
  #   local char=' '
  # fi
  # if [[ "$IN_ATOM" == "1" ]]; then
  #   local char=' '  #  
  # fi

  #  Mix it all up
  for (( i = 0; i < $lvl; i++ )); do
    suffix+=$char;
  done;
  echo -n $suffix
}
# }}}

# ==============================================================================
# Spaceship Sections --> https://github.com/denysdovhan/spaceship-prompt
# ==============================================================================
# Prompt Icons {{{
if [[ $NERDFONT == "TRUE" ]]; then
  local docker_symbol=""
  local dotnet_symbol=""
  local elixir_symbol=""
  local git_symbol=""
  local golang_symbol=""
  local jobs_symbol=""
  local node_symbol=""
  local npm_symbol="" #   ⬢  ﯶ 
  local python_symbol=""
  local ruby_symbol="" #      
else
  local docker_symbol=""
  local dotnet_symbol="NET"
  local elixir_symbol="EX"
  local git_symbol=""
  local golang_symbol="GO"
  local jobs_symbol="♩"
  local node_symbol="JS"
  local npm_symbol="⬢" #  ⬢
  local python_symbol="PY"
  local ruby_symbol="RB"
fi

local ansible_symbol=""
local swift_symbol=""
# }}}

# ==============================================================================
# If there are Go-specific files in current directory, or current directory is under the GOPATH {{{
prompt_golang() {
  [[ -d Godeps || -f glide.yaml || -n *.go(#qN^/) || -f Gopkg.yml || -f Gopkg.lock || ( $GOPATH && $PWD =~ $GOPATH ) ]] || return

  local go_version=$(go version | grep --colour=never -oE '[[:digit:]].([[:digit:]])+(.([[:digit:]])+)?')
  echo -n "${light_blue}${golang_symbol} v${go_version} "
}  # }}}

# ==============================================================================
# Show icon if there's a working jobs in the background {{{
prompt_jobs() {
  local jobs_amount=$( (jobs) | wc -l )

  [[ $jobs_amount -gt 0 ]] || return
  [[ $jobs_amount -eq 1 ]] && jobs_amount=''

  echo -n "${yellow}${jobs_symbol}${jobs_amount}%f "
}  # }}}

# ==============================================================================
# Show current version of .NET SDK {{{
prompt_dotnet() {
  # Show DOTNET status only for folders containing project.json, global.json, .csproj, .xproj or .sln files
  [[ -f project.json || -f global.json || -n *.csproj(#qN^/) || -n *.xproj(#qN^/) || -n *.sln(#qN^/) ]] || return

  local dotnet_version=$(dotnet --version 2>/dev/null)

  echo -n "${purp}${dotnet_symbol} ${dotnet_version}%f "
}  # }}}

# ==============================================================================
# Show NPM version only when repository is a package {{{
prompt_npm() {
  [[ -f package.json ]] || return

  # Grep and cut out package version
  local package_version=$(grep -E '"version": "v?([0-9]+\.){1,}' package.json | cut -d\" -f4 2> /dev/null)

  echo -n "${orange}${npm_symbol} ${package_version}%f "
}
# }}}

# ==============================================================================
# Show NODE status only for JS-specific folders {{{
prompt_node() {
  [[ -f package.json || -d node_modules || -n *.js(#qN^/) ]] || return

  local node_version=$(node -v 2>/dev/null)

  echo -n "${green}${node_symbol} ${node_version}%f "
}
# }}}

# ==============================================================================
# Show versions only for Ruby-specific folders {{{
prompt_ruby() {
  [[ -f Gemfile || -f Rakefile || -n *.rb(#qN^/) ]] || return
  # ""    rails (5.2.1)

  local ruby_version

  # if spaceship::exists rvm-prompt; then
  #   ruby_version=$(rvm-prompt i v g)
  # elif spaceship::exists chruby; then
  #   ruby_version=$(chruby | sed -n -e 's/ \* //p')
  # elif spaceship::exists rbenv; then
    ruby_version=$(rbenv version-name)
  # else
  #   return
  # fi

  [[ -z $ruby_version || "${ruby_version}" == "system" ]] && return

  # Add 'v' before ruby version that starts with a number
  [[ "${ruby_version}" =~ ^[0-9].+$ ]] && ruby_version="v${ruby_version}"

  echo -n "${red}${ruby_symbol} ${ruby_version}%f "
}
# }}}

# ==============================================================================
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

  echo -n "${light_blue}${docker_symbol} ${docker_version}%f "
}
# }}}

# ==============================================================================
# Show current virtual environment (Python) {{{

# The (A) expansion flag creates an array, the '=' activates word splitting
spaceship_venv_generic_names="${(A)=spaceship_venv_generic_names=virtualenv venv .venv}"

prompt_venv() {
  # Check if the current directory running via Virtualenv
  [ -n "$VIRTUAL_ENV" ] || return

  local venv

  if [[ "${spaceship_venv_generic_names[(i)$VIRTUAL_ENV:t]}" -le \
        "${#spaceship_venv_generic_names}" ]]
  then
    venv="$VIRTUAL_ENV:h:t"
  else
    venv="$VIRTUAL_ENV:t"
  fi

  echo -n "${venv_yellow}${python_symbol} ${venv} %f"
}
# }}}

# ==============================================================================
# Show current version of Elixir {{{
prompt_elixir() {

  # Show versions only for Elixir-specific folders
  [[ -f mix.exs || -n *.ex(#qN^/) || -n *.exs(#qN^/) ]] || return

  local elixir_version

  # if spaceship::exists kiex; then
  #   elixir_version="${ELIXIR_VERSION}"
  # elif spaceship::exists exenv; then
  #   elixir_version=$(exenv version-name)
  # fi

  if [[ $elixir_version == "" ]]; then
    # spaceship::exists elixir || return
    elixir_version=$(elixir -v 2>/dev/null | grep "Elixir" --color=never | cut -d ' ' -f 2)
  fi

  [[ $elixir_version == "system" ]] && return
  [[ $elixir_version == $SPACESHIP_ELIXIR_DEFAULT_VERSION ]] && return

  # Add 'v' before elixir version that starts with a number
  [[ "${elixir_version}" =~ ^[0-9].+$ ]] && elixir_version="v${elixir_version}"

    echo -n "${elixir_purp}${elixir_symbol} ${elixir_version} %f"
}
# }}}

# ==============================================================================
prompt_parts=(
  git_status
  docker
  venv
  dotnet
  golang
  ruby
  elixir
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

PS1+="$blue%1~%f "
PS1+="\$(built_prompt)"
PS1+="$newline"

PS1+="%F{8}[%f"
PS1+="$green%n%f"
PS1+="$grey@%f"
PS1+="$green%m%f"
PS1+="$grey]%f"

PS1+="$green\$(suffix)%f "

RPROMPT="%B$blue%~%f%b"
if [[ $RP == "TRUE" ]]; then
  RPROMPT="%B$blue%~%f%b"
else
  RPROMPT=""
fi

alias rpr="export RP='nope' && source $DOTFILES/shell/zsh/prompt.zsh;";
alias rp="export RP='TRUE' && source $DOTFILES/shell/zsh/prompt.zsh;";

# ==============================================================================
# %D{╔═ %a %I:%M %p
#    ╚═ ✨ "

