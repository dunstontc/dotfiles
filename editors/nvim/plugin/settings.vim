" =============================================================================
"   Config
" =============================================================================
" set encoding=utf-8         " BOM needed for DevIcons
set encoding=utf-8 nobomb
set clipboard=unnamedplus " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set modeline               " Respect modeline in files
set modelines=5            " Well, in the first 5 lines of files
set noerrorbells           " Disable error bells
set visualbell             " Use visual bell instead of audible bell (annnnnoying)
set belloff=all
set noswapfile             " No thanks
set nobackup               " I'm alright
set ttyfast
set undofile               " Persistent Undo though
set undodir=~/.config/nvim/undo
set shell=/usr/local/bin/bash
set nohidden

" =============================================================================
"   Input & Navigation
" =============================================================================
set backspace=indent,eol,start

"  Tabs & Spaces
set autoindent                  " Autoidentation on
set copyindent                  " Copy indent from the previous line
set expandtab                   " Expand Tabs (pressing Tab inserts spaces)
set smartindent                 " Smart Indentation on
set smarttab                    " Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set nojoinspaces                " don't autoinsert two spaces after '.', '?', '!' for join command

" set notimeout
" set ttimeout
set nopaste

" =============================================================================
"   Styles
" =============================================================================
set termguicolors
" set t_Co=256
colorscheme codedark
set background=dark
let g:enable_bold_font=1       " Enable bold font in colorscheme
let g:enable_italic_font=1     " Enable italic font in colorscheme
highlight Comment gui=italic
" set conceallevel=2             " Enable conceal

set cursorline                 " Highlight current line
set nowrap                     " Do not wrap lines
set number                     " Enable line numbers
" set relativenumber             " Show numbers relative to current line
set ruler                      " Show the cursor position
set scrolloff=5                " Start scrolling x lines before horizontal border of window
set sidescrolloff=5            " Start scrolling x columns before vertical border of window
set sidescroll=5
" set showtabline=2              " Always show tab bar
set showmatch                  " Highlight matching braces


" Messages, etc.
set showcmd                    " Show (partial) command in the last line of the screen.
" set shortmess=a                " We don't like presing enter to continue
set noshowmode                 " Don't show the current mode (airline takes care of this)
set notitle                    " Don't Show the filename in the window titlebar

set listchars+=tab:→\
set listchars+=eol:¬
set listchars+=trail:·
set listchars+=nbsp:·
set listchars+=extends:❯
set listchars+=precedes:❮
set showbreak=↪
set nolist

" if has('windows')
"   set fillchars=diff:⣿                " BOX DRAWINGS
"   set fillchars+=vert:┃               " HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
"   set fillchars+=fold:·
" endif
" set list         " Show invisible characters

set synmaxcol=200              " Don't syntax highlight long lines
" set colorcolumn=80            " Highlight the 80th character limit
" if exists('+colorcolumn')
"   let &l:colorcolumn='+' . join(range(0, 254), ',+')
" endif
" set nolazyredraw                " Don't redraw
" set redraw

"  Misc.
set splitright                  " New split placed right
set splitbelow                  " New split placed below
set winminheight=0              " Allow splits to be reduced to a single line

" =============================================================================
"   Preferences
" =============================================================================
"
"  Navigation
set mouse=a                     " Enable the mouse
set nostartofline               " Don't reset cursor to start of line when moving around
set virtualedit=block
" set whichwrap+=<,>,h,l,[,]      " Lake Left/Right at the Start/End of lines work like you'd expect


"  Search
set magic                       " Enable extended regexes
set gdefault                    " By default add g flag to search/replace. Add g to toggle
set incsearch                   " Search as characters are entered
set hlsearch                    " Highlight matches
set ignorecase                  " Ignore case of searches
set smartcase                   " Ignore 'ignorecase' if search patter contains uppercase characters


set wildmenu                    " ≈ Visual autocomplete for command menu
set wildignore+=*.pyc            "stuff to ignore when tab completing
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
" set wildmode=longest:full,full
" set wildmode=list:longest,list:full
set wildmode=list:longest
" set wildmode=list:full

" set completeopt=longest,menu,preview
" set completeopt+=menu
" set completeopt+=longest
" set completeopt+=noinsert
" set completeopt+=preview
set completeopt+=menuone
set completeopt-=preview

"  Folding
if has('folding')
  set foldenable                  " Enable folding
  set foldmethod=syntax
  set foldlevelstart=5            " Default folding level when buffer is opened
  set foldnestmax=10              " Maximum nested fold
  " set foldtext=functions#NeatFoldText()
endif


iabbrev congif config
iabbrev teh the
iabbrev w/ with

" Disable standard plugins
" let g:loaded_getscriptPlugin = 1
let g:loaded_netrwPlugin = 1
let g:loaded_tarPlugin = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_vimballPlugin = 1
let g:loaded_zipPlugin = 1
let g:loaded_gzip = 1
" let g:loaded_rrhelper = 1
