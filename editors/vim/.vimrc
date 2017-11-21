"   ___      ___ ___  _____ ______   ________  ________
"  |\  \    /  /|\  \|\   _ \  _   \|\   __  \|\   ____\
"  \ \  \  /  / | \  \ \  \\\__\ \  \ \  \|\  \ \  \___|
"   \ \  \/  / / \ \  \ \  \\|__| \  \ \   _  _\ \  \
"    \ \    / /   \ \  \ \  \    \ \  \ \  \\  \\ \  \____
"     \ \__/ /     \ \__\ \__\    \ \__\ \__\\ _\\ \_______\
"      \|__|/       \|__|\|__|     \|__|\|__|\|__|\|_______|
"
"
"
if has('nvim')
  finish
endif
"
" if has('win32')
"   let $VIMHOME = expand('~\vimfiles')
" else
"   let $VIMHOME = expand('~/.vim')
" endif
"
" =============================================================================
"  Plugins
" =============================================================================
" execute pathogen#infect()
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
" Useful Things
Plug 'tpope/vim-rsi'                 " Better insert-mode experience
Plug 'tpope/vim-repeat'              " Repeat plugin actions with '.'
Plug 'tpope/vim-surround'            " Alter surrounding punctuation
Plug 'tpope/vim-fugitive'            " Git interface
Plug 'tomtom/tcomment_vim'           " Comments
Plug 'raimondi/delimitmate'          " Automatically close delimiters
Plug 'junegunn/vim-peekaboo'         " Visual interface for registers
Plug 'junegunn/vim-easy-align'       " Easily align all of the things
" Syntactic Things
Plug 'kana/vim-textobj-user'         " Define new textobjects
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'glts/vim-textobj-comment'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'terryma/vim-expand-region'     " Easier textobject selection
" Pretty Things
Plug 'itchyny/vim-cursorword'        " Hilight all occurances of the word under the cursor
Plug 'jszakmeister/vim-togglecursor' " Switch between block & horizontal line
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
" Colorful Things
Plug '~/Projects/Vim/vim-code-dark'
Plug 'vim-airline/vim-airline-themes'
Plug 'mswift42/vim-themes'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'romainl/Apprentice'
" Utilities
Plug 'jez/vim-superman'               " Open manpages in vim
Plug 'pbrisbin/vim-mkdir'             " Make new directories along with new files
Plug 'sgur/vim-editorconfig'          " .editorconfig support
Plug 'ciaranm/securemodelines'        " Better safe than sorry
Plug 'dietsche/vim-lastplace'         " Persist cursor position
Plug 'christoomey/vim-tmux-navigator' " Move smoothly between vim & tmux
" Enhancements
Plug 'Shougo/deoplete.nvim'           " Async Completion
Plug 'roxma/nvim-yarp'                " Make deoplete play nice with Vim8
Plug 'roxma/vim-hug-neovim-rpc'       " Make deoplete play nice with Vim8
Plug 'Shougo/neco-syntax'             " ???
Plug 'Shougo/neco-vim'                " Completions for Viml
Plug 'wellle/tmux-complete.vim'       " Completions for adjascent tmux panes
" Plug 'CharlesGueunet/quickmenu.vim'
call plug#end()



" =============================================================================
"  Config
" =============================================================================
syntax on
filetype plugin indent on
set encoding=utf-8 nobomb
" set nocompatible               " Not compatible with vi
set modeline                   " Respect modeline in files
set modelines=5                " Well, in the first 5 lines of files
set shell=/usr/local/bin/bash
if has('mouse')
    set mouse=a                " Enable mouse in all modes
endif
" if has('unnamedplus')
"   set clipboard=unnamedplus,unnamed
" else
"   set clipboard+=unnamed
" endif
set noerrorbells               " Disable error bells
set novisualbell                 " ☝


" === Backups, Swapfiles, & Undo ===
set noswapfile                 " No thanks
set backupdir=~/.vim/backupdir
set undofile                   " Persistent Undo though
set undodir=~/.vim/undodir



" =============================================================================
"  Styles
" =============================================================================
" ==== General ====
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
set noshowmode                 " Show the current mode
if has('showcmd')
  set showcmd                  " Show the (partial) command as it’s being typed
