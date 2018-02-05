#!/usr/bin/env bash

# Install xcode command line tools
xcode-select --install

# Install Homebrew (http://brew.sh)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install brew formulae and cask applications
brew bundle Brewfile


# Teach terminals how to use true color & escape italics
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/tmux.terminfo
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/tmux-256color.terminfo
# tic -o ~/.terminfo ~/.dotfiles/_config/terminfo/xterm-256color.terminfo


