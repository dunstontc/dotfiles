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

# Directories
alias ll='ls -lAh --group-directories-first --color=always'

# Abbreviations
alias cls="clear"
alias d="docker"
alias dk="docker-compose"
alias e="exit"
alias g="git"
alias j="jump"
alias rgr="ranger"
alias v="vim"
alias vi="vim"
alias n="nvim"

# todo.txt
alias tls="todo.sh ls"

# NPM
alias npi="npm install"
alias npmlg="ls /Users/clay/.node_global/bin" # Much faster & gives Process Names as opposed to Package Names
alias npr="npm run"

# pip
alias pipls="pip list --format=columns"

# Shortcuts
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
alias listpath='echo -e ${PATH//:/\\n}'
alias listfpath='echo -e ${FPATH//:/\\n}'

# Show/hide hidden files in Finder
alias fshow="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias fhide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Copy cwd to the clipboard
alias hdp="pwd | pbcopy"

# Get our IP
alias ipis="ifconfig -a | perl -nle\"/(\d+\.\d+\.\d+\.\d+)/ && print $1\""

# Get gpg keys
alias gitkeys="gpg --list-secret-keys --keyid-format LONG"

# Git:
alias gitmsg="curl http://whatthecommit.com/index.txt"
alias gcom="git checkout master"
alias gcod="git checkout dev"
alias gp="git push"
alias gs="git status -s"
alias gb="git branch -a"

alias tgit='GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa_tcd" git push -u origin master'

alias repoz="find \$(pwd) -type d -exec test -e '{}/.git' ';' -print -prune"

# Not xterm-italic
# alias ssh="TERM=xterm-256color ssh"

alias portainer="docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer"

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
alias m='mmake'
