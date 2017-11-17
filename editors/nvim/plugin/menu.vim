" =============================================================================
"   quickmenu.vim
" =============================================================================
let g:quickmenu_options = 'HL'
let g:quickmenu_ft_blacklist= ['help', 'netrw', 'nerdtree', 'cheat40']
let g:quickmenu_special_keys = 0
let g:quickmenu_padding_left = 3
let g:quickmenu_padding_right = 3
let g:quickmenu_max_width = 50   " TODO: add min_width

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
      \ ' Settings',
      \ 'call quickmenu#toggle(1)',
      \ "All of Vim's Settings",
      \ '', 0, '1')
call g:quickmenu#append(
      \ ' Unite/Denite',
      \ 'call quickmenu#toggle(2)',
      \ '',
      \ '', 0, '2')
call g:quickmenu#append(
      \ ' Plugins',
      \ 'call quickmenu#toggle(3)',
      \ 'Extensions',
      \ '', 0, '3')
call g:quickmenu#append(
      \ ' Projects',
      \ 'call quickmenu#toggle(4)',
      \ '',
      \ '', 0, '4')
call g:quickmenu#append(
      \ ' Dotfiles',
      \ 'call quickmenu#toggle(5)',
      \ "All of Vim's Settings",
      \ '', 0, '5')

call g:quickmenu#append('# ===========', '')



" =============================================================================
" Settings
" =============================================================================
call g:quickmenu#current(1)
call g:quickmenu#header('Settings')
call g:quickmenu#append('# General Settings','')
call g:quickmenu#append(
			\ '  init.vim ',
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
      \ '', 0, 'cm')
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


call g:quickmenu#append('# Plugin Settings','')
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
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/statline.vim"',
      \ 'statusline settings',
      \ '', 0, 'sl')
call g:quickmenu#append(
      \ '  Menu',
      \ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/menu.vim"',
      \ 'Settings for This Menu',
      \ '', 0, 'mu')


call g:quickmenu#append('# ===========','')
call g:quickmenu#append(
      \ ' Main Menu',
      \ 'call quickmenu#toggle(0)',
      \ '',
      \ '', 0, 'cd')



" =============================================================================
"  Unite/Denite
" =============================================================================

call g:quickmenu#current(2)
call g:quickmenu#header(' Unite/Denite')
call g:quickmenu#append('# Denite','')
call g:quickmenu#append(
      \ 'Buffers',
      \ 'Denite buffer',
      \ '',
      \ '', 0, 'ls')
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
      \ '', 0, 'hh')
call g:quickmenu#append(
      \ 'Neoyank Registers',
      \ 'Denite neoyank',
      \ '',
      \ '', 0, 'ny')
call g:quickmenu#append(
      \ 'Tasks ',
      \ 'Denite todo',
      \ '',
      \ '', 0, 'ta')
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
      \ 'Z (jump around)',
      \ 'Denite z',
      \ '',
      \ '', 0, 'zz')


call g:quickmenu#append('# Unite','')
call g:quickmenu#append(
      \ ' Unite (interactive)',
      \ 'Unite',
      \ '',
      \ '', 0, 'uu')
call g:quickmenu#append(
      \ 'Todos',
      \ 'Unite todo',
      \ '',
      \ '', 0, 'ut')


call g:quickmenu#append('# ===========', '')
call g:quickmenu#append(
      \ ' Main Menu',
      \ 'call quickmenu#toggle(0)',
      \ '',
      \ '', 0, 'cd')



" =============================================================================
" Plugins
" =============================================================================
call g:quickmenu#current(3)
call g:quickmenu#header('Plugins')
call g:quickmenu#append('# Plugins','')
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
      \ '  Calendar',
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
call g:quickmenu#append('# ===========','')
call g:quickmenu#append(
      \ ' Main Menu',
      \ 'call quickmenu#toggle(0)',
      \ '',
      \ '', 0, 'cd')



" =============================================================================
" Projects
" =============================================================================
call g:quickmenu#current(4)
call g:quickmenu#header("Dotfiles")
call g:quickmenu#append('# Vim','')

call g:quickmenu#append(
      \ 'vim-cheat40',
      \ 'TwoSplit "~/Projects/Vim/forks/vim-cheat40"',
      \ 'Vim 8',
      \ '', 0, 'vi')


call g:quickmenu#append('# ===========','')
call g:quickmenu#append(
      \ ' Main Menu',
      \ 'call quickmenu#toggle(0)',
      \ '',
      \ '', 0, 'cd')



