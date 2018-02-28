export TERM="xterm-256color"

export EDITOR="nvim"

# export PAGER='less'

export MANPAGER="nvim -c 'set ft=man' -"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export GOROOT="$(go env GOROOT)"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home"
export JDK_16="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home"
export JDK_17="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home"
export JDK_18="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home"

# export LUA_CPATH='/Users/clay/.luarocks/lib/lua/5.2/?.so;/usr/local/lib/lua/5.2/?.so;/usr/local/lib/lua/5.2/loadall.so;./?.so'
# export LUA_PATH='/Users/clay/.luarocks/share/lua/5.2/?.lua;/Users/clay/.luarocks/share/lua/5.2/?/init.lua;/usr/local/share/lua/5.2/?.lua;/usr/local/share/lua/5.2/?/init.lua;/usr/local/Cellar/lua/5.2.4_4/libexec/share/lua/5.2/?.lua;/usr/local/lib/lua/5.2/?.lua;/usr/local/lib/lua/5.2/?/init.lua;./?.lua'
#   /Users/clay/.luarocks/share/lua/5.2/?.lua;
#   /Users/clay/.luarocks/share/lua/5.2/?/init.lua;
#   /usr/local/share/lua/5.2/?.lua;
#   /usr/local/share/lua/5.2/?/init.lua;
#   /usr/local/Cellar/lua/5.2.4_4/libexec/share/lua/5.2/?.lua;
#   /usr/local/lib/lua/5.2/?.lua;
#   /usr/local/lib/lua/5.2/?/init.lua;
#   ./?.lua
export LUA_PATH='/Users/clay/.luarocks/share/lua/5.2/?.lua;/Users/clay/.luarocks/share/lua/5.2/?/init.lua'
export LUA_CPATH='/Users/clay/.luarocks/lib/lua/5.2/?.so'

export TODOTXT_CFG_FILE="$DOTFILES/config/todo/todo.config"
export TODO_DIR="$HOME/.todo"
export TODO_FILE="$TODO_DIR/todo.txt"
export DONE_FILE="$TODO_DIR/done.txt"

# export FZF_TMUX=1
# export FZF_COMPLETION_TRIGGER='/'
# export FZF_COMPLETION_TRIGGER='**'
# export FZF_COMPLETION_OPTS='+c -x'
# export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
# export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
# export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='
  --height 40% --reverse --border
  --color=bg:#1e1e1e,fg:#505050,hl:#4ec9b0
  --color=bg+:#303030,fg+:#d4d4d4,hl+:#4ec9b0
  --color=header:#CE9178,border:#608b4e,spinner:#4ec9b0,info:#569cd6
  --color=info:#569cd6,marker:#007acc
  --color=prompt:#608b4e,pointer:#d7ba7d
'

export VIFM="$HOME/.vifm"
export MYVIFMRC="$HOME/.vifm/vifmrc"

export HL_DIR="$HOME/.highlight"
export HIGHLIGHT_DATADIR="$HOME/.highlight"

export TCD_BASH_COMPLETION_DIR="/usr/local/etc/bash_completion.d"
# export ZSH_COMPLETION_DIR="/usr/local/share/zsh/site-functions"
# export FISH_COMPLETION_DIR="/usr/local/share/fish/vendor_completions.d"

export TEMPLE_DIR="$XDG_CONFIG_HOME/temple/templates"


# export RANGER_LOAD_DEFAULT_RC=FALSE
# export W3MIMGDISPLAY_PATH=$HOME/.iterm2/bin/imgcat

# export NODE_REPL_HISTORY=~/.node_history;  # Enable persistent REPL history for `node`.
# export NODE_REPL_HISTORY_SIZE='32768';     # Allow 32³ entries; the default is 1000.
# export NODE_REPL_MODE='sloppy';            # Use sloppy mode by default, matching web browsers.

#  Avoid issues with `gpg` as installed via Homebrew.
#  (https://stackoverflow.com/a/42265848/96656)
# export GPG_TTY=$(tty);

# export PS1=$PS1'$( [ -n $TMUX ] && tmux setenv -g TMUX_PWD_$(tmux display -p "#D" | tr -d %) $PWD)'

