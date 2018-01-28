#  @description Returns the name of the current Git branch.
function get_branch() {
  git branch 2> /dev/null | sed \
    -e '/^[^*]/d' \
    -e 's/* \(.*\)/\1/';
}

newline='
'

if tput setaf 1 &> /dev/null; then
  tput sgr0;                     # reset colors
  bold=$(tput bold);
  reset=$(tput sgr0);
  black=$(tput setaf 234);
  red=$(tput setaf 167);
  green=$(tput setaf 65);
  yellow=$(tput setaf 179);
  blue=$(tput setaf 75);
  magenta=$(tput setaf 176);
  cyan=$(tput setaf 43);
  white=$(tput setaf 188);
  orange=$(tput setaf 173);      # bright yellow
  violet=$(tput setaf 60);       # bright magenta
  light_blue=$(tput setaf 117);  # bright blue
else
  bold='';
  reset="\e[0m";
  black="\e[1;30m";
  red="\e[1;31m";
  green="\e[1;32m";
  yellow="\e[1;33m";
  blue="\e[1;34m";
  light_blue="\e[1;34m"; # bright blue
  magenta="\e[1;35m";
  cyan="\e[1;36m";
  white="\e[1;37m";
  orange="\e[1;33m";     # bright yellow
  violet="\e[1;35m";     # bright magenta
fi;

#  Highlight the user name when logged in as root.
if [[ "${USER}" == "root" ]]; then
  userStyle="${red}";
else
  userStyle="${white}";
fi;

#  Highlight the hostname when connected via SSH.
if [[ "${SSH_TTY}" ]]; then
  hostStyle="${bold}${red}";
else
  hostStyle="${white}";
fi;

#  Add $CHARs to prompt to reflect $SHLVL
if [[ -n "$TMUX" ]]; then
    LVL=$((SHLVL - 1));
else
    LVL=$SHLVL;
fi;

#  Char is `$` normally and `#` for root.
if [[ $EUID -eq 0 ]]; then
  CHAR='#'
else
  CHAR='$'
fi

#  Mix it all up
for (( i = 0; i < $LVL; i++ )); do
  SUFFIX+='$CHAR';
done;


PS1=" \[${blue}\]\w/";
PS1+="\[${magenta}\] $(get_branch)";
PS1+=$newline;
# PS1+="\[${userStyle}\]\u";
# PS1+="\[${white}\]@";
# PS1+="\[${hostStyle}\]\h";
# PS1+="\[${white}\]:";
PS1+="\[${green}\] $SUFFIX \[${reset}\]";
export PS1;


PS2="\[${yellow}\]→ \[${reset}\]";
export PS2;
