" ==============================================================================
" Config
" ==============================================================================
set encoding=utf-8 nobomb
set clipboard=unnamedplus    " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set autoread                 " Auto-reload changed files
set modeline                 " Respect modeline in files
set modelines=5              " Well, in the first 5 lines of files
set diffopt+=iwhite,vertical " Ignore changes in amount of white space
set lazyredraw               " Don't redraw when we don't have to
set nopaste                  " Use system pasting
set noerrorbells             " Disable error bells
set visualbell               " Disable error bells
set belloff=all              " Disable error bells
" set ttyfast                  " DEPRICATED: removed from neovim
set hidden                   " Keep buffers alive
set nospell                  " Let filetype settings set spell
set noswapfile               " No thanks
set nobackup                 " I'm alright
set splitbelow               " New split placed below
set splitright               " New split placed right
set winminheight=0           " Allow splits to be reduced to a single line
set viewoptions=cursor,folds,slash,unix " What to save in sessions
set undofile                 " Persistent Undo though
set undodir=~/.config/nvim/undo

set shell=/usr/local/bin/bash

" set grepprg=ag\ --vimgrep\ --nocolor\ $*
" set grepformat=%f:%l:%c:%m
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use Ag for Ack
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

" ==============================================================================
"   Input & Navigation
" ==============================================================================

" === Navigation/Motion ===
set mouse=a                     " Enable the mouse
if has('mouse_sgr')
    set ttymouse=sgr
endif
set backspace=indent,eol,start  " Make <BS> work as expected
" set formatoptions-=c            " Auto-wrap comments using textwidth, inserting the current comment leader automatically.
" set formatoptions-=r            " Automatically insert the current comment leader after hitting <Enter> in Insert mode.
set formatoptions-=o              " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set formatoptions+=j              " Get rid of comment leaders when joining lines
set nostartofline                 " Don't reset cursor to start of line when moving around
set virtualedit=block

" === Tabs & Spaces ===
set autoindent                  " Autoidentation on
set copyindent                  " Copy indent from the previous line
set expandtab                   " Expand Tabs (pressing Tab inserts spaces)
set shiftround                  " Round indent to multiple of 'shiftwidth'
set smartindent                 " Smart Indentation on
set smarttab                    " Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set nojoinspaces                " don't autoinsert two spaces after '.', '?', '!' for join command


set whichwrap=s,[,],<,> "Allow specified keys to move to the previous/next line
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

" ==============================================================================
"   Styles
" ==============================================================================
set termguicolors
" set guicursor=
" let g:vitality_shell_cursor = 1
" set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:block-lCursor,r-cr:hor20-Cursor/lCursor
set guicursor=a:blinkon0
set guicursor+=n-c:block-Cursor/lCursor-blinkon0
set guicursor+=i-ci:block-lCursor
set guicursor+=v-ve:block-iCursor
set guicursor+=r-cr:block-rCursor
" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

highlight Comment gui=italic
" set t_Co=256
" set background=dark

colorscheme codedark
" colorscheme gruvbox
" colorscheme apprentice
" colorscheme spring-night
let g:quantum_italics=1          " Enable darker quantum colortheme
let g:quantum_black=1            " Enable italic font in quantum colorscheme
" let g:enable_italic_font=1     " Enable italic font in one dark colorscheme
" let g:enable_bold_font=1       " Enable bold   font in one dark colorscheme
" set concealcursor=iv
set conceallevel=1             " Enable conceal
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
set showtabline=2
set notitle                    " Don't Show the filename in the window titlebar
" set linespace=0    " No extra spaces between rows
" set pumheight=20   " Avoid the pop up menu occupying the whole screen


" syntax sync minlines=200
" syntax sync maxlines=500

" set textwidth=78
" set synmaxcol=200             " Don't syntax highlight long lines
if exists('+colorcolumn')
  execute "set colorcolumn=" . join(range(81,335), ',')
endif


