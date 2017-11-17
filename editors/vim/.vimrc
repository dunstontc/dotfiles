"   ___      ___ ___  _____ ______   ________  ________
"  |\  \    /  /|\  \|\   _ \  _   \|\   __  \|\   ____\
"  \ \  \  /  / | \  \ \  \\\__\ \  \ \  \|\  \ \  \___|
"   \ \  \/  / / \ \  \ \  \\|__| \  \ \   _  _\ \  \
"    \ \    / /   \ \  \ \  \    \ \  \ \  \\  \\ \  \____
"     \ \__/ /     \ \__\ \__\    \ \__\ \__\\ _\\ \_______\
"      \|__|/       \|__|\|__|     \|__|\|__|\|__|\|_______|
"
"
if has('nvim')
  finish
endif
"
"
" execute pathogen#infect()
" =============================================================================
"  Plugins
" =============================================================================
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
" Useful Things
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'
Plug 'raimondi/delimitmate'
" Pretty Things
Plug 'itchyny/vim-cursorword'
Plug 'jszakmeister/vim-togglecursor'
Plug 'ryanoasis/vim-devicons'
" Colorful Things
Plug '~/Projects/Vim/vim-code-dark'
Plug 'mswift42/vim-themes'
Plug 'flazz/vim-colorschemes'
" Utilities
Plug 'sgur/vim-editorconfig'
Plug 'ciaranm/securemodelines'
Plug 'jez/vim-superman'
Plug 'christoomey/vim-tmux-navigator'
" Enhancements
Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'Shougo/deoplete.nvim'
call plug#end()



" =============================================================================
"  Config
" =============================================================================
syntax on
filetype plugin indent on
set encoding=utf-8 nobomb
set nocompatible               " Not compatible with vi
set modeline                   " Respect modeline in files
set modelines=5                " Well, in the first 5 lines of files
set shell=/usr/local/bin/bash
set mouse=a                    " Enable mouse in all modes
set noerrorbells               " Disable error bells
set novisualbell                 " ☝


" === Backups, Swapfiles, & Undo ===
" let skip_defaults_vim=1      " https://unix.stackexchange.com/questions/329545/disable-viminfo-completely
set viminfo="$HOME/.vim/viminfo"
set noswapfile                 " No thanks
" set backupdir=~/.vim/backups
" if exists('&undodir')
  set undofile                 " Persistent Undo though
	set undodir=~/.vim/undo
" endif


" =============================================================================
"  Styles
" =============================================================================
" === General ===
set notitle                    " Show the filename in the window titlebar
set nowrap                     " Do not wrap lines
set ruler                      " Show the cursor line
set number                     " Enable line numbers
set relativenumber             " Enable relative line numbers
set cursorline                 " Highlight current line
set scrolloff=5                " Start scrolling x lines before horizontal border of window
set sidescrolloff=5            " Start scrolling x columns before vertical border of window
set sidescroll=5
set showmatch                  " Highlight matching braces
set showmode                   " Show the current mode
if has('showcmd')              " Show the (partial) command as it’s being typed
  set showcmd
endif
set winminheight=0             " Allow splits to be reduced to a single line
set splitright                 " New split placed right
set splitbelow                 " New split placed below


" === Theming ===
" set Vim-specific sequences for RGB colors
" set rtp+=~/.vim/autoload/rgb.txt
" exe 'set rtp+=' . expand('~/.vim/autoload/rgb.txt')
" set rtp+=/usr/share/vim/vim74/rgb.txt
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
" set t_Co=256
set background=dark
set termguicolors
" let g:enable_bold_font=1       " Enable bold font in colorscheme
" let g:enable_italic_font=1     " Enable italic font in colorscheme
colorscheme gruvbox
highlight! Comment gui=italic cterm=italic


" === Invisible Characters ===
set listchars+=tab:→\
set listchars+=eol:¬
set listchars+=trail:·
set listchars+=nbsp:·
set listchars+=extends:❯
set listchars+=precedes:❮
set showbreak=↪
set nolist



