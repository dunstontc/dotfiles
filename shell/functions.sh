# @description Create a directory(s) and cd to it.
#
# @param $1 string Folder or folders to make.
take() {
  mkdir -p "$1"
  cd "$1" || return
}

# @description Source a file if it exists.
include () {
  [[ -f "$1" ]] && source "$1"
}

# @description Change working directory to the top-most Finder window location.
# 'CD-Finder'
#
# @param $1 Directory to change into.
cdf() {
  cd "$(osascript -e 'tell app \"Finder\" to POSIX path of (insertion location as alias)')" || return
}

# @description Define an alias.
watdo() {
  alias | grep "$1"
}

# @description Walk & Talk
#
# @param $1 Directory to change into.
cdd() {
  cd "$1" && ls -a
}

# @description Add all changes and commit with a message.
#
# @param $1 string String for commit message.
komet() {
  git add . && git commit -m "$1" # TODO: filter the input here
}

# @description Add upstream remote to a Git repository. (Usually used after forking).
#
# @param url The address of the repo to add.
forrk() {
  git remote add upstream "$1"
  git remote -v
}

ahead_behind() {
  curr_branch=$(git rev-parse --abbrev-ref HEAD)
  curr_remote=$(git config branch.$curr_branch.remote)
  curr_merge_branch=$(git config branch.$curr_branch.merge | cut -d / -f 3)
  git rev-list --left-right --count $curr_branch...$curr_remote/$curr_merge_branch | tr -s '\t' '|'
}

nman() {
  nvim -c 'set filetype=man $1'
}

# @description Copy the contents of a file to your clipboard
yank() {
  cat "$1" | pbcopy
}

# @description Returns an escaped string wrapped in single quotes. Hopefully.
#
# @param string The string to escape. (hopefully)
#
# @see https://github.com/scop/bash-completion/blob/233421469b12d3b60e7595822cc9166016abe384/bash_completion#L138
quote() {
  local quoted=${1//\'/\'\\\'\'}
  printf "'%s'" "$quoted"
}

# This is used for escaping command lines for remote execution.
# From StackOverflow: https://goo.gl/sTKReB
# Using this approach: "Put the whole string in single quotes. This works for all chars except
# single quote itself. To escape the single quote, close the quoting before it, insert the single
# quote, and re-open the quoting."
#
escape_cmd_line() {
  escape_cmd_line_rv=""
  for arg in "$@"; do
    escape_cmd_line_rv+=" '"${arg/\'/\'\\\'\'}"'"
    # This should be equivalent to the sed command below.  The quadruple backslash encodes one
    # backslash in the replacement string. We don't need that in the pure-bash implementation above.
    # sed -e "s/'/'\\\\''/g; 1s/^/'/; \$s/\$/'/"
  done
  # Remove the leading space if necessary.
  escape_cmd_line_rv=${escape_cmd_line_rv# }
}

# @description Prints an array of colors to test for True Color support.
#
# @noargs
kuler() {
  awk 'BEGIN{
    s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
    for (colnum = 0; colnum<77; colnum++) {
      r = 255-(colnum*255/76);
      g = (colnum*510/76);
      b = (colnum*255/76);
      if (g>255) g = 510-g;
      printf "\033[48;2;%d;%d;%dm", r,g,b;
      printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
      printf "%s\033[0m", substr(s,colnum+1,1);
    }
    printf "\n";
  }'
}

# @description List escape codes for FN keys.
#
# @noargs
fn_codes() {
  for x in {1..30}; do
    echo -n "F$x "
    tput kf$x | cat -A
    echo
  done
}

# armour() {
#   gpg --armor --export $1
# }

# @description Determine size of a file or total size of a directory.
#
# @noargs
siz() {
  if du -b /dev/null >/dev/null 2>&1; then
    local arg=-sbh
  else
    local arg=-sh
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@"
  else
    du $arg .[^.]* ./*
  fi
}

# @description Should probably be an alias.
hdi() {
  howdoi "$*" -c -n 5
}

# @description Colorize --help output.
help() {
  "$1" --help | ccat
}

# @description Wrap ghq() to avoid nesting shells.
ghq() {
  if [ "$1" = look -a -n "$2" ]; then
    cd $(command ghq list -e -p $2)
    return
  fi

  command ghq "$@"
}

# @description Get the most used words in an input.
wordfrequency() {
  awk '
  BEGIN { FS="[^a-zA-Z]+" } {
      for (i=1; i<=NF; i++) {
          word = tolower($i)
          words[word]++
      }
  }
  END {
      for (w in words)
          printf("%3d %s\n", words[w], w)
  } ' | sort -rn
}

# =============================================================================

# # `n` with no arguments opens the current directory in Vim, otherwise opens the given location
# n() {
#   if [ $# -eq 0 ]; then
#     nvim .;
#   else
#     nvim "$@";
#   fi;
# }

# # `o` with no arguments opens the current directory, otherwise opens the given location
# o() {
#   if [ $# -eq 0 ]; then
#     open .;
#   else
#     open "$@";
#   fi;
# }