" ==============================================================================
" === Formatting Characters ===
" ==============================================================================
" ¬ ↪ → · ● ❯ ❮
set listchars+=tab:→\   " Comment here to keep whitespace intact
" set listchars+=eol:¬   " Comment here to keep whitespace intact
" set listchars+=eol:\    " Comment here to keep whitespace intact
set listchars+=trail:●
" set listchars+=nbsp:\   " Comment here to keep whitespace intact
" set listchars+=nbsp:●   " Comment here to keep whitespace intact
" set listchars+=space:●   " Comment here to keep whitespace intact
" set listchars+=extends:❯
" set listchars+=precedes:❮
set showbreak=↪
set list

" === UI Characters ===
" \ | │ ║ ─
set fillchars+=stl:\           " Fix issue with statuslineNC Highlighting
set fillchars+=stlnc:\         " Fix issue with statuslineNC Highlighting
set fillchars+=vert:│
set fillchars+=diff:─
set fillchars+=fold:─

set emoji                      " When on all Unicode emoji characters are considered to be full width.

if has('ambiwidth')
  " ref: https://gist.github.com/sgk/5991138
  set ambiwidth=double "Use twice the width of ASCII characters for Multibyte
endif

" ==============================================================================
"   Preferences
" ==============================================================================

" === Search ===
set magic                       " Enable extended regexes
" set gdefault                    " By default add g flag to search/replace. Add g to toggle
set incsearch                   " Search as characters are entered
set ignorecase                  " Ignore case of searches
set smartcase                   " Ignore 'ignorecase' if search patter contains uppercase characters
set hlsearch                    " Highlight matches
set hlsearch | nohlsearch       " Highlight search patterns, support reloading
set wrapscan                    " Searches wrap around the end of the file

" ==============================================================================
" === Dictionary ===
" ==============================================================================
set spelllang=en,en_us
set dictionary+=~/grammar/google-10000-english-usa.txt
" setlocal dictionary+=/usr/share/dict/words
" setlocal dictionary+=/usr/share/dict/american-english



" ==============================================================================
" === Folding ===
" ==============================================================================
set foldenable                  " Enable folding
set foldmethod=indent
" set foldmethod=syntax
set foldlevelstart=6            " Default folding level when buffer is opened
set foldnestmax=10              " Maximum nested fold
set foldtext=functions#NeatFoldTextTwo()


" ==============================================================================
" === ≈ Completion ===
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


" ==============================================================================
" === Vim Commandline ===
" ==============================================================================

" === General ===
set cmdheight=2
set noshowcmd                  " Show (partial) command in the last line of the screen.
set noshowmode                 " Don't show the current mode (airline takes care of this)
set report=1                   " Report more than x lines changed at once

" === Completion ===
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

" === Messages, etc. ====
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
" set shortmess=aoOcstTF


" ==============================================================================
"  === Misc. ===
" ==============================================================================


" === Abbreviations ===
iabbrev busniess business
iabbrev congif config
iabbrev teh the
iabbrev w/ with
iabbrev ldr leader

" === Disable standard plugins ===
let g:loaded_getscriptPlugin = 1
let g:loaded_gzip = 1
let g:loaded_matchit = 1
let g:loaded_matchparen = 1
let g:loaded_netrwPlugin = 1
let g:loaded_rrhelper = 1
let g:loaded_tarPlugin = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_vimballPlugin = 1
let g:loaded_zipPlugin = 1

let dgs#username='dunstontc'

let g:session_directory='~/.config/nvim/sessions'

let g:wiki = { 'root' : '~/Documents/Wiki/' }

let g:tcd#testvar=1

if exists("$TMUX")
  " Get the environment variable
  let tmux_pane_name_cmd = 'tmux display -p \#D'
  let tmux_pane_name = substitute(system(g:tmux_pane_name_cmd), "\n", "", "")
  let tmux_env_var = "TMUX_PWD_" . substitute(g:tmux_pane_name, "%", "", "")
  unlet tmux_pane_name tmux_pane_name_cmd
  function! BroadcastTmuxCwd()
    let filename = substitute(expand("%:p:h"), $HOME, "~", "")
    let output = system("tmux setenv -g ".g:tmux_env_var." ".l:filename)
  endfunction
endif


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

