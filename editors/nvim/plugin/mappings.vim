scriptencoding utf-8

" === Mouse Mappings === {{{
map <S-ScrollWheelUp> <C-U>
map <S-ScrollWheelDown> <C-D>
" }}}

" === timeout === {{{
" set ttimeout                    " Window to complete key code sequences
" set ttimeoutlen=50
" set timeout                     " Window to complete multi key maps
" set timeoutlen=750
" set timeoutlen=1000
" }}}


let mapleader="\<Space>"
let maplocalleader = ","

" === Unsorted ==={{{
nnoremap ; :
vnoremap ; :

nnoremap ' `
nnoremap ` '

nnoremap v mvv

nnoremap <S-m> :Denite messages<CR>

noremap R @
nmap <S-U> <C-r>

" Delete to start of line with <D-BS>
nnoremap <C-u> hv0"_d<esc>

" Quit with Q
nnoremap q :x<CR>
nnoremap <S-Q> q

" Clear highlights & commands
nnoremap <silent>\ :noh<CR>:echo<CR>
" nnoremap <silent>\ :noh<CR>:call anzu#clear_search_status()<CR>:echo<CR>

" Escape the terminal
tnoremap <Esc> <C-\><C-n>

" Bigger Steps
noremap <S-H> 0
noremap <S-L> $
vnoremap <S-L> g_

" Better Steps
noremap <S-E> ge
noremap <S-B> w

" Step through wrapped lines
noremap j gj
noremap k gk

" Put newly available 'w' to good use
noremap w @
noremap <S-W> @@

nnoremap g<S-i> gi<esc>

" gtfo
nnoremap fj :Sayonara<CR>
" }}}

" === Ctrl Mappings === {{{
" use ctrl-q instead of <esc>, stay on the home row
inoremap <C-q> <C-c>
nnoremap <C-q> <Nop>
vnoremap <C-q> <C-c>
" xnoremap <C-q> <C-c>

" Use ctrl-s to save. (Can mess with flow control)
nnoremap <silent><C-s> :w<CR>
inoremap <silent><C-s> <C-o>:w<CR>

nnoremap <C-p> :Denite -start-filter file_mru<CR>

" Move splits around, as we use ctrl-hjkl to navigate
nnoremap <C-W><left> <C-W>H
nnoremap <C-W><right> <C-W>L
nnoremap <C-W><down> <C-W>J
nnoremap <C-W><up> <C-W>K

" <C-m>
nnoremap <F17> :Denite -start-filter file_mru<CR>

" <C-d>
" Dupe lines
nnoremap <C-d> mxV"zy"zp`xjmx
inoremap <C-d> <esc>mxV"zy"zp`xjmx
vnoremap <C-d> Vypgv
noremap <M-S-Down> <nop>


" }}}

" === Bracket Maps === {{{
nmap [l <Plug>tcd_loc_previous
nmap ]l <Plug>tcd_loc_next
nmap <silent>[<S-l> :ll<cr>
nmap [q <Plug>tcd_qf_next
nmap ]q <Plug>tcd_qf_previous
" }}}

" === fn key mappings === {{{
" https://unix.stackexchange.com/questions/53581/sending-function-keys-f1-f12-over-ssh

" Edits in normal mode
nnoremap <BS> mdi<DEL><esc>`dmd
nnoremap ,, i<space><esc>
nnoremap [<Space> mwO<esc>`wmw
nnoremap ]<Space> mwo<esc>`wmw
nnoremap <F18> mwo<esc>`wmw
nnoremap <F19> mwO<esc>`wmw

" Comment wih <CMD>/
" F14 -- ^[[1;2Q
noremap <silent><F14> :TComment<CR>
inoremap <silent><F14> <esc>:TComment<CR>

" <S-CR> New line below
" F18 -- ^[[17;2~
inoremap <F18> <esc>o
" <D-S-CR> New line above
" F19 -- ^[[18;2~
inoremap <F19> <esc>O

" === Indentation ===
" F15 -- ^[[1;2R
" F16 -- ^[[1;2S
vmap <silent><F15> <gv
vmap <silent><F16> >gv
nmap <silent><F15> <<
nmap <silent><F16> >>
imap <silent><F15> <esc><<A
imap <silent><F16> <esc>>>A
" vmap <silent><leader>[ <gv
" vmap <silent><leader>] >gv
" nmap <silent><leader>[ <<
" nmap <silent><leader>] >>
" imap <silent><leader>[ <esc><<
" imap <silent><leader>] <esc>>>
" }}}

" === Alt Keys === {{{
" With iTerm2 on OSX
" Alt + h = ˙
" Alt + j = ∆
" Alt + k = ˚
" ALT + l = ¬

" Increase or decrease indent for selected/current line(s)
vmap <silent>˙ <gv
vmap <silent>¬ >gv
nmap <silent>˙ <<
nmap <silent>¬ >>
imap <silent>˙ <esc><<A
imap <silent>¬ <esc>>>A

" Move selected/current line(s) up or down
nnoremap <silent>˚ :m .-2<CR>==
nnoremap <silent>∆ :m .+1<CR>==
inoremap <silent>˚ <Esc>:m .-2<CR>==gi
inoremap <silent>∆ <Esc>:m .+1<CR>==gi
vnoremap <silent>˚ :m '<-2<CR>gv=gv
vnoremap <silent>∆ :m '>+1<CR>gv=gv
" (Meta + j = ê)
" (Meta + k = ë)

nnoremap <M-Up> :m .-2<CR>==
nnoremap <M-Down> :m .+1<CR>==
inoremap <M-Up> <Esc>:m .-2<CR>==gi
inoremap <M-Down> <Esc>:m .+1<CR>==gi
vnoremap <M-Up> :m '<-2<CR>gv=gv
vnoremap <M-Down> :m '>+1<CR>gv=gv
vnoremap <M-Down> :m '>+1<CR>gv=gv

" Insert after word with <M-a>
nnoremap å ea

" Use ⌥ left/right in command mode
" cnoremap <Esc>b <S-Left>
" cnoremap <Esc>f <S-Right>
" }}}

" Repeat on every line {{{
" repeat last command for each line of a visual selection
vnoremap . :normal .<CR>
" replay @q macro for each line of a visual selection
vnoremap @q :normal @q<CR>
"}}}

" === Unused ===
" imap <C-F>
" nmap S


" === readline ===
inoremap <C-u> <esc>v0"_di
" inoremap <C-a> <C-o>0
" inoremap <C-e> <C-o>$
" inoremap <M-left> <C-o>b
" inoremap <M-right> <C-o>e

" === Copy & Paste === {{{

" Yank into the void
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
" noremap dd "_dd
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C

inoremap <esc> <esc><esc>

" Paste from the top of the stack
nnoremap ,p "0p
vnoremap ,p "0p
" nnoremap p "0P
" vnoremap p "0P
" Paste & persist
vnoremap p pgvy

" Cut better
nnoremap X Vx

" Yank Better
nnoremap yy Vy
nnoremap <S-y> v$y

"}}}

""
" @subsection Plugins

" === junegunn/EasyAlign === {{{
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" }}}

" === terryma/vim-expand-region === {{{
" map K <Plug>(expand_region_expand)
" map J <Plug>(expand_region_shrink)
" }}}

" === haya14busa/vim-edgemotion === {{{
map <S-j> <Plug>(edgemotion-j)
map <S-k> <Plug>(edgemotion-k)
" }}}

" === osyo-manga/vim-anzu === {{{
" nmap n <Plug>(anzu-n-with-echo)

" nmap n <Plug>(anzu-n)
" nmap N <Plug>(anzu-N)
" nmap * <Plug>(anzu-star)
" nmap # <Plug>(anzu-sharp)

" if start anzu-mode key mapping
" nmap n <Plug>(anzu-mode-n)
" nmap N <Plug>(anzu-mode-N)
" }}}

" === haya14busa/incsearch.vim === {{{
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)
"
" map n <Plug>(incsearch-nohl)<Plug>(anzu-n-with-echo)
" map N <Plug>(incsearch-nohl)<Plug>(anzu-N-with-echo)

