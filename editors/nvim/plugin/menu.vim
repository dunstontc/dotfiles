" =============================================================================
"   quickmenu.vim
" =============================================================================
let g:quickmenu_options = 'HL'
let g:quickmenu_ft_blacklist= ['help', 'netrw', 'nerdtree', 'cheat40']
let g:quickmenu_special_keys = 0
let g:quickmenu_padding_left = 3
let g:quickmenu_padding_right = 3
" let g:quickmenu_max_width = 40   " TODO: add min_width

" call g:quickmenu#append("Window manipulation" , ':call quickmenu#bottom(2)'   , 'New tab / split / resize' , '' , 0 , 'w')



"     
" =============================================================================
"  Quickmenu-menus-menu
" =============================================================================
call g:quickmenu#reset()
call g:quickmenu#header('Quickmenu')
call g:quickmenu#append('# Menus:   ', '')
call g:quickmenu#append(
      \ ' Main Menu',
      \ 'call quickmenu#toggle(0)',
      \ 'This menu',
      \ '', 0, '0')
call g:quickmenu#append(
      \ ' Plugins',
      \ 'call quickmenu#toggle(1)',
      \ 'Extensions',
      \ '', 0, '1')
call g:quickmenu#append(
      \ ' Settings',
      \ 'call quickmenu#toggle(2)',
      \ "All of Vim's Settings",
      \ '', 0, '2')
call g:quickmenu#append(
      \ ' Projects',
      \ 'call quickmenu#toggle(3)',
      \ '',
      \ '', 0, '3')
call g:quickmenu#append(
      \ ' Unite/Denite',
      \ 'call quickmenu#toggle(4)',
      \ '',
      \ '', 0, '4')


" =============================================================================
" Plugins
" =============================================================================
call g:quickmenu#current(1)
call g:quickmenu#header('Plugins')
call g:quickmenu#append('# Plugins', '')
call g:quickmenu#append(
      \ '  UndoTree',
      \ 'UndotreeToggle',
      \ '',
      \ '', 0, 'ut')
call g:quickmenu#append(
      \ '  Tagbar',
      \ 'Tagbar',
      \ 'Switch Tagbar on/off',
      \ '', 0, 'tb')
call g:quickmenu#append(
      \ '  Codi',
      \ 'Codi',
      \ 'Instant code evaluation',
      \ '', 0, 'co')
call g:quickmenu#append(
      \ '  Cheat40',
      \ 'Cheat40Open',
      \ 'Show a small cheatsheet',
      \ '', 0, 'ch')
call g:quickmenu#append(
      \ ' Calendar',
      \ 'Calendar',
      \ 'show Calendar',
      \ '', 0, 'ca')
call g:quickmenu#append(
      \ '  git status',
      \ 'Gstatus',
      \ "use fugitive's Gstatus on current document",
      \ '', 0, 'gs')
call g:quickmenu#append(
      \ '  ScreenSaver',
      \ 'ScreenSaver largeclock',
      \ 'Save your screen',
      \ '', 0, 'ss')
" call g:quickmenu#append(
"       \ '',
"       \ '',
"       \ '',
"       \ '', 0, '')


" =============================================================================
" Settings
" =============================================================================
call g:quickmenu#current(2)
call g:quickmenu#header('Settings')
call g:quickmenu#append('# General Settings', '')
call g:quickmenu#append(
			\ '  init.vim ',
			\ 'TwoSplit $MYVIMRC',
			\ 'init file',
      \ '', 0, 'iv')
call g:quickmenu#append(
			\ '  Settings',
			\ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/settings.vim"',
			\ 'general settings',
      \ '', 0, 'se')
call g:quickmenu#append(
			\ '  Theme',
			\ 'TwoSplit "~/Projects/vim/vim-code-dark/colors/codedark.vim"',
			\ "edit Vim's syntax highlighting",
      \ '', 0, 'th')
call g:quickmenu#append(
      \ '  Functions',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/autoload/functions.vim"',
      \ 'User-defined Functions',
      \ '', 0, 'fu')
call g:quickmenu#append(
      \ '  Commands',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/commands.vim"',
      \ 'user-defined commands',
      \ '', 0, 'cd')
call g:quickmenu#append(
      \ '  Autocommands',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/autocmnds.vim"',
      \ 'user-defined autocommands',
      \ '', 0, 'au')
call g:quickmenu#append(
      \ '  FTDetect',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/filetype.vim"',
      \ 'Filetype associations',
      \ '', 0, 'fd')
call g:quickmenu#append(
      \ '  FTPlugin',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/filetype.vim"',
      \ 'Filetype associations',
      \ '', 0, 'fp')
