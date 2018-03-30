# export MANPATH="/usr/local/man:$MANPATH"
# export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

PATH="$DOTFILES/bin:$PATH"                             # Handwritten stuff
PATH="$HOME/bin:$PATH"                                 # Handwritten stuff
PATH=$GOBIN:$PATH                                      # Go
PATH="$HOME/.cargo/bin:$PATH"                          # Rust
PATH="$HOME/.composer/vendor/bin:$PATH"                # PHP
PATH="/usr/local/opt/ncurses/bin:$PATH"                # Newer ncurses
PATH="/usr/local/mysql/bin:$PATH"                      # MySQL
PATH="/usr/local/bin:$PATH"
PATH="node_modules/.bin:vendor/bin:$PATH"              # use local packages before global
PATH="$HOME/.node_global/bin:$PATH"                    # npm installed -g
if [[ "$(uname -a)" == "Darwin" ]]; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH" # GNU Coreutils
else
  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"   # GNU Coreutils
  PATH="/usr/local/go/bin:$PATH"
fi
PATH="/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin:$PATH"

export PATH