let g:incsearch#auto_nohlsearch = 0                   " Auto unhighlight after searching
let g:incsearch#do_not_save_error_message_history = 1 " Don't store incsearch errors in history
let g:incsearch#consistent_n_direction = 1            " When searching backward, do not invert meaning of n and N
" }}}

" === haya14busa/is.vim  {{{
" map n <Plug>(is-nohl)<Plug>(anzu-n-with-echo)
" map N <Plug>(is-nohl)<Plug>(anzu-N-with-echo)
"
" map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
" map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
" map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
" map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)
" }}}

" === pelodelfuego/vim-swoop === {{{
let g:swoopUseDefaultKeyMap = 0
" }}}

" === slash === {{ {
" noremap <plug>(slash-after) zz
" }}}

" === tomtom/tcomment === {{{
let g:tcomment_maps=1
let g:tcomment_mapleader1='<C-d>'
let g:tcomment_mapleader2='<C-d>'
let g:tcomment_mapleader_comment_anyway=''
let g:tcomment_textobject_inlinecomment=''
" }}}

" === w0rp/ale === {{{
" nmap <silent> [a <Plug>(ale_previous_wrap)
" nmap <silent> ]a <Plug>(ale_next_wrap)
" }}}

" === heavenshell/vim-pydocstring === {{{
let g:pydocstring_enable_mapping = 0
let g:pydocstring_enable_comment = 0
let g:pydocstring_templates_dir  = '~/.config/nvim/after/pydocstring'
nmap <silent>gd <Plug>(pydocstring)
" }}}