endif
set winminheight=0             " Allow splits to be reduced to a single line
set splitright                 " New split placed right
set splitbelow                 " New split placed below


" ==== Theming ====
if &term =~# '^screen'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set background=dark
set termguicolors
" set t_Co=256
" let g:enable_bold_font=1       " Enable bold font in colorscheme
" let g:enable_italic_font=1     " Enable italic font in colorscheme
colorscheme gruvbox
highlight! Comment gui=italic cterm=italic
set guifont=Operator\ Mono\ Nerd\ Font\ Complete\ 14

" ==== Invisible Characters ====
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
" ==== General ====
set clipboard=unnamed          " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set laststatus=2               " Always show status line
set nopaste

" ==== Input ====
set backspace=indent,eol,start " Set backspace in insert mode
set esckeys                    " Allow cursor keys in insert mode
set nostartofline              " Don’t reset cursor to start of line when moving around.
if has('virtualedit')          " Allow cursor to move where there is no text in visual block mode
  set virtualedit=block
endif

" ==== Tabs & Spaces ====
set autoindent                 " Autoidentation on
set copyindent                 " Copy indent from the previous line
set expandtab                  " Expand Tabs (pressing Tab inserts spaces)
set smartindent                " Smart Indentation on
set smarttab                   " Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set nojoinspaces               " Don't autoinsert two spaces after '.', '?', '!' for join command


" ==== Search ====
set ignorecase                 " Ignore case of searches
set smartcase                  " Ignore 'ignorecase' if search p
set hlsearch                   " Highlight matches
set incsearch                  " Search as characters are entered
set magic                      " Enable extended regexes
set gdefault                   " By default add g flag to search/replace. Add g to toggle


" ==== Command Completion ====
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
set wildmode=list:longest,full


" ==== Folding ====
if has('folding')
  set foldenable               " Enable folding
  set foldmethod=manual
  set foldlevelstart=5         " Default folding level when buffer is opened
  set foldnestmax=10           " Maximum nested fold
endif



" =============================================================================
"  Commands
" =============================================================================
" Open help in vertical splits
command -nargs=* -complete=help H vertical belowright help <args>

" copy path of the active buffer
command -nargs=0 GetRelPath :let @+ = expand("%")
command -nargs=0 GetFullPath :let @+ = expand("%:p")
command -nargs=0 GetName :let @+ = expand("%:t")


" Make these commonly mistyped commands still work
command! WQ wq
command! Wq wq
command! Wqa wqa
command! W w
command! Q q

" Use :C to clear hlsearch
command! C nohlsearch



" =============================================================================
"  Keymaps
" =============================================================================
set timeoutlen=1000

let mapleader="\<Space>"

nnoremap <leader><leader> <esc>
nnoremap <leader>cev :edit $MYVIMRC<CR>
" nnoremap <leader>cef :edit
nnoremap <silent> <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>ps :PlugStatus<CR>


" Remap : to ;
nnoremap ; :
vnoremap ; :

" Better searching
nnoremap / /\v
vnoremap / /\v

" Use ctrl-q instead of ⎋ , stay on the home row
inoremap <C-Q> <C-c>
nnoremap <C-Q> <Nop>
vnoremap <C-Q> <C-c>
cnoremap <C-Q> <C-c>
tnoremap <C-Q> <C-c>

" noremap Q <Nop>

nnoremap <BS> i<DEL><esc><right>
nnoremap ,, i<space><esc>

nnoremap <leader>q :q<CR>
nnoremap <leader>u :redo<CR>
" Clear highlights & commands
nnoremap <silent>\ :noh<CR>:echo<CR>
" gtfo
nnoremap fj :x<CR>
inoremap fj <esc>:x<CR>

noremap <S-H> 0
noremap <S-L> $


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


" ==== Dumb Maps ====
" Save wih `⌘-s`
nnoremap 𐌔 :w<CR>
inoremap 𐌔 <C-o>:w<CR>

" Comment wih `⌘-/`
noremap <silent>𐌍 :TComment<CR>
inoremap <silent>𐌍 <esc>:TComment<CR>

