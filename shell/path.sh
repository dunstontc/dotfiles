# # Directories to be prepended to $PATH
# declare -a dirs_to_prepend
# dirs_to_prepend=(
#   "$HOME/bin"                                  # Handwritten stuff
#   $GOBIN                                       # Go
#   "$HOME/.cargo/bin"                           # Rust
#   "$HOME/.composer/vendor/bin"                 # PHP
#   "/usr/local/opt/ncurses/bin"                 # Newer ncurses
#   "/usr/local/mysql/bin"                       # MySQL
#   "/usr/local/bin"
#   "$(brew --prefix coreutils)/libexec/gnubin"  # GNU Coreutils
#   "node_modules/.bin:vendor/bin"               # use local packages before global
#   "$HOME/.node_global/bin"                     # npm installed -g
#   "/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin"
# )

# Explicitly configured $PATH
# PATH=$HOME/bin:/usr/local/bin:$PATH

# for dir in ${dirs_to_prepend[@]}
# do
#   if [ -d ${dir} ];
#   then
#     # If these directories exist, then prepend them to existing PATH
#     PATH="${dir}:$PATH"
#   fi
# done
#
# unset dirs_to_prepend
#
# export PATH

# export MANPATH="/usr/local/man:$MANPATH"
# export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"


# For compilers to find this software you may need to set:
#     LDFLAGS:  -L/usr/local/opt/ncurses/lib
#     CPPFLAGS: -I/usr/local/opt/ncurses/include
# For pkg-config to find this software you may need to set:
#     PKG_CONFIG_PATH: /usr/local/opt/ncurses/lib/pkgconfig

PATH="$HOME/bin:$PATH"                                 # Handwritten stuff
PATH=$GOBIN:$PATH                                      # Go
PATH="$HOME/.cargo/bin:$PATH"                          # Rust
PATH="$HOME/.composer/vendor/bin:$PATH"                # PHP
PATH="/usr/local/opt/ncurses/bin:$PATH"                # Newer ncurses
PATH="/usr/local/mysql/bin:$PATH"                      # MySQL
PATH="/usr/local/bin:$PATH"
# PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH" # GNU Coreutils
PATH="/usr/local/coreutils/libexec/gnubin:$PATH" # GNU Coreutils

PATH="node_modules/.bin:vendor/bin:$PATH"              # use local packages before global
PATH="$HOME/.node_global/bin:$PATH"                    # npm installed -g
PATH="/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin:$PATH"

