# alias ,="\$EDITOR \$(find \$DOTFILES -name \"*\" -not -path \"*/.git/**\" -not -path \"*/plugged/**\" -not -path \"*/ignore/**\" | fzf)"
fzf_open() {
  local target_file files

  ignored="-not -path \"$1\""
  files="$(find $1 -name * -not -path '*/.git/**' | fzf)"

  # TODO: if $target_file isn't empty
  "$EDITOR $target_file"
}
