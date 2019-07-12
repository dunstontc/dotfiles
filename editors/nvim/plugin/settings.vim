scriptencoding utf-8
" ==============================================================================
" === General === {{{
" ==============================================================================
set encoding=utf-8 nobomb
set clipboard=unnamedplus    " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set autoread                 " Auto-reload changed files
set modeline                 " Respect modeline in files
set modelines=5              " Well, in the first 5 lines of files
set diffopt+=iwhite,vertical " Ignore changes in amount of white space
set nolazyredraw             " Don't redraw when we don't have to
set nopaste                  " Use system pasting
set noerrorbells             " Disable error bells
set visualbell               " Disable error bells
set belloff=all              " Disable error bells
set hidden                   " Keep buffers alive
set nospell                  " Let filetype settings set spell
set spelllang=en,en_us
set splitbelow               " New split placed below
set splitright               " New split placed right
set winminheight=0           " Allow splits to be reduced to a single line
set viewoptions=cursor,folds,slash,unix " What to save in sessions
set cmdheight=1
set showcmd                  " Show (partial) command in the last line of the screen.
set noshowmode                 " Don't show the current mode (airline takes care of this)
set report=1                   " Report more than x lines changed at once

set shell=/bin/bash

" set grepformat=%f:%l:%c:%m
if executable('ag')
  set grepprg=ag\ --vimgrep\ --smart-case     " Use Ag over Grep
  let g:ackprg = 'ag --vimgrep --smart-case'  " Use Ag for Ack
endif
" }}}

" === Paths to files & folders === {{{
set nobackup                 " I'm alright
set noswapfile               " No thanks
set undofile                 " Persistent Undo though
set undodir=~/.config/nvim/undo
set spellfile=~/nvim.d/spell/en.utf-8.add
" set dictionary+=~/grammar/google-10000-english-usa.txt
set dictionary+=/usr/share/dict/words
let g:session_directory='~/.config/nvim/sessions'
" }}}

" === shortmess ==== {{{
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
" }}}

" ==============================================================================
"  === Input & Navigation === {{{
" ==============================================================================

" === Navigation/Motion ===
set mouse=a                       " Enable the mouse
if has('mouse_sgr')
    set ttymouse=sgr
endif
set backspace=indent,eol,start    " Make <BS> work as expected
" set formatoptions-=c            " Auto-wrap comments using textwidth, inserting the current comment leader automatically.
" set formatoptions-=r            " Automatically insert the current comment leader after hitting <Enter> in Insert mode.
set formatoptions-=o              " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set formatoptions+=j              " Get rid of comment leaders when joining lines
set nostartofline                 " Don't reset cursor to start of line when moving around
set virtualedit=block

" === Tabs & Spaces === {{{
set autoindent                  " Autoidentation on
set copyindent                  " Copy indent from the previous line
set expandtab                   " Expand Tabs (pressing Tab inserts spaces)
set shiftround                  " Round indent to multiple of 'shiftwidth'
set smartindent                 " Smart Indentation on
set smarttab                    " Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set nojoinspaces                " don't autoinsert two spaces after '.', '?', '!' for join command
" }}}

set whichwrap=s,[,],<,>         " Allow specified keys to move to the previous/next line
" whichwrap options {{{
" char   key    mode  ~
"  b    <BS>   Normal and Visual
"  s    <Space>   Normal and Visual
"  h    "h"   Normal and Visual (not recommended)
"  l    "l"   Normal and Visual (not recommended)
"  <    <Left>   Normal and Visual
"  >    <Right>   Normal and Visual
"  ~    "~"   Normal
"  [    <Left>   Insert and Replace
"  ]    <Right>   Insert and Replace
" }}}

" }}}

" ==============================================================================
"  === Styles === {{{
" ==============================================================================
" === cursor === {{{
set termguicolors
" set guicursor=
" let g:vitality_shell_cursor = 1
" set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:block-lCursor,r-cr:hor20-Cursor/lCursor
" set guicursor=a:blinkon0
" set guicursor+=n-c:block-Cursor-blinkon0
" set guicursor+=n:block-Cursor-blinkon0
" set guicursor+=o:hor50-Cursor
" set guicursor+=i-c-ci-cr:block-iCursor
" set guicursor+=v-ve:block-vCursor
" set guicursor+=r:block-rCursor
" }}}

