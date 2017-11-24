" =============================================================================
"   Config
" =============================================================================
set encoding=utf-8 nobomb
" scriptencoding utf-8
set clipboard=unnamedplus " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set modeline               " Respect modeline in files
set modelines=5            " Well, in the first 5 lines of files
set noerrorbells           " Disable error bells
set visualbell             " Use visual bell instead of audible bell (annnnnoying)
set belloff=all
set report=0
set ttyfast
set hidden
set nospell
set noswapfile             " No thanks
set nobackup               " I'm alright
set undofile               " Persistent Undo though
set undodir=~/.config/nvim/undo
set shell=/usr/local/bin/bash

" =============================================================================
"   Input & Navigation
" =============================================================================
set mouse=a                     " Enable the mouse
set backspace=indent,eol,start
" set formatoptions-=c            " Auto-wrap comments using textwidth, inserting the current comment leader automatically.
" set formatoptions-=r            " Automatically insert the current comment leader after hitting <Enter> in Insert mode.
set formatoptions-=o            " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
" set whichwrap+=<,>,h,l,[,]      " Lake Left/Right at the Start/End of lines work like you'd expect

"  Tabs & Spaces
set autoindent                  " Autoidentation on
set copyindent                  " Copy indent from the previous line
set expandtab                   " Expand Tabs (pressing Tab inserts spaces)
set smartindent                 " Smart Indentation on
set smarttab                    " Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set nojoinspaces                " don't autoinsert two spaces after '.', '?', '!' for join command
set nostartofline               " Don't reset cursor to start of line when moving around

set virtualedit=block
" set notimeout
" set ttimeout
set nopaste


" =============================================================================
"   Styles
" =============================================================================
set termguicolors
" set guicursor=
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0


" set nvim_tui_enable_cursor_shape=1
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2
" set t_Co=256
" set background=dark

" colorscheme codedark
" colorscheme gruvbox
" colorscheme apprentice
" let g:enable_bold_font=1       " Enable bold   font in one dark colorscheme
" let g:enable_italic_font=1     " Enable italic font in one dark colorscheme

let g:quantum_black=1
colorscheme quantum
let g:quantum_italics=1

highlight Comment gui=italic
" syntax sync minlines=200
" syntax sync maxlines=500
" set synmaxcol=400


set conceallevel=2             " Enable conceal
set cmdheight=2
set cursorline                 " Highlight current line
set nowrap                     " Do not wrap lines
set number                     " Enable line numbers
set relativenumber             " Show numbers relative to current line
" set ruler                      " Show the cursor position
set scrolloff=5                " Start scrolling x lines before horizontal border of window
set sidescrolloff=5            " Start scrolling x columns before vertical border of window
set sidescroll=5
" set showmatch                  " Highlight matching braces


" ==== Messages, etc. ====
set shortmess=a                " Assorted abbreviations
set shortmess+=o               " Overwrite message for writing a file with subsequent message
                               "     for reading a file (useful for ":wn" or when 'autowrite' on)
set shortmess+=O               " Message for reading a file overwrites any previous message.
                               "     Also for quickfix message (e.g., ":cn").
set shortmess+=c               " Don't give |ins-completion-menu| messages.  For example,
                               "     -- XXX completion (YYY)", "match 1 of 2", "The only match",
                               "     Pattern not found", "Back at original", etc.
set shortmess+=s               " Don't give 'search hit BOTTOM, continuing at TOP' or 'search
                               "     hit TOP, continuing at BOTTOM" messages
set shortmess+=t               " Truncate file message at the start if it is too long to fit
                               "     on the command-line, "<" will appear in the left most column.
                               "     Ignored in Ex mode.
set shortmess+=T               " Truncate other messages in the middle if they are too long to
                               "     fit on the command line.  "..." will appear in the middle.
                               "     Ignored in Ex mode.
set shortmess+=F               " Don't give the file info when editing a file,
                               "     like `:silent` was used for the command
set showcmd                    " Show (partial) command in the last line of the screen.
set noshowmode                 " Don't show the current mode (airline takes care of this)
set notitle                    " Don't Show the filename in the window titlebar
" set report=10                  " Report more than 10 lines changed at once
" set linespace=0    " No extra spaces between rows
" set pumheight=20   " Avoid the pop up menu occupying the whole screen


set listchars+=tab:→\   " Comment here to keep whitespace intact
" set listchars+=eol:¬
set listchars+=eol:\    " Comment here to keep whitespace intact
" set listchars+=trail:·
set listchars+=trail:●
set listchars+=nbsp:\   " Comment here to keep whitespace intact
set listchars+=extends:❯
set listchars+=precedes:❮
set showbreak=↪
" set nolist
set list

" if has('windows')
"   set fillchars=diff:⣿                " BOX DRAWINGS
"   set fillchars+=vert:┃               " HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
"   set fillchars+=fold:·
" endif


set textwidth=80
" set synmaxcol=200              " Don't syntax highlight long lines
" set colorcolumn=80            " Highlight the 80th character limit
if exists('+colorcolumn')
let &l:colorcolumn='+' . join(range(0, 254), ',+')
" let &l:colorcolumn=80
endif
" set nolazyredraw                " Don't redraw
" set redraw

" ==== Misc. ====
set splitright                  " New split placed right
set splitbelow                  " New split placed below
set winminheight=0              " Allow splits to be reduced to a single line

" =============================================================================
"   Preferences
" =============================================================================

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
" set wildmode=longest:full,full   " 👈
set wildmode=list:longest,list:full
" set wildmode=list:full
" set wildmode=list:longest
" set wildmode=list:longest,full

" set completeopt=longest,menu,preview
" set completeopt+=menu
" set completeopt+=longest
" set completeopt+=noinsert
" set completeopt+=insert
" set completeopt+=preview
set completeopt+=menuone
set completeopt-=preview

"  Folding
set foldenable                  " Enable folding
set foldmethod=manual
set foldlevelstart=3            " Default folding level when buffer is opened
set foldnestmax=10              " Maximum nested fold
" set foldtext=functions#NeatFoldText()


iabbrev busniess business
iabbrev congif config
iabbrev teh the
iabbrev w/ with
iabbrev ldr \<leader>

" Disable standard plugins
" let g:loaded_getscriptPlugin = 1
" let g:loaded_netrwPlugin = 1
" let g:loaded_tarPlugin = 1
" let g:loaded_tutor_mode_plugin = 1
" let g:loaded_vimballPlugin = 1
" let g:loaded_zipPlugin = 1
" let g:loaded_gzip = 1
" let g:loaded_rrhelper = 1
