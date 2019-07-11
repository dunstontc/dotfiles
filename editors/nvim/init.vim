"  ________   ___      ___ ___  ___ _________   ________  ________
" |\   ___  \|\  \    /  /|\  \|\   _ \  _   \|\   __  \|\   ____\
" \ \  \\ \  \ \  \  /  / | \  \ \  \\\__\ \  \ \  \|\  \ \  \___|
"  \ \  \\ \  \ \  \/  / / \ \  \ \  \\|__| \  \ \   _  _\ \  \
"   \ \  \\ \  \ \    / /   \ \  \ \  \    \ \  \ \  \\  \\ \  \____
"    \ \__\\ \__\ \__/ /     \ \__\ \__\    \ \__\ \__\\ _\\ \_______\
"     \|__| \|__|\|__|/       \|__|\|__|     \|__|\|__|\|__|\|_______|

scriptencoding utf-8
let g:uname = substitute(system('uname'), '\n', '', '')

" ==============================================================================
"  Plugins
" ==============================================================================

call plug#begin('~/.local/share/nvim/plugged')
  if g:uname ==? 'Darwin'
    Plug '/Users/clay/Projects/vim/vim-vscode-theme'
  else
    Plug 'dunstontc/vim-vscode-theme'
  endif
call plug#end()

" ==============================================================================
"  Other Settings
" ==============================================================================

filetype plugin indent on
syntax on
set nocompatible

" Python Settings
if g:uname ==? 'Darwin'
  let g:python3_host_prog  = '/usr/local/bin/python3'
endif

" ==============================================================================
" === Disable standard plugins ===
" ==============================================================================
let g:loaded_2html_plugin      = 'none'
let g:loaded_logiPat           = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_gzip              = 1
let g:loaded_man               = 1
let g:loaded_matchit           = 1
let g:loaded_matchparen        = 0
let g:loaded_netrwFileHandlers = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_rrhelper          = 1
let g:loaded_shada_plugin      = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_tarPlugin         = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_zipPlugin         = 1