" === vim-multiple-cursors === {{{
let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'
" }}}

" === AndrewRadev/splitjoin.vim === {{{
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
let g:splitjoin_normalize_whitespace = 1
let g:splitjoin_trailing_comma = 1
let g:splitjoin_python_brackets_on_separate_lines = 1
" nmap gs :SplitjoinSplit<cr>
" nmap gj :SplitjoinJoin<cr>
" }}}

" === AndrewRadev/switch.vim === {{{
" let g:switch_mapping='\<CR>'
" let g:switch_mapping="-"
" nnoremap + :call switch#Switch({'definitions': g:variable_style_switch_definitions})<cr>
" nnoremap - :Switch<cr>
" nnoremap - :Switch<CR>:echo<CR>
" }}}

" === sidemenu === {{{
" nmap <Leader>y <Plug>(sidemenu)
" xmap <Leader>y <Plug>(sidemenu-visual)
" nnoremap ,0 :call quickmenu#toggle(0)<CR>
" }}}

" === MattesGroeger/vim-bookmarks === {{{
let g:bookmark_no_default_key_mappings = 0
" nmap <Leader><Leader> <Plug>BookmarkToggle
" nmap <Leader>i <Plug>BookmarkAnnotate
" nmap <Leader>a <Plug>BookmarkShowAll
" nmap <Leader>j <Plug>BookmarkNext
" nmap <Leader>k <Plug>BookmarkPrev
" nmap <Leader>c <Plug>BookmarkClear
" nmap <Leader>x <Plug>BookmarkClearAll
" nmap <Leader>kk <Plug>BookmarkMoveUp
" nmap <Leader>jj <Plug>BookmarkMoveDown
" nmap <Leader>g <Plug>BookmarkMoveToLine
" }}}

" === christoomey/vim-tmux-navigator === {{{
" let g:tmux_navigator_no_mappings = 1
" nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
" nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
" nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
" nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
" }}}

" === gitgutter === {{{
let g:gitgutter_map_keys = 0
" }}}

