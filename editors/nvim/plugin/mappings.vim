" =============================================================================
"  Key Mappings
" =============================================================================
set timeoutlen=500

let mapleader="\<Space>"
" let g:mapleader="\<Space>"

nnoremap <leader><leader> <esc>

nnoremap ; :
vnoremap ; :

" use ctrl-q instead of ⎋ , stay on the home row
inoremap <esc> <C-o>:echo "Use ctrl-Q dumbass "<CR>
inoremap <C-q> <C-c>
nnoremap <C-q> <Nop>
vnoremap <C-q> <C-c>
" xnoremap <C-q> <C-c>

" Clear highlights & commands
nnoremap <silent>\ :noh<CR>:call anzu#clear_search_status()<CR>:echo<CR>

noremap Q <Nop>
" TODO: make new shortcut for macros

" Escape the terminal
tnoremap <Esc> <C-\><C-n>

" Save wih ⌘ -s
nnoremap 𐌔 :w<CR>
inoremap 𐌔 <C-o>:w<CR>

" Comment wih ⌘ -/
noremap <silent>𐌍 :TComment<CR>
inoremap <silent>𐌍 <esc>:TComment<CR>

" <S-CR> New line below
inoremap 𐌄 <esc> o
" <C-CR> New line above
inoremap 𐌂 <esc> O


" Bigger Steps
noremap <S-H> 0
noremap <S-L> $
inoremap <C-E> <C-o>$
" imap <C-B> <C-o>0 " TODO: bind key to $ in insert mode

nnoremap <BS> i<DEL><esc><right>
noremap ,, i<space><esc>
" nnoremap ,<space> i<space><Esc>

nnoremap <leader>u :redo<CR>
nnoremap <leader>q :q<CR>

" gtfo
nnoremap fj :x<CR>
inoremap fj <esc>:x<CR>

" Yank Better
nnoremap <S-y> Vy
noremap 𐌋 mxV"zy"zp`xj


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

" " Indentation
" vmap <silent> <leader>[ <gv
" vmap <silent> <leader>] >gv
" nmap <silent> <leader>[ <<
" nmap <silent> <leader>] >>
" imap <silent> <leader>[ <esc><<
" imap <silent> <leader>] <esc>>>

" ⌘
vmap <silent> 𐌀 <gv
vmap <silent> 𐌁 >gv
nmap <silent> 𐌀 <<
nmap <silent> 𐌁 >>
imap <silent> 𐌀 <C-o><<
imap <silent> 𐌁 <c-o>>>

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

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



" Use ⌥ left/right in command mode
" cnoremap <Esc>b <S-Left>
" cnoremap <Esc>f <S-Right>


" nmap <Leader>y <Plug>(sidemenu)
" xmap <Leader>y <Plug>(sidemenu-visual)


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

nnoremap <H-e> :echo "noice"<cr>



" =============================================================================
"  vim-tmux-navigator
" =============================================================================
" let g:tmux_navigator_no_mappings = 1
"
" nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
" nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
" nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
" nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>



" =============================================================================
"  Custom Motions & Objects
" =============================================================================
" pretty much autoselect quotes
" xmap q iq
" omap q iq

" " operator mappings
" nmap <silent>sa <Plug>(operator-surround-append)a
" nmap <silent>sd <Plug>(operator-surround-delete)a
" nmap <silent>sr <Plug>(operator-surround-replace)a
" nmap <silent>sc <Plug>(operator-surround-replace)a


" " delete or replace most inner surround

" " if you use vim-textobj-multiblock
" nmap <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-multiblock-a)
" nmap <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-multiblock-a)

" " if you use vim-textobj-anyblock
" nmap <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-anyblock-a)
" nmap <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-anyblock-a)

" " if you use vim-textobj-between
" nmap <silent>sdb <Plug>(operator-surround-delete)<Plug>(textobj-between-a)
" nmap <silent>srb <Plug>(operator-surround-replace)<Plug>(textobj-between-a)



" " let g:textobj_between_no_default_key_mappings=0
" autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')
" ]= and [= instead of a= and aa=
" autocmd VimEnter * call after_object#enable([']', '['], '=', ':')


" =============================================================================
"  Guide
" =============================================================================
" let g:leaderGuide_position = botright
" let g:leaderGuide_vertical = 0
" let g:leaderGuide_hspace = 5
" let g:leaderGuide_sort_horizontal = 0
" let g:leaderGuide_run_map_on_popup = 1
" let g:leaderGuide_flatten = 1
" " let g:leaderGuide_displayfunc
" let g:leaderGuide_max_size = 0

" Define prefix dictionary
let g:lmap={
            \  ' ': ['',                                        'Cancel'          ],
            \  '`': ['vsplit +terminal',                        'New Terminal'    ],
            \  'M': ['',                                        'ViMagit'         ],
            \  'o': ['vsplit $HOME/Projects/Vim/neovim.org.md', 'Org'             ],
            \  'q': ['',                                        'Quit'            ],
            \  'r': ['',                                        'Redo'            ],
            \  ',': ['call quickmenu#toggle(0)',                'Quickmenu'       ],
            \  '*': ['',                                        'Search'          ],
            \  'x': ['vimgrep TODO **/*.%:e \| cw<CR>',         'list Todos'      ],
            \}


