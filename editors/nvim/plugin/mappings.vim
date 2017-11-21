" =============================================================================
"  Key Mappings
" =============================================================================
set timeoutlen=750

nnoremap ; :
vnoremap ; :



nnoremap <C-p> :Denite menu<CR>

" use ctrl-q instead of ⎋ , stay on the home row
" inoremap <esc> <C-g>:echo "Use ctrl-Q dumbass "<CR>
inoremap <C-q> <C-c>
nnoremap <C-q> <Nop>
vnoremap <C-q> <C-c>
" xnoremap <C-q> <C-c>

" Clear highlights & commands
nnoremap <silent>\ :noh<CR>:call anzu#clear_search_status()<CR>:echo<CR>

nnoremap R <Nop>
nnoremap q :q<CR>
" noremap Q q
" TODO: make new shortcut for macros

" Escape the terminal
tnoremap <Esc> <C-\><C-n>

" Save wih ⌘ -s
nnoremap 𐌔 :w<CR>
inoremap 𐌔 <C-g>:w<CR>

" Comment wih ⌘ -/
noremap <silent>𐌍 :TComment<CR>
inoremap <silent>𐌍 <esc>:TComment<CR>

" <S-CR> New line below
inoremap 𐌄 <esc>o
" <C-CR> New line above
inoremap 𐌂 <esc>O


" Bigger Steps
noremap <S-H> 0
noremap <S-L> $

nnoremap <BS> i<DEL><esc><right>
noremap ,, i<space><esc>

" gtfo
nnoremap fj :x<CR>
inoremap fj <esc>:x<CR>