" === frioux/vim-regedit === {{{
nmap gr <Plug>(RegEditPrefix)
nmap g<S-R> <Plug>(RegEditPostfix)
" }}}

""
" @subsection Custom Motions & Objects

" === kana/vim-textobj-fold === {{{
" let g:textobj_fold_no_default_key_mappings=0
" noremap az <Plug>(textobj-fold-a)
" noremap iz <Plug>(textobj-fold-i)
" }}}

" pretty much autoselect quotes
" xmap q iq
" omap q iq

" === textobj_between === {{{
" " let g:textobj_between_no_default_key_mappings=0
" autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')
" ]= and [= instead of a= and aa=
" autocmd VimEnter * call after_object#enable([']', '['], '=', ':')
" }}}

" === joereynolds/place.vim === {{{
" nmap gp <Plug>(place-insert)
" <Plug>(place-insert-multiple)
" }}}

""
" @subsection Leader Mappings, leader maps

" ==============================================================================
" === <leader> === {{{
" ==============================================================================
nnoremap <leader><leader> <esc>

" Tab -- We don't use tabs...?
nnoremap <leader><Tab> :bn<CR>
nnoremap <leader><S-Tab> :bp<CR>
" `   -- Same as VSCode term hotkey
" /   -- Search & replace
nnoremap <leader>/ :%s///g<left><left><left>
" a   -- Add
nnoremap <leader>a <Plug>(place-insert)
" c   -- Comment
noremap <silent> <leader>c :TComment<CR>
" f   -- Find (grep)
noremap <silent> <leader>f :Denite -start-filter grep<CR>
" l   -- Neoformat
noremap <leader>l :Neoformat<CR>
" m   -- replay Macro
nnoremap <leader>m @
" q   -- Quit
" nnoremap <leader>q qq
" r   -- Reload
nnoremap <leader>rr :source $MYVIMRC <CR>:echo<CR>
" f t -- FileTree
nnoremap <leader>ft :VimFilerExplorer<CR>
" v   -- Vertical Split
nnoremap <leader>v :vsplit \| :echo<CR>

" left  -- Close Folds
nnoremap <leader><Left> zc
" right -- Open  Folds
nnoremap <leader><Right> zo
nnoremap <leader><Up> :bprev<CR>
nnoremap <leader><Down> :bnext<CR>
" }}}

" ==============================================================================
"  === b -- Buffers=== {{{
" ==============================================================================
" l -- List Buffers
nnoremap <leader>b :Denite -start-filter buffer<CR>
" Next Buffer
nnoremap <leader>bn :bn<CR>
" Previous Buffer
nnoremap <leader>bp :bp<CR>
" Allocate all buffers into Horizontal Splits
nnoremap <leader>bh :ball<CR>
" Close all buffers but the current one
nnoremap <leader>bo :BufOnly<CR>
" Allocate all buffers into Vertical Splits
nnoremap <leader>bv :vert ball<CR>
" Done with a buffer
nnoremap <leader>bd :bd<CR>
" Close a buffer, leave it on the list
nnoremap <leader>bq :q<CR>
" }}}

