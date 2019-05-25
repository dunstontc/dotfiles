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
# @param url The owner of the repo to add as an upstream remote.
upstream() {
  cur_repo=$(basename -s .git $(git config --get remote.origin.url));
  git remote add upstream "https://github.com/$1/$cur_repo.git";
  git remote -v;
}

nman() {
  nvim -c 'set filetype=man $1'
}

# @description Copy the contents of a file to your clipboard
yank() {
  cat "$1" | pbcopy;
}

# @description Copy the contents of your clipboard to a file
put() {
  pbpaste > "$1";
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

# @description Put Adobe processes to sleep.
noadobe() {
  ps aux | grep -v 'grep' | grep -i 'adobe' | awk '{print $2}' | xargs kill -9
}