" =============================================================================
" Dotfiles
" =============================================================================
call g:quickmenu#current(5)
call g:quickmenu#header("Dotfiles")
call g:quickmenu#append('# Vim','')

call g:quickmenu#append(
      \ ' .vimrc',
      \ 'TwoSplit "~/.dotfiles/editors/vim/.vimrc"',
      \ 'Vim 8',
      \ '', 0, 'vi')


call g:quickmenu#append('# Shells','')
call g:quickmenu#append(
      \ ' .zshrc',
      \ 'TwoSplit "~/.dotfiles/shell/zsh/.zshrc"',
      \ '',
      \ '', 0, 'dz')
call g:quickmenu#append(
      \ '  prompt.zsh',
      \ 'TwoSplit "~/.dotfiles/shell/zsh/prompt.zsh"',
      \ '',
      \ '', 0, 'zp')
call g:quickmenu#append(
      \ ' .bashrc',
      \ 'TwoSplit "~/.dotfiles/shell/bash/.bashrc"',
      \ '',
      \ '', 0, 'db')
call g:quickmenu#append(
      \ ' .inputrc',
      \ 'TwoSplit "~/.dotfiles/shell/bash/.inputrc"',
      \ '',
      \ '', 0, 'di')
call g:quickmenu#append(
      \ '  config.fish',
      \ 'TwoSplit "~/.dotfiles/shell/fish/config.fish"',
      \ '',
      \ '', 0, 'df')
call g:quickmenu#append(
      \ '  prompt.fish',
      \ 'TwoSplit "~/.dotfiles/shell/fish/config.fish"',
      \ '',
      \ '', 0, 'fp')
call g:quickmenu#append(
      \ ' .tmux.conf',
      \ 'TwoSplit "~/.dotfiles/config/tmux/.tmux.conf"',
      \ '',
      \ '', 0, 'dt')


call g:quickmenu#append('# Global','')
call g:quickmenu#append(
      \ ' .aliases',
      \ 'TwoSplit "~/.dotfiles/shell/.aliases"',
      \ '',
      \ '', 0, 'ga')
call g:quickmenu#append(
      \ ' .exports',
      \ 'TwoSplit "~/.dotfiles/shell/.exports"',
      \ '',
      \ '', 0, 'ge')
call g:quickmenu#append(
      \ ' .functions',
      \ 'TwoSplit "~/.dotfiles/shell/.functions"',
      \ '',
      \ '', 0, 'gf')
call g:quickmenu#append(
      \ ' .path',
      \ 'TwoSplit "~/.dotfiles/shell/.path"',
      \ '',
      \ '', 0, 'gp')

call g:quickmenu#append('# Ranger','')
call g:quickmenu#append(
      \ 'commands.py',
      \ 'TwoSplit "~/.dotfiles/config/ranger/commands_full.py"',
      \ '',
      \ '', 0, 'rk')
call g:quickmenu#append(
      \ 'scope.sh',
      \ 'TwoSplit "~/.dotfiles/config/ranger/scope.sh"',
      \ '',
      \ '', 0, 'rs')
call g:quickmenu#append(
      \ 'rifle.conf',
      \ 'TwoSplit "~/.dotfiles/config/ranger/rifle.conf"',
      \ '',
      \ '', 0, 'ri')
call g:quickmenu#append(
      \ 'rc.conf',
      \ 'TwoSplit "~/.dotfiles/config/ranger/rc.conf"',
      \ '',
      \ '', 0, 'rc')


call g:quickmenu#append('# Other','')
call g:quickmenu#append(
      \ 'init.lua',
      \ 'TwoSplit "~/.dotfiles/config/hammerspoon/init.lua"',
      \ 'Hammerspoon Config',
      \ '', 0, 'hs')
call g:quickmenu#append(
      \ '.taskrc',
      \ 'TwoSplit "~/.dotfiles/misc/.taskrc"',
      \ '',
      \ '', 0, 'wr')
call g:quickmenu#append(
      \ '.task.theme',
      \ 'TwoSplit "~/.task/tcd-tw.theme"',
      \ '',
      \ '', 0, 'wt')


call g:quickmenu#append('# ===========','')
call g:quickmenu#append(
      \ ' Main Menu',
      \ 'call quickmenu#toggle(0)',
      \ '',
      \ '', 0, 'cd')


