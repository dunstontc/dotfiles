#!/usr/bin/env bash

# =============================================================================
#   <title>
# =============================================================================
#  1) Homebrew
#  ) Git
#  ) Shell + Term
#  ) Symlinks
#  )


# =============================================================================
#   Homebrew
# =============================================================================
# Install xcode command line tools
xcode-select --install

# Install Homebrew (http://brew.sh)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# persisting location for Caskfiles
echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.zshrc

# install brew formulae and cask applications
brew bundle Brewfile


# =============================================================================
#   Command Line
# =============================================================================
# install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Teach terminals how to use true color & escape italics
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/tmux.terminfo
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/tmux-256color.terminfo
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/xterm-256color.terminfo


# =============================================================================
#
# =============================================================================
# Plug Atom
apm install editorconfig

npm install -g cson
npm install -g node
npm install -g npm
npm install -g package-json-to-readme
npm install -g tern
npm install -g yo
