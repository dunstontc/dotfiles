# $DOTFILES/shell/exports.sh

export TERM="xterm-256color"

export NERDFONT="TRUE"

# export EDITOR="code --wait"
if command -v nvim > /dev/null 2>&1; then
  export EDITOR="nvim"
  # export MANPAGER="nvim -c 'set ft=man' -"
elif command -v vim > /dev/null 2>&1; then
  export EDITOR="vim"
else
  export EDITOR="vi"
fi

export PAGER="less"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
# export XDG_CONFIG_HOME="$HOME/.config"
# export XDG_CACHE_HOME="$HOME/.cache"

export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"

# if [[ $OS_NAME == 'darwin' ]]; then
#   GOROOT="$(brew --prefix golang)/libexec";
#   export GOROOT;
# fi

# https://github.com/crystal-lang/crystal/issues/4745#issuecomment-332553374
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

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

if ! command -v fd > /dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='find -not -path "*/.git/**"'
else
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
fi

# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# export FZF_DEFAULT_COMMAND='find -not -path "*/.git/**"'
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

export TMPL_DIR="$XDG_CONFIG_HOME/tmpl/templates"

export CODE_FOLDER="/Users/clay/Library/Application\ Support/Code\ -\ Insiders"

# export RANGER_LOAD_DEFAULT_RC=FALSE
# export W3MIMGDISPLAY_PATH=$HOME/.iterm2/bin/imgcat

#  Avoid issues with `gpg` as installed via Homebrew.
#  (https://stackoverflow.com/a/42265848/96656)
# export GPG_TTY=$(tty);

# export PS1=$PS1'$( [ -n $TMUX ] && tmux setenv -g TMUX_PWD_$(tmux display -p "#D" | tr -d %) $PWD)'

