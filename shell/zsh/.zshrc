HISTSIZE=10000
SAVEHIST=10000
export HISTFILE=~/.cache/shell/.zsh_history

export DOTFILES=$HOME/.dotfiles
export SHELL=/usr/local/bin/zsh


# =============================================================================

# Source our dotfiles
for file in $DOTFILES/shell/*.sh; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;



[[ -f "$DOTFILES/ignore/.private" ]] && source "$DOTFILES/ignore/.private"
source $DOTFILES/shell/zsh/prompt.zsh
source $DOTFILES/shell/functions/.fzf.functions


# =============================================================================
#  Syntax
# =============================================================================
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[builtin]='fg=12'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=13'
ZSH_HIGHLIGHT_STYLES[path]='fg=6'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=7'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=7'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=7'
ZSH_HIGHLIGHT_STYLES[function]='fg=3'
ZSH_HIGHLIGHT_STYLES[command]='fg=2'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=13'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=5'
ZSH_HIGHLIGHT_STYLES[alias]='fg=4'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=12'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=11'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=11'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=15'

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
# Fix issues with zsh completion:
function fixzsh() {
  rm ~/.zcompdump*;
  rm ~/.antigen/.zcompdump*;
  rm ~/.zplug/zcompdump*;
  exec zsh;
}
# =============================================================================
# Pick up additional site-functions that may not be on system zsh's
# $fpath by default
# function get_them_completions() {
#   local site_dir site_dirs
#
#   site_dirs=( /usr/local/share/zsh/site-functions )
#   if [[ -n $HOMEBREW_PREFIX ]]; then
#     site_dirs+=$HOMEBREW_PREFIX/share/zsh/site-functions
#   fi
#   for site_dir ( $site_dirs ); do
#     if [[ -d $site_dir  && ${fpath[(I)$site_dir]} == 0 ]]; then
#       FPATH=$site_dir:$FPATH
#     fi
#   done
# }
# get_them_completions()
fpath=(~/.zsh/completion $fpath)
fpath=(~/.zsh/plugins/zsh-completions/src $fpath)

# dotnet cli completion
source $DOTFILES/shell/zsh/functions/dotnet.completions.zsh
# source $DOTFILES/shell/zsh/functions/awscli.completions.sh
# Clipboard compat for MacOS/Linux
source $DOTFILES/shell/zsh/functions/clipcopy.zsh

# =============================================================================
# If this option is unset, output flow control via start/stop characters
# (usually assigned to ^S/^Q) is disabled in the shell's editor.
# stty start undef
# stty stop undef
setopt noflowcontrol

# zmodload zsh/complist
# autoload -Uz compinit

# setopt no_case_glob
# setopt correctall

setopt auto_cd            # Implied cd if you just type a directory name
setopt menu_complete
setopt auto_pushd
# setopt auto_list
# setopt clobber
# setopt interactive_comments
# setopt nolistambiguous

# [ -z "$HISTFILE" ] && HISTFILE=$HOME/.cache/shell/.zsh_history
# HISTSIZE=10000
# SAVEHIST=10000

setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_dups
# setopt inc_append_history
setopt APPEND_HISTORY          # append rather than overwrite history file.

# =============================================================================
# zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

autoload -Uz compinit && compinit

compdef "_files -W ~/.ghq/github.com/ -/" ghq

# Allow SSH tab completion for mosh hostnames
compdef mosh=ssh
compdef vboxmanage=VBoxManage
compdef vmb=VBoxManage

# =============================================================================
#  Mappings
# =============================================================================
bindkey -e
# make <S-Tab> work *correctly*
bindkey '^[[Z' reverse-menu-complete

bindkey '[C' forward-word
bindkey '[D' backward-word
bindkey "^[[1;3C" forward-word   # Ubuntu
bindkey "^[[1;3D" backward-word  # Ubuntu
bindkey "^[[1;5C" forward-word   # CentOS 7
bindkey "^[[1;5D" backward-word  # CentOS 7

# History Searching
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey '^[[A' history-beginning-search-backward-end
bindkey '^[[B' history-beginning-search-forward-end

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# =============================================================================
# Change the default CTRL_T to CTRL_F

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER='//'

# # zplug "zsh-users/zsh-completions", from:github, as:plugin

source ~/.zsh/plugins/fzf-marks/fzf-marks.plugin.zsh
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