" =============================================================================
"  Preferences
" =============================================================================
" === General ===
set clipboard=unnamed          " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set laststatus=2               " Always show status line


" === Input ===
set backspace=indent,eol,start " Set backspace in insert mode
set esckeys                    " Allow cursor keys in insert mode
set nostartofline              " Don’t reset cursor to start of line when moving around.
if has('virtualedit')          " Allow cursor to move where there is no text in visual block mode
  set virtualedit=block
endif

" === Tabs & Spaces ===
set autoindent                 " Autoidentation on
set copyindent                 " Copy indent from the previous line
set expandtab                  " Expand Tabs (pressing Tab inserts spaces)
set smartindent                " Smart Indentation on
set smarttab                   " Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set nojoinspaces               " Don't autoinsert two spaces after '.', '?', '!' for join command


" === Search ===
set ignorecase                 " Ignore case of searches
set smartcase                  " Ignore 'ignorecase' if search p
set hlsearch                   " Highlight matches
set incsearch                  " Search as characters are entered
set magic                      " Enable extended regexes
set gdefault                   " By default add g flag to search/replace. Add g to toggle


" === Command Completion ===
set wildmenu                   " Visual autocomplete for command menu
set wildignore+=*.pyc          " Stuff to ignore when tab completing
set wildignore+=.git/*
set wildignore+=.hg/*
set wildignore+=.svn/*
set wildignore+=*.DS_Store
set wildignore+=CVS/*
set wildignore+=*/tmp/*
set wildignore+=*.so
set wildignore+=*.swp
set wildignore+=*.zip
set wildignorecase
set wildmode=list:longest


" === Folding ===
if has('folding')
  set foldenable               " Enable folding
  set foldmethod=syntax
  set foldlevelstart=5         " Default folding level when buffer is opened
  set foldnestmax=10           " Maximum nested fold
endif



" =============================================================================
"  Keymaps
" =============================================================================
set timeoutlen=1000

let mapleader="\<Space>"

nnoremap <leader><leader> <esc>
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap ; :
vnoremap ; :

" Use ctrl-q instead of ⎋ , stay on the home row
" inoremap <esc> <C-o>:echo "Use ctrl-Q dumbass"<CR>
inoremap <C-Q> <C-c>
nnoremap <C-Q> <Nop>
vnoremap <C-Q> <C-c>
" xnoremap <C-Q> <C-C>
" cnoremap <C-Q> <C-C>

" noremap Q <Nop>

nnoremap <leader>q :q<CR>
nnoremap <leader>u :redo<CR>
" Clear highlights & commands
nnoremap <silent>\ :noh<CR>:echo<CR>
" gtfo
nnoremap fj :x<CR>
inoremap fj <esc>:x<CR>

noremap <S-H> 0
noremap <S-L> $

nnoremap <BS> i<DEL><esc><right>
nnoremap ,<space> i<space><esc>

" Yank into the void
noremap d "_d
noremap D "_D
noremap dd "_dd
noremap c "_c
noremap C "_C
" Yank Better
nnoremap <S-y> Vy

inoremap <C-E> <C-o>$

tnoremap <esc> <C-\><C-n>

" Save wih ⌘-s
nnoremap 𐌔 :w<CR>
inoremap 𐌔 <C-o>:w<CR>

" Comment wih ⌘-/
noremap <silent>𐌍 :TComment<CR>
inoremap <silent>𐌍 <esc>:TComment<CR>


" =============================================================================
"  Plugins
" =============================================================================
" === vim-togglecursor ===
let g:togglecursor_default = 'block'
let g:togglecursor_insert = 'line'
let g:togglecursor_leave = 'block'
let g:togglecursor_replace = 'underline'
let g:togglecursor_disable_tmux = 0
let g:togglecursor_disable_default_init = 1


" === deoplete ===
" let g:deoplete#enable_at_startup = 1