" ==============================================================================
"  === d -- Denite === {{{
" ==============================================================================
nnoremap <leader>, :Denite -start-filter menu:config<CR>
nnoremap <leader>dc :Denite -start-filter command<CR>
nnoremap <leader>d<S-c> :Denite -start-filter command_history<CR>
nnoremap <leader>db :Denite -start-filter bookmark<CR>
nnoremap <leader>dd <NOP>
nnoremap <leader>de :Denite -start-filter tcd_env<CR>
nnoremap <leader>df :Denite -start-filter filetype<CR>
nnoremap <leader>dg :Denite -start-filter ghq<CR>
nnoremap <leader>dh :Denite -start-filter help<CR>
nnoremap <leader>di :Denite -start-filter menu:interfaces<CR>
nnoremap <leader>dj :Denite -start-filter jump<CR>
nnoremap <leader>dk :Denite -start-filter menu:map_list<CR>
nnoremap <leader>d<S-k> :Maps<CR>
nnoremap <leader>dl :Denite -start-filter tcd_loclist<CR>
nnoremap <leader>dm :Denite -start-filter marks<CR>
nnoremap <leader>do :Denite -start-filter options<CR>
nnoremap <leader>dp :Denite -start-filter projectile -default-action=custom<CR>
nnoremap <leader>dq :Denite -start-filter tcd_quickfix<CR>
nnoremap <leader>dt :Denite -start-filter todotxt_local<CR>
nnoremap <leader>d<S-T> :Denite -start-filter todotxt<CR>
nnoremap <leader>ds :Denite -start-filter sauce<CR>
nnoremap <leader>d<S-S> :Denite -start-filter sauce_file<CR>
nnoremap <leader>du :Denite -start-filter ultisnips<CR>
nnoremap <leader>d<S-U> :Denite -start-filter ultisnips_file<CR>
" }}}

" ==============================================================================
"  === e -- Edit === {{{
" ==============================================================================
" lowercase to split
" uppercase for current edit
" (other than 't')

" Edit Init.vim
nnoremap <leader>ev :vsplit $MYVIMRC<CR>:echo<CR>
nnoremap <leader>e<S-V> :edit $MYVIMRC<CR>:echo<CR>
" Edit Settings
nnoremap <leader>es :vs ~/.config/nvim/plugin/settings.vim<CR>:echo<CR>
nnoremap <leader>e<S-S> :edit ~/.config/nvim/plugin/settings.vim<CR>:echo<CR>
" Edit Lightline
nnoremap <leader>el :vsplit ~/.config/nvim/plugin/lightline.vim<CR>:echo<CR>
nnoremap <leader>e<S-L> :edit ~/.config/nvim/plugin/lightline.vim<CR>:echo<CR>
" Edit Keys
nnoremap <leader>ek :vsplit ~/.config/nvim/plugin/mappings.vim<CR>:echo<CR>
nnoremap <leader>e<S-K> :edit ~/.config/nvim/plugin/mappings.vim<CR>:echo<CR>
" Edit Denite
nnoremap <leader>ed :vsplit ~/.config/nvim/plugin/denite.vim<CR>:echo<CR>
nnoremap <leader>e<S-D> :edit ~/.config/nvim/plugin/denite.vim<CR>:echo<CR>
" Edit Commands
nnoremap <leader>ec :vsplit ~/.config/nvim/plugin/commands.vim<CR>:echo<CR>
nnoremap <leader>e<S-C> :edit ~/.config/nvim/plugin/commands.vim<CR>:echo<CR>
" Edit Plugins
nnoremap <leader>ep :vsplit ~/.config/nvim/plugin/plugins.vim<CR>:echo<CR>
nnoremap <leader>e<S-P> :edit ~/.config/nvim/plugin/plugins.vim<CR>:echo<CR>
" Edit Interfaces
nnoremap <leader>ei :vsplit ~/.config/nvim/plugin/ui.vim<CR>:echo<CR>
nnoremap <leader>e<S-I> :edit ~/.config/nvim/plugin/ui.vim<CR>:echo<CR>
" Edit Theme
nnoremap <leader>et :vsplit ~/Projects/GitHub/vim-vscode-theme/colors/dark_plus.vim<CR>:echo<CR>
nnoremap <leader>eT :edit ~/Projects/GitHub/vim-vscode-theme/colors/dark_plus.vim<CR>:echo<CR>
" Edit Ultisnips
nnoremap <leader>eu :VimFiler -explorer ~/.config/nvim/snipz<CR>
" }}}

" ==============================================================================
"  === f -- Find (files) === {{{
" ==============================================================================