" Yank Better
nnoremap <S-y> Vy
nnoremap 𐌋 mxV"zy"zp`xj

" Yank into the void
noremap d "_d
noremap D "_D
noremap dd "_dd
noremap c "_c
noremap C "_C

" and toss out our leftovers when we put
" vnoremap p "_dP
nnoremap ,p "0p
vnoremap ,p "0p
" nnoremap p "0P
" vnoremap p "0P

nnoremap X Vx

" Thanks w0rp:
" " Run macros with \, which is easier to press.
" nnoremap \ @
" " Repeat macros with \\ too.
" nnoremap \\ @@

" " Indentation
" vmap <silent> <leader>[ <gv
" vmap <silent> <leader>] >gv
" nmap <silent> <leader>[ <<
" nmap <silent> <leader>] >>
" imap <silent> <leader>[ <esc><<
" imap <silent> <leader>] <esc>>>
" Indentation
vmap <silent> 𐌀 <gv
vmap <silent> 𐌁 >gv
nmap <silent> 𐌀 <<
nmap <silent> 𐌁 >>
imap <silent> 𐌀 <esc><<
imap <silent> 𐌁 <esc>>>


" move the current line up or down
" nnoremap <A-j> :m .+1<CR>==
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



nnoremap ,0 :call quickmenu#toggle(0)<CR>
nnoremap ,1 :call quickmenu#toggle(1)<CR>
nnoremap ,2 :call quickmenu#toggle(2)<CR>
nnoremap ,3 :call quickmenu#toggle(3)<CR>
nnoremap ,4 :call quickmenu#toggle(4)<CR>
nnoremap ,5 :call quickmenu#toggle(5)<CR>

" === Unused ===
" imap <C-F>
" nmap S
" noremap <M-LEFT> :NERDTreeToggle<CR>
" noremap <M-RIGHT> :NERDTreeToggle<CR>

" nnoremap <H-y> :echo "noice"<cr>
"
" map <S-ScrollWheelUp> <C-U>
" map <S-ScrollWheelDown> <C-D>

" nnoremap <leader>x :vimgrep TODO **/*.%:e \| cw<CR>



" =============================================================================
"  Plugins
" =============================================================================

" === EasyAlign ===
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" === vim-expand-region ===
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

" === junegunn/vim-table-mode ===
let g:table_mode_disable_mappings = 0

" === vim-swoop ===
let g:swoopUseDefaultKeyMap = 0

" === gitgutter ===
let g:gitgutter_map_keys = 0

" === slash ===
noremap <plug>(slash-after) zz

" === tcomment ===
let g:tcommentMaps=0
let g:tcommentMapLeader1=''
let g:tcommentMapLeader2=''
let g:tcommentMapLeaderCommentAnyway=''
let g:tcommentTextObjectInlineComment=''

" === w0rp/ale ===
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

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

" === sidemenu ===
" nmap <Leader>y <Plug>(sidemenu)
" xmap <Leader>y <Plug>(sidemenu-visual)<Paste><LeftMouse>

" === MattesGroeger/vim-bookmarks ===
let g:bookmark_no_default_key_mappings = 1
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


" =============================================================================
"  === vim-sneak ===
" =============================================================================
" let g:sneak#prompt = 'Ƨ '
let g:sneak#prompt = '§ '

let g:sneak#label = 1
let g:sneak#label_esc = "\<Space>"
let g:sneak#target_labels = "asldkfjghz,xmcnvb"

let g:sneak#s_next = 0
let g:sneak#use_ic_scs = 1

" noremap z <Plug>Sneak_s
" noremap Z <Plug>Sneak_S

" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T


" =============================================================================
"  Custom Motions & Objects
" =============================================================================
" === kana/vim-textobj-fold ===
" let g:textobj_fold_no_default_key_mappings=0
" noremap az	<Plug>(textobj-fold-a)
" noremap iz	<Plug>(textobj-fold-i)


" pretty much autoselect quotes
" xmap q iq
" omap q iq

" " let g:textobj_between_no_default_key_mappings=0
" autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')
" ]= and [= instead of a= and aa=
" autocmd VimEnter * call after_object#enable([']', '['], '=', ':')



" =============================================================================
"  Leader Mappings
" =============================================================================
" let mapleader="\<Space>"
let g:mapleader="\<Space>"

nnoremap <leader><leader> <esc>

" let g:lmap.i={
"             \ 'name': '+Interfaces',
"             \    'c': ['Cheat40Open',                'Cheat Sheet'     ],
"             \    'q': ['call quickmenu#toggle(0)',   'Quickmenu'       ],
"             \    'm': ['call magit#show_magit("v")', 'Magit'           ],
"             \    'n': ['NERDTreeToggle',             'NERDTree'        ],
"             \    's': ['vsplit +Startify',           'Startify'        ],
"             \    't': ['TagBarToggle',               'Tagbar'          ],
"             \    'u': ['Unite',                      'Unite'           ],
"             \    'z': ['UndotreeToggle',             'Undotree'        ],
"             \}

" ` -- Same as VSCode term hotkey
nnoremap <leader>` :Deol -split -start-insert<CR>
" vsplit +terminal
nnoremap <leader>ft :VimFiler<CR>
" nnoremap <leader>ft :VimFiler -direction="topleft"
" g -- Grep
nnoremap <leader>g :vimgrep TODO **/*.%:e \| cw<CR>
" q -- Quit
nnoremap <leader>q :q<CR>
" o -- Only
nnoremap <leader>o :o<CR>
" q -- Q
nnoremap <leader>q q
" s -- Search & Replace
nnoremap <leader>s :%s//g<left><left>
" r -- Reload
nnoremap <leader>rr :source $MYVIMRC<CR>
" u -- Unundo
nnoremap <leader>u :redo<CR>



" =============================================================================
"  === b -- Buffers===
" =============================================================================
" Next Buffer
nnoremap <leader>bn :bn<CR>
" Previous Buffer
nnoremap <leader>bp :bp<CR>



" =============================================================================
"  === d -- Denite ===
" =============================================================================
nnoremap <leader>dc :Denite menu:config<CR>
nnoremap <leader>dd :Denite menu:Denite<CR>
nnoremap <leader>dm :Denite file_mru<CR>
nnoremap <leader>dh :Denite help<CR>
nnoremap <leader>du :Unite <Tab>


" =============================================================================
"  === e -- Edit ===
" =============================================================================
" lowercase to split
" uppercase for current edit
" (other than 't')

" Edit Init.vim
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>e<S-V> :edit $MYVIMRC<CR>
" Edit Settings
nnoremap <leader>es :vs ~/.dotfiles/editors/nvim/plugin/settings.vim<CR>
nnoremap <leader>e<S-S> :edit ~/.dotfiles/editors/nvim/plugin/settings.vim<CR>
" Edit Lightline
nnoremap <leader>el :vsplit ~/.dotfiles/editors/nvim/plugin/lightline.vim<CR>
nnoremap <leader>e<S-L> :edit ~/.dotfiles/editors/nvim/plugin/lightline.vim<CR>
" Edit Keys
nnoremap <leader>ek :vsplit ~/.dotfiles/editors/nvim/plugin/mappings.vim<CR>
nnoremap <leader>e<S-K> :edit ~/.dotfiles/editors/nvim/plugin/mappings.vim<CR>
" Edit Denite
nnoremap <leader>ed :vsplit ~/.dotfiles/editors/nvim/plugin/unite.vim<CR>
nnoremap <leader>e<S-D> :edit ~/.dotfiles/editors/nvim/plugin/unite.vim<CR>
" Edit Commands
nnoremap <leader>ec :vsplit ~/.dotfiles/editors/nvim/plugin/commands.vim<CR>
nnoremap <leader>e<S-C> :edit ~/.dotfiles/editors/nvim/plugin/commands.vim<CR>
" Edit Plugins
nnoremap <leader>ep :vsplit ~/.dotfiles/editors/nvim/plugin/plugins.vim<CR>
nnoremap <leader>e<S-P> :edit ~/.dotfiles/editors/nvim/plugin/plugins.vim<CR>
" Edit Interfaces
nnoremap <leader>ei :vsplit ~/.dotfiles/editors/nvim/plugin/ui.vim<CR>
nnoremap <leader>e<S-I> :edit ~/.dotfiles/editors/nvim/plugin/ui.vim<CR>
" Edit Theme
nnoremap <leader>et :vsplit ~/Projects/vim/vim-code-dark/colors/codedark.vim<CR>
nnoremap <leader>eT :edit ~/Projects/vim/vim-code-dark/colors/codedark.vim<CR>
" Edit Themes/
nnoremap <leader>eu :vsplit ~/.dotfiles/editors/nvim/colors<CR>




" =============================================================================
"  === h -- Help ===
" =============================================================================
" Search the docs
nnoremap <leader><S-H> :Denite help<CR>
" Cheat Sheet
nnoremap <leader>hc :Cheat40Open<CR>
" Check Health
nnoremap <leader>hh :checkhealth nvim
" index.man
nnoremap <leader>hi :H index
" Quickmenu
" nnoremap <leader>, :call quickmenu#toggle(0)<CR>
" Messages
nnoremap <leader>hm :messages<CR>

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



" =============================================================================
"   p -- Plugins
" =============================================================================

" Update Plugins
nnoremap <leader>pu :call dein#update()<CR>



" =============================================================================
"   t -- Toggle
" =============================================================================

" Braces
nnoremap <leader>tb :RainbowParentheses!!<CR>
" Comments
nnoremap <leader>tc :TComment<CR>
" Coloring for hex/rgb/cterm values
nnoremap <leader>tk :ColorToggle<CR>
" Folding
nnoremap <leader>tf :normal! zi<CR>
" GitGutter
nnoremap <leader>tg :call gitgutter#toggle()<CR>
" Search Highlight
nnoremap <leader>th :set nohlsearch<CR>
" Line Wrapping
nnoremap <leader>tl :set wrap!<CR>
" Toggle TableMode
nnoremap <leader>tm :tablemode#Toggle()<CR>
" Paste
nnoremap <leader>tp :set nopaste<CR>
" Quickfix List
nnoremap <leader>tq :copen<CR>
" Relative Line Numbers (set nru!)
nnoremap <leader>tr :set norelativenumber!<CR>
" Invisible Characters (whitespace)
nnoremap <leader>tw :set list!<CR>


