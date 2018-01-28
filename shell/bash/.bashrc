#    .______        ___           _______. __    __  .______        ______
#    |   _  \      /   \         /       ||  |  |  | |   _  \      /      |
#    |  |_)  |    /  ^  \       |   (----`|  |__|  | |  |_)  |    |  ,----'
#    |   _  <    /  /_\  \       \   \    |   __   | |      /     |  |
#  __|  |_)  |  /  _____  \  .----)   |   |  |  |  | |  |\  \----.|  `----.
# (__)______/  /__/     \__\ |_______/    |__|  |__| | _| `._____| \______|
#
#
# Say Hello
echo "🏃 .bashrc";


# Source our dotfiles
for file in $HOME/.dotfiles/shell/.{path,exports,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Use bash-completion, if available
# if [ -f /usr/local/share/bash-completion/bash_completion ]; then
#     source /usr/local/share/bash-completion/bash_completion
# fi


# Only load Liquid Prompt in interactive shells
# [[ $- = *i* ]] && source ~/liquidprompt/liquidprompt
source $HOME/.dotfiles/shell/bash/prompt.bash
source $HOME/.dotfiles/shell/bash/.fzf.bash
source $HOME/.dotfiles/shell/.highlight
source $HOME/.bplug/z.sh


# =============================================================================
# https://github.com/mrzool/bash-sensible/blob/master/sensible.bash

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

## SMARTER TAB-COMPLETION (Readline bindings) ##

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on"

# Treat hyphens and underscores as equivalent
bind "set completion-map-case on"

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

### Disable CTRL-S and CTRL-Q
# [[ $- =~ i ]] && stty -ixoff -ixon

# Record each line as it gets issued
# PROMPT_COMMAND='history -a'
# export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} history -a"

# Enable incremental history search with up/down arrows (also Readline goodness)
# Learn more about this here: http://codeinthehole.com/writing/the-most-important-command-line-tip-incremental-history-searching-with-inputrc
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

## BETTER DIRECTORY NAVIGATION ##
shopt -s autocd 2> /dev/null   # Prepend cd to directory names automatically
shopt -s dirspell 2> /dev/null # Correct spelling errors during tab-completion
shopt -s cdspell 2> /dev/null  # Correct spelling errors in arguments supplied to cd


# =============================================================================
#  completion +
# =============================================================================
# complete -o default -o nospace -F _man vman
complete -F _fzf_path_completion -o default -o bashdefault ag
complete -F _fzf_dir_completion -o default -o bashdefault tree

bind "TAB:menu-complete"
# bind -x '"\C-g": "fzf-file-widget"'
# bind "'\C-f': ' \C-e\C-u$(__fzf_cd__)\e\C-e\er\C-m'"
# bind "'\C-f': ' \C-e\C-u`__fzf_cd__`\e\C-e\er\C-m'"


# =============================================================================
#  history
# =============================================================================

HISTCONTROL="erasedups:ignoreboth"               # Don't put duplicate lines or lines starting with space in the history
# export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history" # Commands that don't need to get recorded
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
shopt -s cmdhist                                 # Save multi-line commands to the history as one command
shopt -s histappend                              # Append to the history file, don't overwrite it
HISTSIZE=500000                                  # Set history size to a very large number
HISTFILESIZE=100000
PROMPT_COMMAND='history -a'                      # Record each line of history right away instead of at the end of the session
# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
HISTTIMEFORMAT='%F %T '                          # Set history timestamp format

# =============================================================================
#  other
# =============================================================================

# https://github.com/joshfinnie/archey-osx
# Only run archey when we're not using tmux
# if [ "$TERM" != "screen" ] && [ -z "$TMUX" ]; then
#     archey -c
# fi
#


# if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi

# eval "$(thefuck --alias)"
# eval $(thefuck --alias --enable-experimental-instant-mode)

# Use bash-completion, if available
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion ]] && \
    . /usr/local/share/bash-completion/bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