nnoremap <leader>fd :FZF ~/.dotfiles<CR>
nnoremap <leader>fk :Maps<CR>
" nnoremap <leader>fv :FZF ~/.config/nvim<CR>
" Search in $VIMRUNTIME
nnoremap <leader>fv :FZF ~/.config/nvim<CR>
" }}}

" ==============================================================================
"  === g -- Git === {{{
" ==============================================================================
nnoremap <leader>gs :Gstatus<CR>
" }}}

" ==============================================================================
"  === h -- Help === {{{
" ==============================================================================
" Search the docs
nnoremap <leader><S-H> :Denite -start-filter help<CR>
" Denite Cheat Sheet
nnoremap <leader>hc :Denite -start-filter cheatsheet<CR>
" Cheat Sheet
nnoremap <leader>h<S-c> :Cheat40Open<CR>
" Check Health
nnoremap <leader>hh :checkhealth nvim<CR>
" index.man
nnoremap <leader>hi :H index<CR>
" Quickmenu
" nnoremap <leader>, :call quickmenu#toggle(0)<CR>
" Messages
nnoremap <leader>hm :Denite -start-filter messages<CR>

" ==============================================================================
" hd -- Help:Describe:

" Describe Character
nmap     <leader>hdc :<Plug>(characterize)<CR>
" nnoremap <leader>hdc :ascii<CR>
" Describe Filetype
nnoremap <leader>hdf :set filetype?<CR>
" Describe Current Path'       ],
nnoremap <leader>hdp :GetFullPath<CR>
" Describe Syntax at the cursosr
nnoremap <leader>hds :SynDef<CR>
" List Defined Syntax Groups
nnoremap <leader>hd<S-s> :Denite -start-filter tcd_syntax<CR>
" }}}

" ==============================================================================
"  === p -- Plugins === {{{
" ==============================================================================

" Update Plugins
" nnoremap <leader>pu :Denite menu:dein<CR>
nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>

" }}}

" ==============================================================================
"  === s -- Search === {{{
" ==============================================================================

" Search ~/.dotfiles
" Custom
" noremap <silent> <leader>g. :Denite grep -path=
" .dotfiles
noremap <silent> <leader>g. :Denite grep -start-filter -path=~/.dotfiles<CR>
" Dotfiles
noremap <silent> <leader>gv :Denite grep -start-filter -path=~/.config/nvim<CR>
" }}}

" ==============================================================================
" === t -- Toggle === {{{
" ==============================================================================

" Braces
nnoremap <leader>tb :RainbowParentheses!!<CR>
" Cursorline Highlight
nnoremap <leader>tc :set cul!<CR>
" Folding
nnoremap <leader>tf :normal! zi<CR>
" GitGutter
nnoremap <leader>tg :call gitgutter#toggle()<CR>
" Search Highlight
nnoremap <leader>th :set nohlsearch<CR>
" Highlight Color Values
nnoremap <leader>tk :ColorToggle<CR>
" Line Wrapping
nnoremap <leader>tl :set wrap!<CR>:echo<CR>
" Toggle TableMode
nnoremap <leader>tm :TableModeToggle<CR>
" Paste
nnoremap <leader>tp :set nopaste<CR>
" Quickfix List
nnoremap <leader>tq :copen<CR>
" Relative Line Numbers (set nru!)
nnoremap <leader>tr :set norelativenumber!<CR>
" Toggle Spell Checking
nnoremap <leader>ts :set spell!<CR>:echo<CR>
" Toggle Tagbar
nnoremap <leader>tt :TagbarToggle<CR>
" Invisible Characters (whitespace)
nnoremap <leader>tw :set list!<CR>
" ToggleUndotree (as in ctrl-z)
nnoremap <leader>tz :UndotreeToggle<CR>
" }}}

" ==============================================================================
" === w -- Window === {{{
" ==============================================================================
" nnoremap <leader>wh :split<CR>
" nnoremap <leader>wv :vsplit<CR>
" }}}

" vim: fdm=marker fmr={{{,}}} fdl=0 fen
