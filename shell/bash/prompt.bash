#  @description Returns the name of the current Git branch.
get_branch() {
  git branch 2> /dev/null | sed \
    -e '/^[^*]/d' \
    -e 's/* \(.*\)/\1/';
}

newline='
'

if tput setaf 1 &> /dev/null; then
  tput sgr0; # reset colors
  bold=$(tput bold);
  reset=$(tput sgr0);
  black=$(tput setaf 234);
  bright_black=$(tput setaf 236); # gray
  red=$(tput setaf 167);
  bright_red=$(tput setaf 203);
  green=$(tput setaf 65);
  bright_green=$(tput setaf 65);
  yellow=$(tput setaf 173);
  bright_yellow=$(tput setaf 179); # orange
  blue=$(tput setaf 75);
  bright_blue=$(tput setaf 117);
  magenta=$(tput setaf 176);
  bright_magenta=$(tput setaf 60);
  cyan=$(tput setaf 43);
  bright_cyan=$(tput setaf 43);
  white=$(tput setaf 8);
  bright_white=$(tput setaf 188);
else
  bold='';
  reset="\e[0m";
  black="\e[0;30m";
  bright_black="\e[1;30m";
  red="\e[0;31m";
  bright_red="\e[1;31m";
  green="\e[0;32m";
  bright_green="\e[1;32m";
  yellow="\e[0;33m"; # Orange
  bright_yellow="\e[1;33m";
  blue="\e[0;34m";
  bright_blue="\e[1;34m";
  magenta="\e[0;35m";
  bright_magenta="\e[1;35m";
  cyan="\e[0;36m";
  bright_cyan="\e[1;36m";
  white="\e[0;37m";
  bright_white="\e[1;37m";
fi;

#  Highlight the user name when logged in as root.
if [[ "${USER}" == "root" ]]; then
  userStyle="${red}";
else
  userStyle="${green}";
fi;

#  Highlight the hostname when connected via SSH.
if [[ "${SSH_TTY}" ]]; then
  hostStyle="${bold}${red}";
else
  hostStyle="${green}";
fi;

#  Add $CHARs to prompt to reflect $SHLVL
# if [[ -n "$TMUX" ]]; then
#     LVL=$((SHLVL - 1));
# else
#     LVL=$SHLVL;
# fi;

#  Char is `$` normally and `#` for root.
if [[ $EUID -eq 0 ]]; then
  CHAR='#'
else
  CHAR='$'
fi

#  Mix it all up
# for (( i = 0; i < $LVL; i++ )); do
  # SUFFIX+='$';
# done;


PS1=" \[${blue}\]\w/";
PS1+="\[${magenta}\] $(get_branch)";
PS1+=$newline;
PS1+=" ";
PS1+="\[${userStyle}\]\u";
PS1+="\[${bright_white}\]@";
PS1+="\[${hostStyle}\]\h";
# PS1+="\[${bright_white}\]:";
PS1+="\[${bright_white}\]$CHAR \[${reset}\]";
export PS1;


PS2="\[${yellow}\]→ \[${reset}\]";
export PS2;
