function peek() {
    pygmentize -f terminal256 -O style=native $1 | less -N
}

hl(){
    highlight -O ansi $1 | less -r
}
