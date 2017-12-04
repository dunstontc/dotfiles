" ==============================================================================
"   Config
" ==============================================================================
set encoding=utf-8 nobomb
set clipboard=unnamedplus  " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set modeline               " Respect modeline in files
set modelines=5            " Well, in the first 5 lines of files
set noerrorbells           " Disable error bells
set visualbell             " Disable error bells
set belloff=all            " Disable error bells
set report=100             " Minimum # of changes for commandline notification
" set ttyfast
set hidden                 " Keep buffers alive
set nospell                " Let filetype settings set spell

set noswapfile             " No thanks
set nobackup               " I'm alright
set undofile               " Persistent Undo though
set undodir=~/.config/nvim/undo

set shell=/usr/local/bin/bash

" ==============================================================================
"   Input & Navigation
" ==============================================================================
set mouse=a                     " Enable the mouse
set backspace=indent,eol,start  " Make <BS> work as expected
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


" ==============================================================================
"   Styles
" ==============================================================================
set termguicolors
" set guicursor=
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0


" set nvim_tui_enable_cursor_shape=1
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2
" set t_Co=256
" set background=dark

colorscheme codedark
" colorscheme gruvbox
" colorscheme apprentice
" let g:enable_bold_font=1       " Enable bold   font in one dark colorscheme
" let g:enable_italic_font=1     " Enable italic font in one dark colorscheme

let g:quantum_black=1
" colorscheme spring-night
let g:quantum_italics=1

highlight Comment gui=italic
" highlight clear Normal
" highlight! link Normal Cursor
" set winhighlight=Normal:NormalNC,NormalNC:Normal
" syntax sync minlines=200
" syntax sync maxlines=500
" set synmaxcol=400


set conceallevel=2             " Enable conceal
set cmdheight=3
set cursorline                 " Highlight current line
set nowrap                     " Do not wrap lines
set number                     " Enable line numbers
" set numberwidth=4
" set relativenumber             " Show numbers relative to current line
set noruler                      " Show the cursor position
set scrolloff=5                " Start scrolling x lines before horizontal border of window
set sidescrolloff=5            " Start scrolling x columns before vertical border of window
set sidescroll=5
" set showmatch                  " Highlight matching braces
set emoji                      " When on all Unicode emoji characters are considered to be full width.


set fillchars+=stl:\           " Maybe fix issue with statuslineNC Highlighting???
set fillchars+=stlnc:\         " Maybe fix issue with statuslineNC Highlighting???
" set fillchars+=vert:\|│║
set fillchars+=vert:│
" set fillchars+=diff:-
set fillchars+=fold:─



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
" set shortmess+=F               " Don't give the file info when editing a file,
                               "     like `:silent` was used for the command
set showcmd                    " Show (partial) command in the last line of the screen.
set noshowmode                 " Don't show the current mode (airline takes care of this)
set notitle                    " Don't Show the filename in the window titlebar
set report=1                  " Report more than 10 lines changed at once
" set linespace=0    " No extra spaces between rows
" set pumheight=20   " Avoid the pop up menu occupying the whole screen


set listchars+=tab:→\   " Comment here to keep whitespace intact
" set listchars+=eol:¬
set listchars+=eol:\    " Comment here to keep whitespace intact
" set listchars+=trail:●
set listchars+=trail:·
set listchars+=nbsp:\   " Comment here to keep whitespace intact
" set listchars+=extends:❯
" set listchars+=precedes:❮
set showbreak=↪
" set nolist
set list

" if has('windows')
"   set fillchars=diff:⣿                " BOX DRAWINGS
"   set fillchars+=vert:┃               " HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
"   set fillchars+=fold:·
" endif


set textwidth=78
" set synmaxcol=200              " Don't syntax highlight long lines
" set colorcolumn=80            " Highlight the 80th character limit
if exists('+colorcolumn')
execute "set colorcolumn=" . join(range(81,335), ',')
" let &l:colorcolumn='+' . join(range(0, 254), ',+')
" let &l:colorcolumn=80
endif
" set nolazyredraw                " Don't redraw
" set redraw

" ==== Misc. ====
set splitright                  " New split placed right
set splitbelow                  " New split placed below
set winminheight=0              " Allow splits to be reduced to a single line

" ==============================================================================
"   Preferences
" ==============================================================================

"  Search
set magic                       " Enable extended regexes
set gdefault                    " By default add g flag to search/replace. Add g to toggle
set incsearch                   " Search as characters are entered
set hlsearch                    " Highlight matches
set ignorecase                  " Ignore case of searches
set smartcase                   " Ignore 'ignorecase' if search patter contains uppercase characters

set wildmenu                    " Visual autocomplete for command menu
" set wildcharm=<C-z>
" set wildmode=longest:full,full   " 👈
set wildmode=list:longest,list:full
" set wildmode=list:full
" set wildmode=list:longest
" set wildmode=list:longest,full
set wildignorecase
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

" set completeopt+=longest
" set completeopt+=menu
set completeopt+=menuone
" set completeopt-=noinsert
" set completeopt+=preview
" set completeopt-=preview

" === dictionary ===
set dictionary+=~/grammar/google-10000-english-usa.txt
" setlocal dictionary+=/usr/share/dict/words
" setlocal dictionary+=/usr/share/dict/american-english

"  Folding
set foldenable                  " Enable folding
set foldmethod=manual
set foldmethod=syntax
set foldlevelstart=3            " Default folding level when buffer is opened
set foldnestmax=10              " Maximum nested fold
" set foldtext=functions#NeatFoldText()


iabbrev busniess business
iabbrev congif config
iabbrev teh the
iabbrev w/ with
iabbrev ldr leader
" Disable standard plugins
" let g:loaded_getscriptPlugin = 1
" let g:loaded_netrwPlugin = 1
" let g:loaded_tarPlugin = 1
" let g:loaded_tutor_mode_plugin = 1
" let g:loaded_vimballPlugin = 1
" let g:loaded_zipPlugin = 1
" let g:loaded_gzip = 1
" let g:loaded_rrhelper = 1

" ==============================================================================
"  === Misc. ===
" ==============================================================================

let g:wiki = { 'root' : '~/Documents/Wiki/' }

let g:tcd#testvar=1


let g:terminal_color_0 =  "#1e1e1e"  " black
let g:terminal_color_1 =  "#d16969"  " red
let g:terminal_color_2 =  "#608b4e"  " green
let g:terminal_color_3 =  "#d7ba7d"  " yellow
let g:terminal_color_4 =  "#569cd6"  " blue
let g:terminal_color_5 =  "#c586c0"  " magenta
let g:terminal_color_6 =  "#4ec9b0"  " cyan
let g:terminal_color_7 =  "#d4d4d4"  " white
let g:terminal_color_8 =  "#1e1e1e"  " bright_black
let g:terminal_color_9 =  "#d16969"  " bright_red
let g:terminal_color_10 = "#608b4e"  " bright_green
let g:terminal_color_11 = "#d7ba7d"  " bright_yellow
let g:terminal_color_12 = "#569cd6"  " bright_blue
let g:terminal_color_13 = "#c586c0"  " bright_magenta
let g:terminal_color_14 = "#4ec9b0"  " bright_cyan
let g:terminal_color_15 = "#d4d4d4"  " bright_white
let g:terminal_color_background = g:terminal_color_0
let g:terminal_color_foreground = g:terminal_color_7
if &background == "light"
    let g:terminal_color_background = g:terminal_color_7
    let g:terminal_color_foreground = g:terminal_color_2
endif

