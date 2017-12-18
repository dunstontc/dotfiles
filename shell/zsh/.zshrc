
HISTSIZE=5000
SAVEHIST=5000
export HISTFILE=~/.cache/shell/.zsh_history

export LANG=en_US.UTF-8
export DOTFILES=$HOME/.dotfiles
export SHELL=/usr/local/bin/zsh

if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

# Let zplug plug zplug
zplug 'zplug/zplug',        hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async", from:github
zplug "plugins/git",        from:oh-my-zsh
zplug "lib/completion",     from:oh-my-zsh
# zplug "zsh-users/zsh-completions" from:github
zplug "rupa/z",             use:z.sh
zplug "changyuheng/fz",     defer:1
zplug "uvaes/fzf-marks",    from:github
# zplug "changyuheng/zsh-interactive-cd", from:github
# zplug "Vifon/deer",     from:github, use:deer
zplug "djui/alias-tips"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting",     defer:2
zplug "denysdovhan/spaceship-zsh-theme",       use:spaceship.zsh, from:github, at:3.0, as:theme, defer:1


if ! zplug check --verbose; then
    printf "Install zplugins? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load


# if zplug check denysdovhan/spaceship-zsh-theme; then
#     # source /Users/clay/.dotfiles/shell/zsh/prompt.zsh
# fi

# =============================================================================

# Source our dotfiles
for file in $HOME/.dotfiles/shell/.{path,exports,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

source $HOME/.dotfiles/ignore/.private


# =============================================================================
# # # Make sure the terminal is in application mode, which zle is active. Only then
# # are the values from $terminfo valid.
# # See http://zshwiki.org/home/zle/bindkeys#reading_terminfo.
# if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
#   function zle-line-init() {
#     echoti smkx
#   }
#
#   function zle-line-finish() {
#     echoti rmkx
#   }
#   zle -N zle-line-init
#   zle -N zle-line-finish
# fi
# =============================================================================
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
source $HOME/.dotfiles/shell/.highlight
source $HOME/.dotfiles/shell/functions/.fzf.functions

# =============================================================================
# If this option is unset, output flow control via start/stop characters
# (usually assigned to ^S/^Q) is disabled in the shell's editor.
stty start undef
stty stop undef
setopt noflowcontrol

# zmodload zsh/complist
# autoload -Uz compinit
# compinit

# setopt no_case_glob
# setopt correctall

setopt auto_cd
setopt auto_pushd
setopt auto_list
setopt clobber
setopt interactive_comments


[ -z "$HISTFILE" ] && HISTFILE=$HOME/.cache/shell/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt inc_append_history


# =============================================================================
# export FZ_CASE_INSENSITIVE=1
# # setopt FZ_CASE_INSENSITIVE
#
#
# autoload -U deer
# zle -N deer
# bindkey '\ek' deer
# # typeset -Ag DEER_KEYS   # Prepare the associative table.
# # DEER_KEYS[function]=key
# # DEER_KEYS[action_name]=key
# zstyle ':deer:' height 22

# =============================================================================
#  Mappings
# =============================================================================
bindkey -e
bindkey '[C' forward-word
bindkey '[D' backward-word
bindkey '[F' forward-word

# History Searchi
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey  '^[[A'  history-beginning-search-backward-end
bindkey  '^[[B'  history-beginning-search-forward-end



# =============================================================================
#  ≈ legacy
# =============================================================================
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word


# =============================================================================
#  Syntax
# =============================================================================
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=white'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=white'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=white'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=white'
ZSH_HIGHLIGHT_STYLES[function]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[alias]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=blue'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=yellow'

# =============================================================================
# Change the default CTRL_T to CTRL_F
bindkey '^F' fzf-file-widget

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER='/'

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# =============================================================================
# eval $(thefuck --alias --enable-experimental-instant-mode)
compdef vman="man"

#  =============================================================================

SPACESHIP_PROMPT_ORDER=(
  user
  host
  time
  dir
  battery
  git
  hg
  package
  node
  ruby
  swift
  golang
  php
  rust
  docker
  aws
  venv
  conda
  pyenv
  dotnet
  ember
  exec_time
  vi_mode
  jobs
  exit_code
  line_sep
  char
)

# CHAR
SPACESHIP_CHAR_SYMBOL="╚═ $ "

# PROMPT
SPACESHIP_PROMPT_SEPARATE_LINE=true
# SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_PREFIXES_SHOW=false
SPACESHIP_PROMPT_SUFFIXES_SHOW=true
SPACESHIP_PROMPT_DEFAULT_PREFIX="via "
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "

# TIME
SPACESHIP_TIME_SHOW=true
# SPACESHIP_TIME_FORMAT="%D{╔═ %a %I:%M %p} "
SPACESHIP_TIME_FORMAT="╔═"
SPACESHIP_TIME_12HR=true
SPACESHIP_TIME_COLOR="green"

# DIR
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_PREFIX=" "
SPACESHIP_DIR_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_DIR_TRUNC=3
SPACESHIP_DIR_COLOR="cyan"
