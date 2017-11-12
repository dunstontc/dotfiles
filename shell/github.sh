
# Git aliases
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -v'
alias gca='git commit -a -v'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git pull origin $(git_branch)'
alias glg='git log'
alias gm='git merge'
alias gmm='git merge master'
alias gmv='git mv'
alias gp='git push origin $(git_branch)'
alias grm='git rm'
alias gst='git status'



function komet() {
	git add . && git commit -m $1  # TODO: filter the input here
}

function forrk() {
  git remote add upstream $1;
	git remote -v
}

# Stop tracking an ignored file.
function g4get() {
    git -rm --cached $1;
    git add .
}
