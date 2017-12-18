" ==============================================================================
"  === Mouse ===
" ==============================================================================

" map <ScrollWheelUp> <C-Y>
map <S-ScrollWheelUp> <C-U>
" map <ScrollWheelDown> <C-E>
map <S-ScrollWheelDown> <C-D>


" ==============================================================================
"  Key Mappings
" ==============================================================================
set timeoutlen=750

let mapleader="\<Space>"
let maplocalleader = ","

nnoremap ; :
vnoremap ; :

nnoremap ' `
nnoremap ` '

" nnoremap <C-p> :Denite<space>
" nnoremap <C-p>
nnoremap ,u :Unite<space>

" use ctrl-q instead of ⎋ , stay on the home row
inoremap <C-q> <C-c>
nnoremap <C-q> <Nop>
vnoremap <C-q> <C-c>
" xnoremap <C-q> <C-c>

" Move splits around, as we use ctrl-hjkl to navigate
nnoremap <C-W><left> <C-W>H
nnoremap <C-W><right> <C-W>L
nnoremap <C-W><down> <C-W>J
nnoremap <C-W><up> <C-W>K

" nnoremap <C-A> ggVG

" Clear highlights & commands
nnoremap <silent>\ :noh<CR>:call anzu#clear_search_status()<CR>:echo<CR>

nnoremap R <Nop>
" Quit with Q
nnoremap q :x<CR>
nnoremap <S-Q> q


" Escape the terminal
tnoremap <Esc> <C-\><C-n>

" Bigger Steps
noremap <S-H> 0
noremap <S-L> $
vnoremap <S-L> g_

" Better Steps
noremap <S-E> ge
noremap <S-B> w

" Put newly available 'w' to good use
noremap w @:
noremap <S-W> @@

" Edits in normal mode
nnoremap <BS> i<DEL><esc><right>
noremap ,, i<space><esc>
nnoremap [<Space> mwO<esc>mx`w
nnoremap ]<Space> mwo<esc>mx`w

" gtfo
nnoremap fj :Sayonara<CR>
inoremap fj <esc>:Sayonara<CR>


" Save wih ⌘ -s
" ᚠ - runic letter f (U+16A0)
nnoremap <silent>ᚠ :silent w<CR>
inoremap <silent>ᚠ <C-o>:silent w<CR>

" Comment wih ⌘ -/
" ᚣ - runic letter yr (U+16A3)
noremap <silent>ᚣ :TComment<CR>
inoremap <silent>ᚣ <esc>:TComment<CR>

" <S-CR> New line below
" ᚾ - runic letter n (U+16BE)
inoremap ᚾ <esc>o
" <C-CR> New line above
" ᚩ - runic letter os o (U+16A9)
inoremap ᚩ <esc>O

" Dupe lines with ⌥ - ⇧ - down
nnoremap 𐌋 mxV"zy"zp`xj
" " Indentation
" vmap <silent><leader>[ <gv
" vmap <silent><leader>] >gv
" nmap <silent><leader>[ <<
" nmap <silent><leader>] >>
" imap <silent><leader>[ <esc><<
" imap <silent><leader>] <esc>>>

" Indentation
" ᚻ - runic letter h (U+16BB)
" ᚢ - runic letter u (U+16A2)
vmap <silent>ᚻ <gv
vmap <silent>ᚢ >gv
nmap <silent>ᚻ <<
nmap <silent>ᚢ >>
imap <silent>ᚻ <esc><<A
imap <silent>ᚢ <esc>>>A


" move the current line up or down
nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap ê <Esc>:m .+1<CR>==gi
" inoremap ë <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv
"        𐌞 = ⌥ + UP
"        𐌓 = ⌥ + DOWN
nnoremap 𐌞 :m .-2<CR>==
nnoremap 𐌓 :m .+1<CR>==
inoremap 𐌞 <Esc>:m .-2<CR>==gi
inoremap 𐌓 <Esc>:m .+1<CR>==gi
vnoremap 𐌞 :m '<-2<CR>gv=gv
vnoremap 𐌓 :m '>+1<CR>gv=gv


