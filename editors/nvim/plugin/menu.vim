" =============================================================================
"   quickmenu.vim
" =============================================================================
let g:quickmenu_options = 'HLT'
let g:quickmenu_ft_blacklist= ['help', 'netrw', 'nerdtree', 'cheat40']

call g:quickmenu#reset()
call g:quickmenu#header('Quickmenu')
" section 1, text starting with "#" represents a section (see the screen capture below)
call g:quickmenu#append('# General Settings', '')

call g:quickmenu#append(
			\ '  init.vim ',
			\ 'edit $MYVIMRC',
			\ 'init file')
call g:quickmenu#append(
			\ '  Settings',
			\ 'edit ~/.dotfiles/editors/nvim/plugin/settings.vim',
			\ 'general settings')
call g:quickmenu#append(
			\ '  Theme',
			\ 'edit ~/Projects/vim/vim-code-dark/colors/codedark.vim',
			\ "edit Vim's syntax highlighting")
call g:quickmenu#append(
      \ '  Functions',
      \ 'edit ~/.dotfiles/editors/nvim/autoload/functions.vim',
      \ 'User-defined Functions')
call g:quickmenu#append(
      \ '  Commands',
      \ 'edit ~/.dotfiles/editors/nvim/plugin/commands.vim',
      \ 'user-defined commands')
call g:quickmenu#append(
      \ '  Autocommands',
      \ 'edit ~/.dotfiles/editors/nvim/plugin/autocmnds.vim',
      \ 'user-defined autocommands')
call g:quickmenu#append(
      \ '  Filetypes',
      \ 'edit ~/.dotfiles/editors/nvim/filetype.vim',
      \ 'Filetype associations')
call g:quickmenu#append(
      \ '  Mappings',
      \ 'edit ~/.dotfiles/editors/nvim/plugin/mappings.vim',
      \ 'Decide what the keys do')


call g:quickmenu#append('# Plugin Settings', '')
call g:quickmenu#append(
      \ '  Completion',
      \ 'edit ~/.dotfiles/editors/nvim/plugin/completion.vim',
      \ 'Autocomplete & Snippets')
call g:quickmenu#append(
      \ '  Plugins',
      \ 'edit ~/.dotfiles/editors/nvim/plugin/plugins.vim',
      \ 'plugin settings')
call g:quickmenu#append(
      \ '  UI',
      \ 'edit ~/.dotfiles/editors/nvim/plugin/ui.vim',
      \ 'settings for plugins that provide a user interface')
call g:quickmenu#append(
      \ '  Unite/Denite',
      \ 'edit ~/.dotfiles/editors/nvim/plugin/unite.vim',
      \ 'settings for Unite & Denite')
call g:quickmenu#append(
      \ '  Statusline',
      \ 'edit ~/.dotfiles/editors/nvim/plugin/lightline.vim',
      \ 'statusline settings')
call g:quickmenu#append(
      \ '  Menu',
      \ 'edit ~/.dotfiles/editors/nvim/plugin/menu.vim',
      \ 'Settings for This Menu')


call g:quickmenu#append('# Plugins', '')
call g:quickmenu#append(
      \ '  UndoTree',
      \ 'UndotreeToggle',
      \ '')
call g:quickmenu#append(
      \ '  Tagbar',
      \ 'Tagbar',
      \ 'Switch Tagbar on/off')
call g:quickmenu#append(
      \ '  Unite',
      \ 'Unite',
      \ '')
call g:quickmenu#append(
      \ '  Codi',
      \ 'Codi',
      \ 'Instant code evaluation')
call g:quickmenu#append(
      \ '  Cheat40',
      \ 'Cheat40Open',
      \ 'Show a small cheatsheet')
call g:quickmenu#append(
      \ '  Calendar',
      \ 'Calendar',
      \ 'show Calendar')
call g:quickmenu#append(
      \ '  git status',
      \ 'Gstatus',
      \ "use fugitive's Gstatus on current document")
call g:quickmenu#append(
      \ '  ScreenSaver',
      \ 'ScreenSaver largeclock',
      \ 'Save your screen')
" call g:quickmenu#append(
"       \ '',
"       \ '',
"       \ '')
" call g:quickmenu#append(
"       \ '',
"       \ '',
"       \ '')
" call g:quickmenu#append(
"       \ '',
"       \ '',
"       \ '')




