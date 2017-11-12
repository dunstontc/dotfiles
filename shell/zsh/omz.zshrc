#     ________      _______. __    __  .______        ______
#    |       /     /       ||  |  |  | |   _  \      /      |
#    `---/  /     |   (----`|  |__|  | |  |_)  |    |  ,----'
#       /  /       \   \    |   __   | |      /     |  |
#   __ /  /----.----)   |   |  |  |  | |  |\  \----.|  `----.
#  (__)________|_______/    |__|  |__| | _| `._____| \______|
#
#
export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="random"
ZSH_THEME="spaceship"

export SHELL=/usr/local/bin/zsh

HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# Add wisely, as too many plugins slow down shell startup.
plugins=(
  alias-tips
  # compleat
  git
  # extract
  # npm
  zsh-autosuggestions
  # zsh-interactive-cd
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# =============================================================================
#  User configuration
# =============================================================================

export LANG=en_US.UTF-8

# export MANPATH="/usr/local/man:$MANPATH"

# set new history location
HISTSIZE=5000
SAVEHIST=5000
export HISTFILE=~/.config/shell/.zsh_history

# bindkey "^[[1;3C" forward-word
# bindkey "^[[1;3D" backward-word
# bindkey -e
# bindkey '^[[1;9C' forward-word
# bindkey '^[[1;9D' backward-word

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# =============================================================================
# testing deer (≈ ranger in zsh)
# source $ZSH/custom/deer.zsh
# zle -N deer
# bindkey "\ek" deer

# =============================================================================
# fzf - go powered completion
# Auto-completion
# [[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null
#
#  Key bindings
# source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# =============================================================================

# source $(dirname $(gem which colorls))/tab_complete.sh

# =============================================================================
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# =============================================================================
# https://github.com/joshfinnie/archey-osx
# Only run archey when we're not using tmux
# if [ "$TERM" != "screen" ] && [ -z "$TMUX" ]; then
#     archey -c
# fi

# =============================================================================
# Load private files
source $HOME/.dotfiles/ignore/.private

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
# rm ~/.zcompdump*