" Use ⌥ left/right in command mode
" cnoremap <Esc>b <S-Left>
" cnoremap <Esc>f <S-Right>

" Repeat on every line {{{
" repeat last command for each line of a visual selection
vnoremap . :normal .<CR>
" replay @q macro for each line of a visual selection
vnoremap @q :normal @q<CR>
"}}}

" === Unused ===
" imap <C-F>
" nmap S
" noremap <M-LEFT> :NERDTreeToggle<CR>
" noremap <M-RIGHT> :NERDTreeToggle<CR>

" nnoremap <H-y> :echo "noice"<cr>
"
" map <S-ScrollWheelUp> <C-U>
" map <S-ScrollWheelDown> <C-D>



" === readline ===
" inoremap <C-a> <C-o>0
" inoremap <C-e> <C-o>$
" inoremap <M-left> <C-o>b
" inoremap <M-right> <C-o>e

" ==============================================================================
"  Copy & Paste
" ==============================================================================

" Yank into the void
noremap d "_d
noremap D "_D
noremap dd "_dd
noremap c "_c
noremap C "_C

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

" Yank with keeping cursor position in visual mode {{{
" Thanks @haya14busa
function! s:keepcursor_visual_wrapper(command)
  execute 'normal! gv' . a:command
  execute "normal! gv\<ESC>"
endfunction
xnoremap <silent> y :<C-u>call <SID>keepcursor_visual_wrapper('y')<CR>
xnoremap <silent> Y :<C-u>call <SID>keepcursor_visual_wrapper('Y')<CR>
"}}}




" ==============================================================================
"  Plugins
" ==============================================================================

" === junegunn/EasyAlign ===
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" === vim-expand-region ===
map K <Plug>(expand_region_expand)
" map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

" === junegunn/vim-table-mode ===
let g:table_mode_disable_mappings = 0

" === vim-swoop ===
let g:swoopUseDefaultKeyMap = 0

" === gitgutter ===
let g:gitgutter_map_keys = 0


" === slash ===
" noremap <plug>(slash-after) zz

" === tcomment ===
let g:tcommentMaps=0
let g:tcommentMapLeader1=''
let g:tcommentMapLeader2=''
let g:tcommentMapLeaderCommentAnyway=''
let g:tcommentTextObjectInlineComment=''

" === w0rp/ale ===
nmap <silent> [a <Plug>(ale_previous_wrap)
nmap <silent> ]a <Plug>(ale_next_wrap)

" === heavenshell/vim-pydocstring ===
nmap <silent> <C-_> <Plug>(pydocstring)

" === vim-multiple-cursors ===
let g:multi_cursor_use_default_mapping=0
" Default mapping
" let g:multi_cursor_next_key='𐌍' " (C-m)
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'

" === Anzu ===
" nmap n <Plug>(anzu-n-with-echo)
nmap n <Plug>(anzu-n)
nmap N <Plug>(anzu-N)
nmap * <Plug>(anzu-star)
nmap # <Plug>(anzu-sharp)
" if start anzu-mode key mapping
" nmap n <Plug>(anzu-mode-n)
" nmap N <Plug>(anzu-mode-N)


" === AndrewRadev/splitjoin.vim ===
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
" nmap sj :SplitjoinSplit<cr>
" nmap sk :SplitjoinJoin<cr>

" === AndrewRadev/switch.vim ===
" let g:switch_mapping='\<CR>'
let g:switch_mapping="-"
" nnoremap + :call switch#Switch({'definitions': g:variable_style_switch_definitions})<cr>
" nnoremap - :Switch<cr>
nnoremap - :Switch<CR>:echo<CR>


" === sidemenu ===
" nmap <Leader>y <Plug>(sidemenu)
" xmap <Leader>y <Plug>(sidemenu-visual)
" nnoremap ,0 :call quickmenu#toggle(0)<CR>



" === MattesGroeger/vim-bookmarks ===
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


" ==============================================================================
"  === vim-sneak ===
" ==============================================================================
" let g:sneak#prompt = 'Ƨ '
let g:sneak#prompt = '§ '

let g:sneak#label = 1
let g:sneak#label_esc = "\<Space>"
let g:sneak#target_labels = "asldkfjghzxmcnvb"

