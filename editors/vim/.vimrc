"   ___      ___ ___  _____ ______   ________  ________
"  |\  \    /  /|\  \|\   _ \  _   \|\   __  \|\   ____\
"  \ \  \  /  / | \  \ \  \\\__\ \  \ \  \|\  \ \  \___|
"   \ \  \/  / / \ \  \ \  \\|__| \  \ \   _  _\ \  \
"    \ \    / /   \ \  \ \  \    \ \  \ \  \\  \\ \  \____
"     \ \__/ /     \ \__\ \__\    \ \__\ \__\\ _\\ \_______\
"      \|__|/       \|__|\|__|     \|__|\|__|\|__|\|_______|



" =============================================================================
"  Plugins
" =============================================================================

call plug#begin('~/.vim/plugz')
" Plug 'ryanoasis/vim-devicons'
" 🌲 Nerd Tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'Shougo/neocomplete.vim'
call plug#end()

filetype plugin indent on




" =============================================================================
"  Plugin Settings
" =============================================================================
"  === Vim Airline ===
let g:airline_powerline_fonts=1

" === NERDTree ===
" Close vim if only NERDtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" =============================================================================
"  Styles
" =============================================================================
" set guifont=Monaco_for_Powerline:h12
set background=dark
set guifont=SpaceMono\ Nerd\ Font\ Complete\ Mono:h13
set ruler                      " Show the cursor position
set cursorline                 " Highlight current line
set showmode                   " Show the current mode
" set title                      " Show the filename in the window titlebar
set scrolloff=5                " Start scrolling three lines before the horizontal window border


" =============================================================================
"  Config
" =============================================================================
set nocompatible               " Not compatible with Vi
syntax on                      " Enable syntax highlighting
set number                     " Enable line numbers
set relativenumber             " Enable relative line numbers
set mouse=a                    " Enable mouse in all modes
set noerrorbells               " Disable error bells
set visualbell                 " ☝
" let skip_defaults_vim=1        " https://unix.stackexchange.com/questions/329545/disable-viminfo-completely
set viminfo+=n~/.vim/viminfo   " https://unix.stackexchange.com/questions/329545/disable-viminfo-completely    http://vimdoc.sourceforge.net/htmldoc/starting.html#viminfo-file
set nobackup                   " Don't keep a backup file

" =============================================================================
"  Preferences
" =============================================================================

set clipboard=unnamed          " Use the OS clipboard by default (on versions compiled with `+clipboard`)
" set laststatus=2               " Always show status line
set showcmd                    " Show the (partial) command as it’s being typed
" set list                      " Show invisbile characters
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ " Show “invisible” characters
" set backupskip=/tmp/*,/private/tmp/* " Don’t create backups when editing files in certain directories

" === Motion ===
set backspace=indent,eol,start " Set backspace in insert mode
set esckeys                    " Allow cursor keys in insert mode
set nostartofline              " Don’t reset cursor to start of line when moving around.

" === Tabs & Spaces ===
set tabstop=2                  " Make tabs as wide as two spaces

" === Search ===
set gdefault                   " Add the g flag to search/replace by default
set hlsearch                   " Highlight searches
set ignorecase                 " Ignore case of searches
set incsearch                  " Highlight dynamically as pattern is typed
wildmenu                       " Enhance command-line completion


" Use relative line numbers
" if exists("&relativenumber")
" 	set relativenumber
" 	au BufReadPost * set relativenumber
" endif


" " Centralize backups, swapfiles and undo history
" set backupdir=~/.vim/backups
" set directory=~/.vim/swaps
" if exists("&undodir")
" 	set undodir=~/.vim/undo
" endif


" =============================================================================
"  Keymaps
" =============================================================================

map <C-n> :NERDTreeToggle<CR>
