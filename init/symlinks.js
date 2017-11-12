module.exports = {
// Atom
  ".atom": [
    "config.cson": {
      "origin"     : "$DOTFILES/editors/atom/config.cson",
      "destination": "$HOME/.atom",
    },
    "snippets.cson": {
      "origin"     : "$DOTFILES/editors/atom/snippets.cson",
      "destination": "$HOME/.atom/snippets.cson",
    },
    "keymaps/": {
      "origin"     : "$DOTFILES/editors/atom/keymaps",
      "destination": "$HOME/.atom/keymaps",
    },
    "styles.less"  : {
      "origin"     : "$DOTFILES/editors/atom/styles.less",
      "destination": "$HOME/.atom/styles.less",
    },
    "menu-config.json": {
      "origin"     : "$DOTFILES/editors/atom/menu-config.json",
      "destination": "$HOME/.atom/menu-config.json",
    },
    "toolbar.cson": {
      "origin"     : "$DOTFILES/editors/atom/toolbar.cson",
      "destination": "$HOME/.atom/toolbar.cson",
    },
  ],

// "VS Code": {
  //   "origin"     : "$DOTFILES/editors/vscode/settings.json",
  //   "destination": "/Users/clay/Library/Application\ Support/Code/User/settings.json",
  // },
  // "VS Code Insiders": {
  //   "origin"     : "$DOTFILES/editors/vscode/settings.json",
  //   "destination": "/Users/clay/Library/Application\ Support/Code\ -\ Insiders/User/settings.json",
  // },

// Spacemacs
  ".spacemacs.d/": {
    "origin"     : "$DOTFILES/editors/emacs/.spacemacs.d",
    "destination": "$HOME/.spacemacs.d",
  },

// Vim
  ".vimrc"  : {
    "origin"     : "$DOTFILES/editors/vim/.vimrc",
    "destination": "~/.vimrc"
  },

// Neovim
  ".nvimrc" : {
    "origin"     : "$DOTFILES/editors/neovim/init.vim",
    "destination": "$HOME/.config/nvim/init.vim"
  },
  "snippetz/": {
    "origin"     : "$DOTFILES/editors/neovim/snippetz",
    "destination": "$HOME/.config/nvim/snippetz",
  },
  "ftdetect/": {
    "origin"     : "$DOTFILES/editors/neovim/ftdetect",
    "destination": "$HOME/.config/nvim/ftdetect",
  },
  "cheatsheet.tsv": {
    "origin"     : "$DOTFILES/editors/neovim/cheatsheet.tsv",
    "destination": "$HOME/.config/nvim/cheatsheet.tsv",
  },
  "cheat40.txt": {
    "origin"     : "$DOTFILES/editors/neovim/cheat40.txt",
    "destination": "$HOME/.config/nvim/cheat40.txt",
  },

// Shell
  ".aliases": {
    "origin"     : "$DOTFILES/shell/.aliases",
    "destination": "~/.oh-my-zsh/custom/aliases.zsh"
  },
  ".path": {
    "origin"     : "$DOTFILES/shell/.path",
    "destination": "~/.oh-my-zsh/custom/path.zsh"
  },
  ".profile": {
    "origin"     : "$DOTFILES/shell/.profile",
    "destination": "~/.profile"
  },
  ".bashrc" : {
    "origin"     : "$DOTFILES/shell/bash/.bashrc",
    "destination": "~/.bashrc"
  },
  ".inputrc" : {
    "origin"     : "$DOTFILES/shell/input/.inputrc",
    "destination": "~/.inputrc"
  },
  ".zshrc"  : {
    "origin"     : "$DOTFILES/shell/zsh/.zshrc",
    "destination": "~/.zshrc"
  },
  "prompt.zsh": {
    "origin"     : "$DOTFILES/shell/zsh/prompt.zsh",
    "destination": "~/.oh-my-zsh/custom/prompt.zsh"
  },

// Ranger
  "rc.conf": {
    "origin"     : "$DOTFILES/config/ranger/rc.conf",
    "destination": "$HOME/.config/ranger/rc.conf",
  },
  "rifle.conf": {
    "origin"     : "$DOTFILES/config/ranger/rifle.conf",
    "destination": "$HOME/.config/ranger/rifle.conf",
  },
  "scope.sh": {
    "origin"     : "$DOTFILES/config/ranger/scope.sh",
    "destination": "$HOME/.config/ranger/scope.sh",
  },

// Tmux
  ".tmux.conf": {
    "origin"     : "$DOTFILES/tmux/.tmux.conf",
    "destination": "$HOME/.tmux.conf",
  },

// Misc
  ".npmrc": {
    "origin"     : "$DOTFILES/misc/.npmrc",
    "destination": "~/.npmrc"
  },
  ".editorconfig": {
    "origin"     : "$DOTFILES/.editorconfig",
    "destination": "$HOME/.editorconfig",
  },
  ".highlight/": {
    "origin"     : "$DOTFILES/misc/highlight",
    "destination": "$HOME/.highlight",
  },
  ".hyper.js": {
    "origin"     : "$DOTFILES/misc/.hyper.js",
    "destination": "$HOME/.hyper.js",
  },
  "": {
    "origin"     : "$DOTFILES/",
    "destination": "$HOME/",
  },

}
