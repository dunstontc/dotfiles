# ZSH #

## Plugins: ##
- [rupa/z](https://github.com/rupa/z)
  - Fuzzy recent directory cd
- [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
  - Fish shell like syntax highlighting for Zsh.
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
  - Fish-like autosuggestions for zsh.
- [zsh-users/zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
  - ZSH port of Fish history search (up arrow).

## Completions: ##
- [zsh-users/zsh-completions](https://github.com/zsh-users/zsh-completions)


```sh
mkdir -p ~/.zsh/completion

curl -L https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker > ~/.zsh/completion/_docker

curl -L https://raw.githubusercontent.com/docker/compose/1.19.0/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose
```