let g:lmap.b={
            \ 'name': '+Buffers',
            \    'h': ['Startify',       'Home'              ],
            \    'n': ['bnext',          'Next Buffer'       ],
            \    'p': ['bprev',          'Previous Buffer'   ],
            \    'l': ['Denite buffer',  'List Buffers'      ],
            \    'q': [ 'q',             'Close'             ],
            \    'Q': [ 'q!',            'Force Close'       ],
            \    'S': [ 'wa',            'Save All'          ],
            \    'w': [ 'w',             'Save'              ],
            \}


let g:lmap.c={
            \ 'name': '+Config',
            \    'd': {
            \    'name': 'Dein',
            \       'l': ['Denite dein',        'List Plugins'  ],
            \       'u': ['call dein#update()', 'Update Plugins'],
            \},
            \    'e': {
            \    'name': 'Edit',
            \       'c': [ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/commands.vim"',        'Commands'               ],
            \       'd': [ 'TwoSplit $MYVIMRC',                                              '.vimrc'                 ],
            \       'e': [ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/settings.vim"',        'Settings'               ],
            \       'i': [ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/ui.vim"',              'UI'                     ],
            \       'k': [ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/mappings.vim"',        'Keybindings'            ],
            \       'p': [ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/plugins.vim"',         'Plugins'                ],
            \       's': [ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/lightline.vim"',       'Statusline'             ],
            \       't': [ 'TwoSplit "~/Projects/vim/vim-code-dark/colors/codedark.vim"',    'Theme'                  ],
            \       'u': [ 'TwoSplit "~/.dotfiles/editors/nvim/plugin/unite.vim"',           'Unite/Denite Interface' ],
            \}
            \}


let g:lmap.d={
            \ 'name': '+Denite',
            \    'b': ['Denite buffer',                                           'Buffers'                 ],
            \    'c': ['Denite command_history -default-action=edit_and_execute', 'Command History'         ],
            \    'f': ['Denite file_manager',                                     'File Manager'            ],
            \    'm': ['Denite file_mru',                                         'Most Recent Files'       ],
            \    'M': ['Denite directory_mru',                                    'Most Recent Directories' ],
            \    'h': ['Denite help',                                             'Help Docs'               ],
            \    'r': ['<C-u>Denite -mode=insert history/yank<CR>',               'Neoyank Registers'       ],
            \    't': ['Denite todo',                                             'Todos'                   ],
            \    'T': ['Denite todo:done',                                        'Finished Todos'          ],
            \    'z': ['Denite z',                                                'Z (jump around)'         ],
            \    'd': {
            \    'name': '+Unite',
            \       'h': [ 'H unite',    'Help'          ],
            \       't': [ 'Unite todo', 'Todos'         ],
            \       'u': [ 'Unite',      '(interactive)' ],
            \}
            \}


let g:lmap.e={
            \ 'name': '+Edit',
            \ 'a': ['<Plug>(EasyAlign)', 'Align'            ],
            \ 'p': ['normal! "+gP"',     'Pase from System' ],
            \ 'x': ['normal! "+x"',      'Cut to System'    ],
            \ 'f': {
            \ 'name': '+File',
            \    'n': ['GetName',     'Copy name of the active buffer'       ],
            \    'p': ['GetFullPath', 'Copy Absolute Path to current file'   ],
            \    'r': ['GetRelPath',  'Copy Relative Path to current file'   ],
            \}
            \}


let g:lmap.f={
            \ 'name': '+Files',
            \    'e': {
            \    'name': '+Edit',
            \       'c': [ 'e ~/.dotfiles/editors/nvim/doc/cheat40.txt',              'Cheat Sheet'            ],
            \       'r': [ 'source $MYVIMRC',                                         'reload config'          ],
            \},
            \    'p': {
            \    'name': '+File',
            \       'n': ['GetName',     'Copy name of the active buffer'       ],
            \       'p': ['GetFullPath', 'Copy Absolute Path to current file'   ],
            \       'r': ['GetRelPath',  'Copy Relative Path to current file'   ],
            \},
            \    's': [ 'w',              'Save'      ],
            \    'S': [ 'wa',             'Save All'  ],
            \    't': [ 'NERDTreeToggle', 'File Tree' ],
            \}


let g:lmap.h={
            \ 'name': '+Help',
            \    ' ': [ 'Cheat40Open',              'Cheat Sheet' ],
            \    'i': [ 'H index',                  'index.man'   ],
            \    'h': [ 'call quickmenu#toggle(0)', 'Quickmenu'   ],
            \    'm': [ 'messages',                 'Messages'    ],
            \    'd': {
            \    'name': 'Describe',
            \       'c': [ 'ascii',                     'Character '         ],
            \       'f': [ 'set filetype?',             'Filetype'           ],
            \       'p': [ 'GetFullPath',               'Current Path'       ],
            \       's': [ 'SynDef',                    'Syntax Item'        ],
            \       'S': [ 'syntax',                    'List Syntax Groups' ],
            \}
            \}


let g:lmap.i={
            \ 'name': '+Interfaces',
            \    'c': ['Cheat40Open',                'Cheat Sheet'     ],
            \    'q': ['call quickmenu#toggle(0)',   'Quickmenu'       ],
            \    'm': ['call magit#show_magit("v")', 'Magit'           ],
            \    'n': ['NERDTreeToggle',             'NERDTree'        ],
            \    's': ['vsplit +Startify',           'Startify'        ],
            \    't': ['TagBarToggle',               'Tagbar'          ],
            \    'u': ['Unite',                      'Unite'           ],
            \    'z': ['UndotreeToggle',             'Undotree'        ],
            \}


let g:lmap.s={
            \ 'name': '+Search',
            \    's': {
            \    'name': 'Swoop',
            \       'l': ['call Swoop()',      'Local (current buffer)'  ],
            \       'g': ['call SwoopMulti()', 'Global (multi buffer)'   ],
            \}
            \}


let g:lmap.t={
            \ 'name': '+Toggle',
            \    'c': [ 'TComment',                'Comment'               ],
            \    'k': [ 'ColorToggle',             'Colors'                ],
            \    'f': [ 'normal! zi',              'Folding'               ],
            \    'g': [ 'call gitgutter#toggle()', 'GitGutter'             ],
            \    'h': [ 'set nohlsearch',          'Highlight'             ],
            \    'l': [ 'set wrap!',               'Line Wrap'             ],
            \    'm': [ 'tablemode#Toggle()',      'Table Mode'            ],
            \    'p': [ 'set nopaste',             'Paste Mode'            ],
            \    'q': [ 'copen',                   'Quickfix List'         ],
            \    'r': [ 'set rnu!',                'Relative Line Numbers' ],
            \    'w': [ 'set list!',               'Invisible Characters'  ],
            \}


let g:lmap.w={
            \ 'name': '+Window',
            \    'h': [ 'split',             'Horizontal Split'        ],
            \    'q': [ 'q',                 'Close'                   ],
            \    'Q': [ 'q!',                'Force Close'             ],
            \    'v': [ 'vs',                'Vertical Split'          ],
            \    'z': ['call zoom#toggle()', 'Toggle Zoom'             ],
            \}


let g:lmap.v={
            \ 'name': '+Wiki',
            \    'h': [ 'H vimwiki',          'Help'  ],
            \    'i': [ '<plug>VimwikiIndex', 'Index' ],
            \}


" let g:lmap.f = {
"             \'name': 'FZF & Find',
"             \'a': ['FzfAg', 'Ag'],
"             \'c': ['FzfCommits', 'Commit'],
"             \'b': ['FzfBuffers', 'Buffers'],
"             \'l': ['FzfTodo', 'Todo List'],
"             \'g': ['FzfLines', 'Lines'],
"             \'f': ['call ShowfindFiles()', 'File'],
"             \'d': ['FzfCommands', 'Commands'],
"             \'t': ['FzfBTags', 'Bufer`s Tags'],
"             \'T': ['call FzfTagsFunction()', 'Tags'],
"             \'m': ['FzfMarks', 'Marks'],
"             \'p': ['FzfMaps', 'Maps'],
"             \'h': ['FzfHistory', 'Histroy'],
"             \}


" let g:lmap.t = {
"             \'name': 'Tab',
"             \'n': ['tabnew', 'New'],
"             \'c': ['tabc', 'Close'],
"             \'o': ['tabo', 'Only'],
"             \'a': ['tabp', 'Previous'],
"             \'d': ['tabn', 'Next'],
"             \'w': ['tabfirst', 'First'],
"             \'s': ['tablast', 'Last'],
"            \}


" Create new menus not based on existing mappings:
call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent><nowait> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent><nowait> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

