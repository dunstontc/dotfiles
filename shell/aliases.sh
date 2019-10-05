# Be careful

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
alias m='mmake'
alias m2p="md2pdf"
alias rgr="ranger"
alias td="todo.sh"
alias todo="todo.sh"
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
alias pjs="cd ~/Projects"
alias dl="cd ~/Downloads"
alias doc="cd ~/Documents"

# Reload zsh
alias zr="source ~/.zshrc"
alias ,z='$EDITOR ~/.zshrc'

# Reload bash
alias br="source ~/.bashrc"
alias ,b='$EDITOR ~/.bashrc'

# Configure Neovim
alias ,v='$EDITOR ~/.vimrc'
alias ,n='$EDITOR ~/.config/nvim/init.vim'

# Configure tmux
alias remux='$EDITOR $DOTFILES/config/.tmux.conf'

# Edit a file in $DOTFILES
dotfile() {
  file=$(find $DOTFILES -name "*" -not -path "*/.git/**" -not -path "*/plugged/**" -not -path "*/ignore/**" | fzf)
  [ ! -z "$file" ] && $EDITOR $file
}
alias ,='dotfile'

# Print each PATH entry on a separate line
alias listpath='echo -e ${PATH//:/\\n}'
alias listfpath='echo -e ${FPATH//:/\\n}'

# Show/hide hidden files in Finder
alias fshow="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias fhide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Copy cwd to the clipboard
alias hdp='echo -n $(pwd) | pbcopy'
alias prev="history -n | tail -n1 | pbcopy"

# Get our IP
alias ipis="ifconfig -a | perl -nle\"/(\d+\.\d+\.\d+\.\d+)/ && print $1\""

# Get gpg keys
alias gitkeys='gpg --list-secret-keys --keyid-format LONG'

# Git:
alias gitmsg="curl http://whatthecommit.com/index.txt"
alias gcom="git checkout master"
alias gcod="git checkout dev"
alias gp="git push"
alias gs="git status -s"
alias gb="git branch -a"

alias tgit='GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa_tcd" git push -u origin master'

# Search recursively for git repositories and choose one to cd to.
alias repos="cd \$(find \$(pwd) -type d -exec test -e '{}/.git' ';' -print -prune | fzf)"

# Not xterm-italic
# alias ssh="TERM=xterm-256color ssh"

alias portainer="docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer"

alias treee="
tree \
--dirsfirst \
-I 'node_modules|bower_components|cache|ignore|undo|dein'\
"

alias frep="ag --nobreak --nonumbers --noheading . | fzf"

alias kat='chroma -s paraiso-dark'

# github.com/tcd/prjr
alias pj="prjr"
alias pjtb="prjr ls --table"
