# export MANPATH="/usr/local/man:$MANPATH"
# export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

PATH="$DOTFILES/bin:$PATH"                             # Handwritten stuff
PATH="$HOME/bin:$PATH"                                 # Handwritten stuff
PATH=$GOBIN:$PATH                                      # Go
PATH="$HOME/.cargo/bin:$PATH"                          # Rust
PATH="$HOME/.composer/vendor/bin:$PATH"                # PHP
PATH="/usr/local/mysql/bin:$PATH"                      # MySQL
PATH="/usr/local/bin:$PATH"                            # user bin before system bin
PATH="node_modules/.bin:vendor/bin:$PATH"              # use local packages before global
PATH="$HOME/.node_global/bin:$PATH"                    # npm installed -g
PATH="/usr/local/go/bin:$PATH"                         # Go
if [[ "$(uname -s)" == "Darwin" ]]; then
  PATH="/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin:$PATH"
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  PATH="/usr/local/opt/ncurses/bin:$PATH"              # Newer ncurses
  PATH="/usr/local/opt/go/libexec/bin:$PATH"           # Go via Brew
  PATH="/usr/local/opt/llvm@5/bin:$PATH"               # Clang
  PATH="$HOME/Library/Haskell/bin:$PATH"               # Haskell
else
  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" # GNU coreutils
  PATH="$HOME/.rbenv/bin:$PATH"                        # https://github.com/rbenv/rbenv
  PATH="$HOME/.pyenv/bin:$PATH"                        # Python
fi
PATH=".:$PATH"

export PATH

