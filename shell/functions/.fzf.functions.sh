#
# @file FZF Functions
# @brief Small utility functions using fzf.

# @description Figlet font selector -> copy to clipboard.
#
# @arg $@ string Word or words to make into ascii art.
fgl() {
  [ $# -eq 0 ] && return
  cd /usr/local/Cellar/figlet/*/share/figlet/fonts
  local font=$(ls *.flf | sort | fzf --no-multi --reverse --preview "figlet -f {} $@") &&
  figlet -f "$font" "$@" | pbcopy
}

# @description fe - fuzzy edit.
#
# @arg $1 string Name of the file to edit.
fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-nvim} "${files[@]}"
}

# @description vf - fuzzy open with vim from anywhere
#
# @example
#   vf word1 word2 ... (even part of a file name)
vf() {
  local files

  files=(${(f)"$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1 -m)"})

  if [[ -n $files ]]
  then
     nvim -- $files
     print -l $files[1]
  fi
}


# @description fuzzy grep - open via ag
#
vg() {
  local file

  file="$(ag --nobreak --noheading $@ | fzf -0 -1 | awk -F: '{print $1 " +" $2}')"

  if [[ -n $file ]]
  then
     nvim $file
  fi
}


# @description Search command history with FZF.
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}


# @description Create new tmux session, or switch to existing one. Works from within tmux too. (@bag-man)
#
# @example
#   tm # will allow you to select your tmux session via fzf.
#
#   tm irc # will attach to the irc session (if it exists), else it will create it.
#
# @arg $1 string Session name
tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}

# @description fzkill - kill process
fzkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

# vim:filetype=sh:foldmethod=indent:tabstop=4:shiftwidth=4:softtabstop=0:noexpandtab:
