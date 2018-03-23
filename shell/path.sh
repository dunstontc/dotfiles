# export MANPATH="/usr/local/man:$MANPATH"
# export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

PATH="$HOME/bin:$PATH"                                 # Handwritten stuff
PATH=$GOBIN:$PATH                                      # Go
PATH="$HOME/.cargo/bin:$PATH"                          # Rust
PATH="$HOME/.composer/vendor/bin:$PATH"                # PHP
PATH="/usr/local/opt/ncurses/bin:$PATH"                # Newer ncurses
PATH="/usr/local/mysql/bin:$PATH"                      # MySQL
PATH="/usr/local/bin:$PATH"
PATH="node_modules/.bin:vendor/bin:$PATH"              # use local packages before global
PATH="$HOME/.node_global/bin:$PATH"                    # npm installed -g
if command -v brew > /dev/null 2>&1; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH" # GNU Coreutils
else
  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"   # GNU Coreutils
fi
PATH="/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin:$PATH"

export PATH

