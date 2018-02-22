#    .______        ___           _______. __    __  .______        ______
#    |   _  \      /   \         /       ||  |  |  | |   _  \      /      |
#    |  |_)  |    /  ^  \       |   (----`|  |__|  | |  |_)  |    |  ,----'
#    |   _  <    /  /_\  \       \   \    |   __   | |      /     |  |
#  __|  |_)  |  /  _____  \  .----)   |   |  |  |  | |  |\  \----.|  `----.
# (__)______/  /__/     \__\ |_______/    |__|  |__| | _| `._____| \______|
#

# Check for an interactive session
[ -z "$PS1" ] && return

# Source our dotfiles
for file in $HOME/.dotfiles/shell/.{path,exports,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Use bash-completion, if available
# if [ -f /usr/local/share/bash-completion/bash_completion ]; then
#     source /usr/local/share/bash-completion/bash_completion
# fi

source "$HOME/.dotfiles/shell/bash/prompt.bash"
# source "$HOME/.dotfiles/shell/bash/.fzf.bash"
source "$HOME/.bplug/z.sh"


# =============================================================================
## SMARTER TAB-COMPLETION (Readline bindings) ##

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on"

# Treat hyphens and underscores as equivalent
bind "set completion-map-case on"

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

### Disable CTRL-S and CTRL-Q
# [[ $- =~ i ]] && stty -ixoff -ixon

# Enable incremental history search with up/down arrows (also Readline goodness)
# Learn more about this here: http://codeinthehole.com/writing/the-most-important-command-line-tip-incremental-history-searching-with-inputrc
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

## BETTER DIRECTORY NAVIGATION ##
shopt -s nocaseglob;           # Case-insensitive globbing (used in pathname expansion)
shopt -s globstar 2> /dev/null # Turn on recursive globbing (enables ** to recurse all directories)
shopt -s autocd 2> /dev/null   # Prepend cd to directory names automatically
shopt -s dirspell 2> /dev/null # Correct spelling errors during tab-completion
shopt -s cdspell 2> /dev/null  # Correct spelling errors in arguments supplied to cd


# =============================================================================
#  completion
# =============================================================================
complete -F _fzf_path_completion -o default -o bashdefault ag
complete -F _fzf_dir_completion  -o default -o bashdefault tree

bind "TAB:menu-complete"
# bind -x '"\C-g": "fzf-file-widget"'
# bind "'\C-f': ' \C-e\C-u$(__fzf_cd__)\e\C-e\er\C-m'"
# bind "'\C-f': ' \C-e\C-u`__fzf_cd__`\e\C-e\er\C-m'"


# =============================================================================
#  History
# =============================================================================

HISTCONTROL="erasedups:ignoreboth"                     # Don't put duplicate lines or lines starting with space in the history
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear" # Commands that don't need to be recorded
shopt -s cmdhist                                       # Save multi-line commands to the history as one command
shopt -s histappend                                    # Append to the history file, don't overwrite it
HISTSIZE=500000                                        # Set history size to a very large number
HISTFILESIZE=100000
# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
HISTTIMEFORMAT='%F %T '                                # Set history timestamp format

# =============================================================================
#  other
# =============================================================================

# if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi

# For when we mess up
eval "$(thefuck --alias)"

# Use bash-completion, if available
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion ]] && \
    . /usr/local/share/bash-completion/bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

