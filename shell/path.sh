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
PATH="/usr/local/go/bin:$PATH"
if [[ "$(uname -s)" == "Darwin" ]]; then
  PATH="/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin:$PATH"
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  PATH="/usr/local/opt/go/libexec/bin:$PATH"
  PATH="/usr/local/opt/llvm@5/bin:$PATH"
  PATH="$HOME/Library/Haskell/bin:$PATH"
else
  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
fi

export PATH

