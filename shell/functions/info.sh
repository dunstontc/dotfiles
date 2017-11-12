#!/bin/bash
set -euo pipefail
IFS=$'\n\t'        # Internal Field Separator
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
# -e          = Immediately exit if any command has a non-zero exit status.
# -u          = A reference to any variable you haven't previously defined
#               with the exceptions of $* and $@
#               is an error, and causes the program to immediately exit.
# -o pipefail = If any command in a pipeline fails,
#               that return code will be used as the return code of the whole pipeline.



bash --version
# Version, Platform, long License
git --version
# Version
lua -v
# Version & Copyright
mongo --version
# 9 lines of info
mysql --version
# Version, Platform, License
# mutt -v
#
neomutt -v
# LOOOONG
node --version
# Version
npm --version
# box drawn if update available
nvim --version
# Looong output
python --version
python3 --version | python3 -V
# Version
pip2 --version
pip3 --version
# Version, Path, Associated Py Version
ranger --version
# 4 lines of info
ruby --version
# Version, Date, & Platform
tmux -V
# Version
vim --version
# Lots of info
zsh --version
# Version & Platform
