  # https://atom.io/packages/flex-tool-bar
  #  Opening a new Window:
  # atom.open({pathsToOpen: [this.pack.path]})
  # atom.workspace.open(path)
module.exports =
[
  {
    type: "spacer"
    style:
      border: "transparent"
      height: "11px"
  }
  # {
  #   type: "button"
  #   dependency: "tree-view"
  #   callback: "tree-view:toggle"
  #   icon: "sitemap"
  #   iconset: "fa"
  # }
  # {
  #   type: "spacer"
  #   style:
  #     background: "#69C8FA"
  #     height: "1px"
  # }
  {
    type: "button"
    callback: "flex-tool-bar:edit-config-file"
    icon: "three-bars"
    # tooltip: "Edit Tool Bar"
    style:
      color: "#00DEAF"
  }
  # {
  #   type: "button"
  #   callback: 'clay:open-dot-atom'
  #   icon: "cogs"
  #   iconset: "fa"
  #   style:
  #     color: "#00DEAF"
  # }
  {
    type: "button"
    callback: "application:open-your-stylesheet"
    icon: "css3"
    iconset: "fa"
    style:
      color: "#00DEAF"
  }
  {
    type: "button"
    callback: "settings-view:change-themes"
    icon: "paintcan"
    # style:
    #   color: "#00DEAF"
  }
  {
    type: "button"
    callback: "settings-view:show-keybindings"
    icon: "keyboard"
    # style:
    #   color: "#00DEAF"
  }
  {
    type: "spacer"
    style:
      background: "#69C8FA"
      height: "1px"
  }
  # {
  #   type: "button"
  #   icon: "markdown"
  #   callback: "markdown-preview:toggle"
  #   disable: "!markdown"
  # }
  {
    type: "button"
    # tooltip: "Open Folder"
    callback: "application:open-folder"
    icon: "folder"
    iconset: "ion"
    style:
      color: "#69C8FA"
  }
  {
    type: "button"
    # tooltip: "List projects"
    dependency: "project-manager"
    callback: "project-manager:list-projects"
    icon: "file-submodule"
    style:
      color: "#2480F3"
  }
  # {
  #   type: "button"
  #   # tooltip: "Git Projects"
  #   # dependency: "git-projects"
  #   # callback: "git-projects:toggle"
  #   callback: "github-toggle-git-tab"
  #   # icon: "octoface"
  #   icon: "mark-github"
  #   # iconset: "fa"
  # }
  {
    type: "button"
    # dependency: "open-html-in-browser"
    # callback: "open-html-in-browser:open"
    dependency: "atom-live-server"
    callback: "atom-live-server:start-9000"
    icon: "social-chrome"
    iconset: "ion"
    style:
      color: "#FFFF99"
  }
  {
    type: "button"
    dependency: "atom-live-server"
    callback: "atom-live-server:stopServer"
    icon: "social-chrome"
    iconset: "ion"
    style:
      color: "#cd5c5c"
  }
  # {
  #   type: "button"
  #   dependency: "browser-plus"
  #   callback: "browser-plus:open"
  #   icon: "browser"
  # }
  {
    type: "spacer"
    style:
      background: "#69C8FA"
      height: "1.1px"
  }
  # {
  #   type: "button"
  #   # tooltip: "Fold all"
  #   callback: "editor:fold-all"
  #   icon: "arrow-return-left"
  #   iconset: "ion"
  # }
  # {
  #   type: "button"
  #   # tooltip: "Unfold all"
  #   callback: "editor:unfold-all"
  #   icon: "arrow-return-right"
  #   iconset: "ion"
  # }
  {
    type: "button"
    dependency: "bookmarks"
    callback: "bookmarks:view-all"
    icon: "bookmark"
  }
  {
    type: "button"
    dependency: "todo-show"
    callback: "todo-show:find-in-workspace"
    icon: "checklist"
    style:
      color: "#00DEAF"
  }
  {
    type: "button"
    callback: "window:toggle-invisibles"
    icon: "ios-eye"
    iconset: "ion"
  }
  # {
  #   type: "spacer"
  #   style:
  #     background: "#69C8FA"
  #     height: "1px"
  # }
]
