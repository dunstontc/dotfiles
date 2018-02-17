
HISTSIZE=5000
SAVEHIST=5000
export HISTFILE=~/.cache/shell/.zsh_history

export DOTFILES=$HOME/.dotfiles
export SHELL=/usr/local/bin/zsh

if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# zplug "djui/alias-tips"
# zplug "changyuheng/zsh-interactive-cd", from:github
# zplug "mafredri/zsh-async", from:github
zplug "rupa/z", use:z.sh
zplug "uvaes/fzf-marks", from:github
zplug "zsh-users/zsh-completions", from:github, as:plugin
zplug "zsh-users/zsh-autosuggestions", from:github
zplug "zsh-users/zsh-history-substring-search", from:github
zplug "zsh-users/zsh-syntax-highlighting", defer:3


if ! zplug check --verbose; then
    printf "Install zplugins? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load


# =============================================================================

# Source our dotfiles
for file in $HOME/.dotfiles/shell/.{path,exports,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

source $HOME/.dotfiles/ignore/.private
source $HOME/.dotfiles/shell/zsh/prompt.zsh
source $HOME/.dotfiles/shell/functions/.fzf.functions
source $HOME/.dotfiles/shell/zsh/functions/register-completions.zsh


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
# fpath=(~/.dotfiles/shell/zsh/compl $fpath)

# autoload -Uz compinit && compinit

# =============================================================================
# If this option is unset, output flow control via start/stop characters
# (usually assigned to ^S/^Q) is disabled in the shell's editor.
# stty start undef
# stty stop undef
setopt noflowcontrol

# zmodload zsh/complist
# autoload -Uz compinit
# compinit

# setopt no_case_glob
# setopt correctall

setopt auto_cd
# setopt auto_pushd
# setopt auto_list
# setopt clobber
# setopt interactive_comments

# [ -z "$HISTFILE" ] && HISTFILE=$HOME/.cache/shell/.zsh_history
# HISTSIZE=10000
# SAVEHIST=10000

setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt inc_append_history

# =============================================================================
# zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

compdef "_files -W ~/.ghq/github.com/ -/" ghq


# =============================================================================
#  Mappings
# =============================================================================
bindkey -e
# make <S-Tab> work 'correctly'
# FIXME: Shift+Tab still goes wonky sometimes
bindkey '^[[Z' reverse-menu-complete

bindkey '[F' forward-word
bindkey '[C' forward-word
bindkey '[D' backward-word

# History Searching
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey '^[[A' history-beginning-search-backward-end
bindkey '^[[B' history-beginning-search-forward-end

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# =============================================================================
#  ≈ legacy
# =============================================================================
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# =============================================================================
# Change the default CTRL_T to CTRL_F
# bindkey '^F' fzf-file-widget

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER='//'

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
