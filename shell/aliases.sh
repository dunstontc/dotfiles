# Be careful

# Thanks brew
# alias python="python2.7"
# alias python3=""

alias mr='rmtrash'
alias mrd='rmdirtrash'
alias cp='cp -iv'
alias mv='mv -iv'

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'

# Directories
alias l='ls -lAh --group-directories-first --color=always'
alias ll="exa -al --git --group-directories-first"

# Abbreviations
alias c="clear"
alias d="docker"
alias e="exit"
alias g="git"
alias j="jump"
alias py2="python2"
alias py3="python3"
alias rgr="ranger"
alias rss="terminews"
alias task="todo.sh"
alias todo="todo.sh"
alias tpd="topydo"
alias v="vim"
# alias vi="nvim"
alias n="nvim"

# todo.txt
alias tls="todo.sh ls"

# NPM
alias npi="npm install"
alias npmlg="ls /Users/clay/.node_global/bin" # Much faster & gives Process Names as opposed to Package Names
alias npmD="npm i -D "
alias npo="npm outdated"
alias npr="npm run"
alias npp="npm init -y"

# pip
alias pipls="pip list --format=columns"

# Shortcuts
alias keyring="nvim -c 'VimFiler -explorer ~/Projects/GitHub/KeyRing/keys'"
alias dots='cd $DOTFILES'
alias nv="cd ~/.config/nvim"
alias pj="cd ~/Projects"
alias dl="cd ~/Downloads"

# Reload zsh
alias zr="source ~/.zshrc"
alias ,z="\$EDITOR ~/.zshrc"

# Reload bash
alias br="source ~/.bashrc"
alias ,b="\$EDITOR ~/.bashrc"

# Configure Neovim
alias ,v="\$EDITOR ~/.vimrc"
alias ,n="\$EDITOR ~/.config/nvim/init.vim"


# Configure tmux
alias remux="\$EDITOR \$DOTFILES/config/.tmux.conf"

# Print each PATH entry on a separate line
alias list_path='echo -e ${PATH//:/\\n}'
alias list_fpath='echo -e ${FPATH//:/\\n}'

# Show/hide hidden files in Finder
alias fshow="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias fhide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Copy cwd to the clipboard
alias hdp="pwd | pbcopy"

# Get our IP
alias ips="ifconfig -a | perl -nle\"/(\d+\.\d+\.\d+\.\d+)/ && print $1\""

# Get gpg keys
alias gitkeys="gpg --list-secret-keys --keyid-format LONG"

# Git:
alias gitmsg="curl http://whatthecommit.com/index.txt"
alias gcom="git checkout master"
alias gcod="git checkout dev"
alias gp="git push"
alias gs="git status -s"
alias gb="git branch -a"

alias repoz="find \$(pwd) -type d -exec test -e '{}/.git' ';' -print -prune"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias sleepchrome="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Not xterm-italic
# alias ssh="TERM=xterm-256color ssh"

alias treee="
tree \
--dirsfirst \
-I 'node_modules|bower_components|cache|ignore|undo|dein'\
"

# alias fag="ag --nobreak --nonumbers --noheading . | fzf"

alias ,="\$EDITOR \$(find \$DOTFILES -name \"*\" -not -path \"*/.git/**\" -not -path \"*/plugged/**\" -not -path \"*/ignore/**\" | fzf)"

alias repos="cd \$(find \$(pwd) -type d -exec test -e '{}/.git' ';' -print -prune | fzf)"


# alias ccat='ccat -G String="yellow" -G Keyword="blue" -G Comment="darkgray" -G Type="teal" -G Literal="blue" -G Punctuation="lightgray" -G Plaintext="lightgray" -G Tag="darkgray" -G HTMLTag="darkgray" -G HTMLAttrName="blue" -G HTMLAttrValue="yellow" -G Decimal="green"'
alias kat='chroma -s paraiso-dark'