let g:sneak#s_next = 1
let g:sneak#use_ic_scs = 1

" noremap z <Plug>Sneak_s
" noremap Z <Plug>Sneak_S

map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T


" ==============================================================================
"  === christoomey/vim-tmux-navigator ===
" ==============================================================================

" let g:tmux_navigator_no_mappings = 1
"
" nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
" nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
" nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
" nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" ==============================================================================
"  Custom Motions & Objects
" ==============================================================================
" === kana/vim-textobj-fold ===
" let g:textobj_fold_no_default_key_mappings=0
" noremap az <Plug>(textobj-fold-a)
" noremap iz <Plug>(textobj-fold-i)


" pretty much autoselect quotes
" xmap q iq
" omap q iq

" " let g:textobj_between_no_default_key_mappings=0
" autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')
" ]= and [= instead of a= and aa=
" autocmd VimEnter * call after_object#enable([']', '['], '=', ':')


" ==============================================================================
"  Leader Mappings
" ==============================================================================

nnoremap <leader><leader> <esc>

" let g:lmap.i={
"             \ 'name': '+Interfaces',
"             \    'c': ['Cheat40Open',                'Cheat Sheet'     ],
"             \    'q': ['call quickmenu#toggle(0)',   'Quickmenu'       ],
"             \    'm': ['call magit#show_magit("v")', 'Magit'           ],
"             \}