" Use `⌥ ⇧ DOWN` to duplicate a line
nnoremap 𐌋 mxV"zy"zp`xj

" `⌘ [` / `⌘ ]` for Indentation
vmap <silent> 𐌀 <gv
vmap <silent> 𐌁 >gv
nmap <silent> 𐌀 <<
nmap <silent> 𐌁 >>
imap <silent> 𐌀 <C-o><<
imap <silent> 𐌁 <c-o>>>

"  `⌥  UP/DOWN` Move lines up and down
nnoremap 𐌞 :m .-2<CR>==
nnoremap 𐌓 :m .+1<CR>==
inoremap 𐌞 <Esc>:m .-2<CR>==gi
inoremap 𐌓 <Esc>:m .+1<CR>==gi
vnoremap 𐌞 :m '<-2<CR>gv=gv
vnoremap 𐌓 :m '>+1<CR>gv=gv


" ==== Leader Maps ====
" Toggle Comments
nnoremap <leader>tc :TComment<CR>
" Toggle Folding
nnoremap <leader>tf :normal! zi<CR>
" Toggle GitGutter
nnoremap <leader>tg :call gitgutter#toggle()<CR>
" Toggle Search Highlight
nnoremap <leader>th :set nohlsearch<CR>
" Toggle Line Wrapping
nnoremap <leader>tl :set wrap!<CR>
" Toggle TableMode
nnoremap <leader>tm :tablemode#Toggle()<CR>
" Toggle Paste
nnoremap <leader>tp :set nopaste<CR>
" Toggle the Quickfix List
nnoremap <leader>tq :copen<CR>
" Toggle Relative Line Numbers
nnoremap <leader>tr :set rnu!<CR>
" Toggle GundoTree
nnoremap <leader>tu :GundoToggle<CR>
" Toggle Tagbar
nnoremap <leader>tt :TagbarToggle<CR>
" Toggle Invisible Characters (whitespace)
nnoremap <leader>tw :set list!<CR>


" =============================================================================
"  Plugins
" =============================================================================


" ==== deoplete ====
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 2
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path=1
" let g:deoplete#ignore_sources =
" let g:deoplete#omni#input_patterns =
" let g:deoplete#omni_patterns =

call deoplete#custom#set('vim',           'mark', ' ')
call deoplete#custom#set('omni',          'mark', '⌾ ')
call deoplete#custom#set('file',          'mark', ' ')
call deoplete#custom#set('jedi',          'mark', ' ')
call deoplete#custom#set('around',        'mark', '↻ ')
call deoplete#custom#set('buffer',        'mark', ' ')
call deoplete#custom#set('member',        'mark', 'mb')
call deoplete#custom#set('necovim',       'mark', 'nv')
call deoplete#custom#set('ultisnips',     'mark', ' ')
call deoplete#custom#set('necosyntax',    'mark', 'ns')
call deoplete#custom#set('tmux-complete', 'mark', '⧉ ')

call deoplete#custom#set('jedi', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#set('necovim', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#set('necosyntax', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#set('tmux-complete', 'matchers', ['matcher_fuzzy'])


" ==== easy-align ====
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" ==== expand-region ====
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

let g:expand_region_text_objects = {
      \ 'iv'  :1,
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'i"'  :0,
      \ 'i''' :0,
      \ 'i]'  :1,
      \ 'ib'  :1,
      \ 'iB'  :1,
      \ 'il'  :0,
      \ 'ip'  :0,
      \ 'ie'  :0,
      \ }


" ==== TComment ====
let g:tcommentMaps=0
let g:tcommentMapLeader1=''
let g:tcommentMapLeader2=''
let g:tcommentMapLeaderCommentAnyway=''
let g:tcommentTextObjectInlineComment=''


" ==== vim-togglecursor ====
let g:togglecursor_default = 'block'
let g:togglecursor_insert = 'line'
let g:togglecursor_leave = 'block'
let g:togglecursor_replace = 'underline'
let g:togglecursor_disable_tmux = 0
let g:togglecursor_disable_default_init = 1


" ==== devicons ====
let g:webdevicons_enable=1
let g:webdevicons_enable_airline_statusline=1
let g:webdevicons_enable_airline_statusline_fileformat_symbols=1


" ==== vim-airline ====
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