call g:quickmenu#append(
      \ '   Mappings',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/mappings.vim"',
      \ 'Decide what the keys do',
      \ '', 0, 'k')
call g:quickmenu#append(
      \ '  Snippets',
      \ 'edit ~/.dotfiles/editors/nvim/snipz/',
      \ '"Let Vim do the typing"',
      \ '', 0, 'sn')


call g:quickmenu#append('# Plugin Settings', '')
call g:quickmenu#append(
      \ '  Completion',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/completion.vim"',
      \ 'Autocomplete & Snippets',
      \ '', 0, 'cp')
call g:quickmenu#append(
      \ '  Plugins',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/plugins.vim"',
      \ 'plugin settings',
      \ '', 0, 'pl')
call g:quickmenu#append(
      \ '  UI',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/ui.vim"',
      \ 'settings for plugins that provide a user interface',
      \ '', 0, 'ui')
call g:quickmenu#append(
      \ '  Unite/Denite',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/unite.vim"',
      \ 'settings for Unite & Denite',
      \ '', 0, 'un')
call g:quickmenu#append(
      \ '  Statusline',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/lightline.vim"',
      \ 'statusline settings',
      \ '', 0, 'sl')
call g:quickmenu#append(
      \ ' Menu',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/menu.vim"',
      \ 'Settings for This Menu',
      \ '', 0, 'mu')


" =============================================================================
" Projects
" =============================================================================
call g:quickmenu#current(3)
call g:quickmenu#header("Projects")
call g:quickmenu#append('# Vim', '')
" call g:quickmenu#append(
"       \ 'vim/tcd',
"       \ 'edit $HOME/Projects/Vim/tcd',
"       \ 'Scratch Plugin (for now :)',
"       \ '', 0, 't')
call g:quickmenu#append(
      \ 'vim/tcd',
      \ 'edit $HOME/Projects/Vim/tcd',
      \ 'Scratch Plugin (for now :)',
      \ '', 0, 'vt')
call g:quickmenu#append('# Shell', '')
call g:quickmenu#append(
      \ '.zshrc',
      \ 'edit $HOME/.dotfiles/shell/zsh/.zshrc',
      \ '',
      \ '', 0, 'dz')
call g:quickmenu#append(
      \ '.bashrc',
      \ 'edit $HOME/.dotfiles/shell/bash/.bashrc',
      \ '',
      \ '', 0, 'db')
call g:quickmenu#append(
      \ '.tmux.conf',
      \ 'edit $HOME/.dotfiles/config/tmux/.tmux.conf',
      \ '',
      \ '', 0, 'dt')


" =============================================================================
"  Unite/Denite
" =============================================================================


call g:quickmenu#current(4)
call g:quickmenu#header(' Unite/Denite')
call g:quickmenu#append('# Denite', '')
call g:quickmenu#append(
      \ ' Buffers',
      \ 'Denite buffer',
      \ '',
      \ '', 0, 'b')
call g:quickmenu#append(
      \ 'Command History',
      \ 'Denite command_history -default-action=edit_and_execute',
      \ '',
      \ '', 0, 'ch')
call g:quickmenu#append(
      \ 'File Manager',
      \ 'Denite file_manager',
      \ '',
      \ '', 0, 'fm')
call g:quickmenu#append(
      \ 'Most Recent Files',
      \ 'Denite file_mru',
      \ '',
      \ '', 0, 'rf')
call g:quickmenu#append(
      \ 'Most Recent Directories',
      \ 'Denite directory_mru',
      \ '',
      \ '', 0, 'rd')
call g:quickmenu#append(
      \ 'Help Docs',
      \ 'Denite help',
      \ '',
      \ '', 0, 'h')
call g:quickmenu#append(
      \ 'Neoyank Registers',
      \ 'Denite neoyank',
      \ '',
      \ '', 0, 'x')
call g:quickmenu#append(
      \ 'Todos ',
      \ 'Denite todo',
      \ '',
      \ '', 0, 'td')
call g:quickmenu#append(
      \ 'Finished Todos',
      \ 'Denite todo:done',
      \ '',
      \ '', 0, 'tf')
call g:quickmenu#append(
      \ ' Z (jump around)',
      \ 'Denite z',
      \ '',
      \ '', 0, 'z')


call g:quickmenu#append('# Unite', '')
call g:quickmenu#append(
      \ ' Unite (interactive)',
      \ 'Unite',
      \ '',
      \ '', 0, 'uu')
call g:quickmenu#append(
      \ 'Todos',
      \ 'Unite todo',
      \ '',
      \ '', 0, 'utd')