" Tab -- We don't use tabs...?
nnoremap <leader><Tab> :bn<CR>
" `   -- Same as VSCode term hotkey
nnoremap <leader>` :Deol -split -start-insert<CR>
" c   -- Comment
noremap <silent> <leader>c :TComment<CR>
" g   -- Grep
noremap <silent> <leader>g :Denite grep<CR>
" l   -- List Buffers
" m   -- replay Macro
nnoremap <leader>m @
" q   -- Quit
" nnoremap <leader>q qq
" s   -- Search & Replace
nnoremap <leader>s :%s///g<left><left><left>
" r   -- Reload
nnoremap <leader>rr :source $MYVIMRC<CR>:call lightline#update_once()<CR>
" u   -- Unundo
nnoremap <leader>u :redo<CR>
" f t -- FileTree
nnoremap <leader>ft :VimFilerExplorer<CR>
" v   -- Vertical Split
nnoremap <leader>v :vsplit \| Startify<CR>:echo<CR>
" x   -- ...Todo...
nnoremap <leader>x :Denite todo<CR>




" ==============================================================================
"  === b -- Buffers===
" ==============================================================================
" l -- List Buffers
nnoremap <leader>l :Denite buffer -mode=normal<CR>
" Next Buffer
nnoremap <leader>bn :bn<CR>
" Previous Buffer
nnoremap <leader>bp :bp<CR>
" Allocate all buffers into Horizontal Splits
nnoremap <leader>bh :ball<CR>
" Allocate all buffers into Vertical Splits
nnoremap <leader>bv :vert ball<CR>
" Done with a buffer
nnoremap <leader>bd :bd<CR>
" Close a buffer, leave it on the list
nnoremap <leader>bq :q<CR>
nnoremap <leader><Left> :bprev<CR>
nnoremap <leader><Right> :bnext<CR>


" ==============================================================================
"  === d -- Denite ===
" ==============================================================================
nnoremap <leader>dc :Denite menu:config<CR>
nnoremap <leader>db :Denite bookmark<CR>
nnoremap <leader>dd :Denite menu:Denite<CR>
nnoremap <leader>dh :Denite help<CR>
nnoremap <leader>dm :Denite file_mru<CR>
nnoremap <leader>ds :Denite menu:dotfiles<CR>
nnoremap <leader>du :Unite
nnoremap <leader>dt :Denite todo<CR>



" ==============================================================================
"  === e -- Edit ===
" ==============================================================================
" lowercase to split
" uppercase for current edit
" (other than 't')

" Edit Init.vim
nnoremap <leader>ev :vsplit $MYVIMRC<CR>:echo<CR>
nnoremap <leader>e<S-V> :edit $MYVIMRC<CR>:echo<CR>
" Edit Settings
nnoremap <leader>es :vs ~/.dotfiles/editors/nvim/plugin/settings.vim<CR>:echo<CR>
nnoremap <leader>e<S-S> :edit ~/.dotfiles/editors/nvim/plugin/settings.vim<CR>:echo<CR>
" Edit Lightline
nnoremap <leader>el :vsplit ~/.dotfiles/editors/nvim/plugin/lightline.vim<CR>:echo<CR>
nnoremap <leader>e<S-L> :edit ~/.dotfiles/editors/nvim/plugin/lightline.vim<CR>:echo<CR>
" Edit Keys
nnoremap <leader>ek :vsplit ~/.dotfiles/editors/nvim/plugin/mappings.vim<CR>:echo<CR>
nnoremap <leader>e<S-K> :edit ~/.dotfiles/editors/nvim/plugin/mappings.vim<CR>:echo<CR>
" Edit Denite
nnoremap <leader>ed :vsplit ~/.dotfiles/editors/nvim/plugin/unite.vim<CR>:echo<CR>
nnoremap <leader>e<S-D> :edit ~/.dotfiles/editors/nvim/plugin/unite.vim<CR>:echo<CR>
" Edit Commands
nnoremap <leader>ec :vsplit ~/.dotfiles/editors/nvim/plugin/commands.vim<CR>:echo<CR>
nnoremap <leader>e<S-C> :edit ~/.dotfiles/editors/nvim/plugin/commands.vim<CR>:echo<CR>
" Edit Plugins
nnoremap <leader>ep :vsplit ~/.dotfiles/editors/nvim/plugin/plugins.vim<CR>:echo<CR>
nnoremap <leader>e<S-P> :edit ~/.dotfiles/editors/nvim/plugin/plugins.vim<CR>:echo<CR>
" Edit Interfaces
nnoremap <leader>ei :vsplit ~/.dotfiles/editors/nvim/plugin/ui.vim<CR>:echo<CR>
nnoremap <leader>e<S-I> :edit ~/.dotfiles/editors/nvim/plugin/ui.vim<CR>:echo<CR>
" Edit Theme
nnoremap <leader>et :vsplit ~/Projects/vim/vim-code-dark/colors/codedark.vim<CR>:echo<CR>
nnoremap <leader>eT :edit ~/Projects/vim/vim-code-dark/colors/codedark.vim<CR>:echo<CR>
" Edit Themes/
nnoremap <leader>eu :vsplit ~/.dotfiles/editors/nvim/colors<CR>:echo<CR>




" ==============================================================================
"  === f -- FZF ===
" ==============================================================================
"
nnoremap <leader>fd :FZF ~/.dotfiles<CR>
" nnoremap <leader>fv :FZF ~/.dotfiles/editors/nvim<CR>
nnoremap <leader>fv :FZF ~/.config/nvim<CR>



" ==============================================================================
"  === h -- Help ===
" ==============================================================================
" Search the docs
nnoremap <leader><S-H> :Denite help<CR>
" Cheat Sheet
nnoremap <leader>hc :Cheat40Open<CR>
" Check Health
nnoremap <leader>hh :checkhealth nvim<CR>
" index.man
nnoremap <leader>hi :H index<CR>
" Quickmenu
" nnoremap <leader>, :call quickmenu#toggle(0)<CR>
" Messages
nnoremap <leader>hm :Capture messages<CR>
" hd -- Help, Describe:
" Describe Character
nnoremap <leader>hdc :ascii<CR>
" Describe Filetype
nnoremap <leader>hdf :set filetype?<CR>
" Describe Current Path'       ],
nnoremap <leader>hdp :GetFullPath<CR>
" Describe Syntax at the cursosr
nnoremap <leader>hds :SynDef<CR>
" List Defined Syntax Groups
nnoremap <leader>hd<S-s> :syntax<CR>



" ==============================================================================
"   p -- Plugins
" ==============================================================================

" Update Plugins
nnoremap <leader>pu :call dein#update()<CR>



" ==============================================================================
"   t -- Toggle
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
nnoremap <leader>tm :tablemode#Toggle()<CR>
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

