GIT_BRANCH_ICON=""
GIT_UNTRACKED_ICON="?"
GIT_ADDED_ICON="+"  # FIXME: staged files
GIT_MODIFIED_ICON="!"
# GIT_RENAMED_ICON="»"
GIT_DELETED_ICON="✘"
GIT_STASHED_ICON="$"
GIT_UNMERGED_ICON="="
GIT_AHEAD_ICON="⇡"
GIT_BEHIND_ICON="⇣"
GIT_DIVERGED_ICON="⇕"

local magenta="%F{176}"


# ahead_behind() {
#   curr_branch=$(git rev-parse --abbrev-ref HEAD)
#   curr_remote=$(git config branch.$curr_branch.remote)
#   curr_merge_branch=$(git config branch.$curr_branch.merge | cut -d / -f 3)
#   git rev-list --left-right --count $curr_branch...$curr_remote/$curr_merge_branch | tr -s '\t' '|'
# }

prompt_git_status() {
  local GIT_STATUS_UNTRACKED=""
  local GIT_STATUS_ADDED=""
  local GIT_STATUS_MODIFIED=""
  # local GIT_STATUS_RENAMED=""
  local GIT_STATUS_DELETED=""
  local GIT_STATUS_STASHED=""
  local GIT_STATUS_UNMERGED=""
  local GIT_STATUS_AHEAD=""
  local GIT_STATUS_BEHIND=""
  local GIT_STATUS_DIVERGED=""
  $(command git rev-parse --is-inside-work-tree &>/dev/null) || return

  local brunch=$(command git symbolic-ref HEAD | cut -d'/' -f3)
  local index=$(command git status --porcelain -b -s 2> /dev/null)
  local git_status=""

  # Check for untracked files
  if $(echo "$index" | grep -E '^\?\? ' &> /dev/null); then
    GIT_STATUS_UNTRACKED="$GIT_UNTRACKED_ICON";
  fi

  # Check for staged files
  if $(echo "$index" | command grep '^A[ MDAU] ' &> /dev/null); then
    GIT_STATUS_ADDED="$GIT_ADDED_ICON";
  elif $(echo "$index" | command grep '^UA' &> /dev/null); then
    GIT_STATUS_ADDED="$GIT_ADDED_ICON";
  fi

  # if $(command git diff --name-only --cached &> /dev/null) == ""; then
  # if [ -z $(command git diff --name-only --cached &> /dev/null) ]; then
  #   GIT_STATUS_ADDED="";
  # else
  #   GIT_STATUS_ADDED="$GIT_ADDED_ICON";
  # fi

  # Check for modified files
  if $(echo "$index" | command grep '^M[ MD] ' &> /dev/null); then
    GIT_STATUS_MODIFIED="$GIT_MODIFIED_ICON"
  elif $(echo "$index" | command grep '^[ MARC]M ' &> /dev/null); then
    GIT_STATUS_MODIFIED="$GIT_MODIFIED_ICON"
  fi

  # Check for renamed files
  # if $(echo "$index" | command grep '^R[ MD] ' &> /dev/null); then
  #   GIT_STATUS_RENAMED="$GIT_RENAMED_ICON";
  # fi

  # Check for deleted files
  if $(echo "$index" | command grep '^[MARCDU ]D ' &> /dev/null); then
    GIT_STATUS_DELETED="$GIT_DELETED_ICON";
  elif $(echo "$index" | command grep '^D[ UM] ' &> /dev/null); then
    GIT_STATUS_DELETED="$GIT_DELETED_ICON";
  fi

  # Check for stashes
  if $(command git rev-parse --verify refs/stash >/dev/null 2>&1); then
    GIT_STATUS_STASHED="$GIT_STASHED_ICON";
  fi

  # Check for unmerged files
  if $(echo "$index" | command grep '^U[UDA] ' &> /dev/null); then
    GIT_STATUS_UNMERGED="$GIT_UNMERGED_ICON";
  elif $(echo "$index" | command grep '^AA ' &> /dev/null); then
    GIT_STATUS_UNMERGED="$GIT_UNMERGED_ICON";
  elif $(echo "$index" | command grep '^DD ' &> /dev/null); then
    GIT_STATUS_UNMERGED="$GIT_UNMERGED_ICON";
  elif $(echo "$index" | command grep '^[DA]U ' &> /dev/null); then
    GIT_STATUS_UNMERGED="$GIT_UNMERGED_ICON";
  fi

  # Check whether branch is ahead
  local is_ahead=false
  if $(echo "$index" | command grep '^## [^ ]\+ .*ahead' &> /dev/null); then
    is_ahead=true
  fi

  # Check whether branch is behind
  local is_behind=false
  if $(echo "$index" | command grep '^## [^ ]\+ .*behind' &> /dev/null); then
    is_behind=true
  fi

  # Check wheather branch has diverged
  if [[ "$is_ahead" == true && "$is_behind" == true ]]; then
    GIT_STATUS_DIVERGED="$GIT_DIVERGED_ICON"
  else
    [[ "$is_ahead" == true ]] && GIT_STATUS_AHEAD="$GIT_AHEAD_ICON ";
    [[ "$is_behind" == true ]] && GIT_STATUS_BEHIND="$GIT_BEHIND_ICON ";
    # GIT_STATUS_ADDED="";
  fi

  git_status+="$GIT_STATUS_DIVERGED";
  git_status+="$GIT_STATUS_UNMERGED";

  git_status+="$GIT_STATUS_AHEAD";
  git_status+="$GIT_STATUS_BEHIND";

  git_status+="$GIT_STATUS_ADDED";

  git_status+="$GIT_STATUS_MODIFIED";
  git_status+="$GIT_STATUS_UNTRACKED";
  git_status+="$GIT_STATUS_DELETED";
  # git_status+="$GIT_STATUS_RENAMED";

  git_status+="$GIT_STATUS_STASHED";


  # if [[ -n $git_status ]]; then
  #   echo -n "%F{1}$git_status %f";
  # fi
  echo -n "%F{176}$GIT_BRANCH_ICON $brunch "
  echo -n "%F{1}$git_status %f";
}