" === theme === {{{
highlight Comment gui=italic
set background=dark
colorscheme dark_plus
" let g:lightline.colorscheme = 'dark_plus'
" }}}

" set concealcursor=iv
set conceallevel=1             " Enable conceal
set cursorline                 " Highlight current line
set nowrap                     " Do not wrap lines
set number                     " Enable line numbers
set noruler                    " Show the cursor position
set scrolloff=5                " Start scrolling x lines before horizontal border of window
set sidescrolloff=5            " Start scrolling x columns before vertical border of window
set sidescroll=5
set noshowmatch                " Don't highlight matching braces when you type them
set showtabline=2
set notitle                    " Don't Show the filename in the window titlebar
set linespace=0                " No extra spaces between rows
" set pumheight=20   " Avoid the pop up menu occupying the whole screen

" syntax sync minlines=200
" syntax sync maxlines=500

" set textwidth=78
set synmaxcol=255
" if exists('+colorcolumn')
"   execute "set colorcolumn=" . join(range(81,235), ',')
" endif
" }}}

" ==============================================================================
" === Formatting Characters === {{{
" ==============================================================================
" ¬ ↪ → · ● ❯ ❮
set listchars+=tab:→\    " Comment here to keep whitespace intact
set listchars+=eol:¬     " Comment here to keep whitespace intact
set listchars+=trail:●
" set listchars+=nbsp:●   " Comment here to keep whitespace intact
" set listchars+=space:●   " Comment here to keep whitespace intact
" set listchars+=extends:❯
" set listchars+=precedes:❮
" set showbreak=↪
" set list

" === UI Characters ===
" \ | │ ║ ─
set fillchars=vert:│
set fillchars+=stl:\           " Fix issue with statuslineNC Highlighting
set fillchars+=stlnc:\         " Fix issue with statuslineNC Highlighting
set fillchars+=diff:─
set fillchars+=fold:─
set fillchars+=fold:\         " Test something new

set emoji                      " When on all Unicode emoji characters are considered to be full width.

if has('ambiwidth')
  " ref: https://gist.github.com/sgk/5991138
  set ambiwidth=double "Use twice the width of ASCII characters for Multibyte
endif
" }}}

" ==============================================================================
" === Search === {{{
" ==============================================================================
set hlsearch                    " Highlight matches
set incsearch                   " Search as characters are entered
set inccommand=nosplit          " Shows the effects of a command incrementally, as you type.
" set inccommand=split            " Also shows partial off-screen results in a preview window.
set magic                       " Enable extended regexes
set wrapscan                    " Searches wrap around the end of the file
" set gdefault                    " By default add g flag to search/replace. Add g to toggle
set ignorecase                  " Ignore case of searches
set smartcase                   " Ignore 'ignorecase' if search patter contains uppercase characters
" }}}

" ==============================================================================
" === Folding === {{{
" ==============================================================================
set nofoldenable                " Don't enable folding by default
set foldmethod=syntax
" set foldlevelstart=10           " Default folding level when buffer is opened
" set foldnestmax=10              " Maximum nested fold
" set foldtext=functions#NeatFoldTextTwo()
" }}}

" ==============================================================================
" === Completion === {{{
" ==============================================================================
" set completeopt&
" set completeopt+=longest
" set completeopt+=menu
set completeopt+=menuone
" set completeopt-=noinsert
" set completeopt+=preview
set completeopt-=preview
" set pumheight=20        " Avoid the pop up menu occupying the whole screen
set infercase             " Ignore case on insert completion
set showfulltag           " Show rich info for ins-completion
" }}}

" === Cmdline Completion === {{{
set wildmenu                   " Visual autocomplete for command menu
set wildcharm=<C-z>            " Trigger for commandline completion in macros
" set wildmode=longest:full,full   " 👈
set wildmode=list:longest,list:full
" set wildmode=list:longest,full
" set wildmode=list:full
" set wildmode=list:longest
set wildignorecase
set wildignore+=*.pyc
set wildignore+=.git/*
set wildignore+=.hg/*
set wildignore+=.svn/*
set wildignore+=*.DS_Store
set wildignore+=CVS/*
set wildignore+=*/tmp/*
set wildignore+=*.so
set wildignore+=*.swp
set wildignore+=*.zip
" }}}

