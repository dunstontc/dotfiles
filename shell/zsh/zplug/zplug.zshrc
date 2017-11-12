HISTSIZE=5000
SAVEHIST=5000
export HISTFILE=~/.config/shell/.zsh_history

export LANG=en_US.UTF-8
export DOTFILES=$HOME/.dotfiles
export SHELL=/usr/local/bin/zsh

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

# Let zplug plug zplug
zplug 'zplug/zplug',    hook-build:'zplug --self-manage'
zplug "lib/completion", from:oh-my-zsh
zplug "plugins/git",    from:oh-my-zsh
zplug "djui/alias-tips"
zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-history-substring-search"
zplug "zdharma/fast-syntax-highlighting"
zplug "zdharma/history-search-multi-word"
# zplug "zsh-users/zsh-syntax-highlighting", defer:2
# zplug "b4b4r07/enhancd", at:v1
zplug "b4b4r07/enhancd", use:init.sh


# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install zplugins? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

# source plugins and add commands to the PATH
zplug load

# zplug check returns true if the given repository exists
if zplug check b4b4r07/enhancd; then
    # setting if enhancd is available
    # export ENHANCD_FILTER=fzf-tmux
fi
