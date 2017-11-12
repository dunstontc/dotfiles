" =============================================================================
"  Key Mappings
" =============================================================================
let mapleader="\<Space>"

set timeoutlen=500

nnoremap <leader><leader>  <esc>

inoremap <esc> <C-o>:echo "Use ctrl-Q dumbass"<cr>

noremap Q <nop>
" TODO: make new shortcut for macros
" noremap q <nop>

"      👇
nnoremap ; :
vnoremap ; :

" Save wih ⌘ + s
nnoremap 𐌔 :w<cr>
inoremap 𐌔 <C-o>:w<cr>


" Yank into the void
noremap d "_d
noremap D "_D
noremap dd "_dd

" and toss out our leftovers when we put
" vnoremap p "_dP
vnoremap ,p "0p

inoremap <C-q> <esc>
nnoremap <C-q> <esc>
vnoremap <C-q> <esc>


" Clear highlights & commands
nnoremap <silent>\ :noh<CR>:call anzu#clear_search_status()<CR>:echo<CR>

" Bigger Steps
noremap <S-H> 0
noremap <S-L> $
inoremap <C-E> <C-o>$
" imap <C-B> <C-o>0 " TODO: bind key to $ in insert mode

" nnoremap , i<Space><Esc>
nnoremap <BS> i<DEL><esc><right>

" Undo & Redo
nnoremap <leader>r :redo<cr>
" Quick Close
nnoremap <leader>q :q<CR>

" Quick Save
nnoremap fj :wq<CR>
inoremap fj <esc>:wq<CR>

" Yank Better
nnoremap <S-y> Vy
noremap 𐌋 mxV"zy"zp`xj

" Indentation
vmap <silent> <leader>[ <gv
vmap <silent> <leader>] >gv
nmap <silent> <leader>[ <<
nmap <silent> <leader>] >>
imap <silent> <leader>[ <esc><<
imap <silent> <leader>] <esc>>>

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

" inoremap 𐌇
" inoremap 𐌝


noremap <silent>𐌍 :TComment<CR>
inoremap <silent>𐌍 <esc>:TComment<CR>
" noremap <leader>tc :TComment<CR>


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Escape the terminal
tnoremap <Esc> <C-\><C-n>
" Use ⌥ left/right in command mode
" cnoremap <Esc>b <S-Left>
" cnoremap <Esc>f <S-Right>



" === Unused ===
" imap <C-F>
" nmap S
" noremap <M-LEFT> :NERDTreeToggle<CR>
" noremap <M-RIGHT> :NERDTreeToggle<CR>



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
xmap q iq
omap q iq

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
            \  ' ': ['',                           'Cancel'          ],
            \  '`': ['vsplit +terminal normal! i', 'New Terminal'    ],
            \  '[': ['',                           'Decrease Indent' ],
            \  ']': ['',                           'Increase Indent' ],
            \  'M': ['',                           'ViMagit'         ],
            \  'q': ['',                           'Quit'            ],
            \  'r': ['',                           'Redo'            ],
            \  ',': ['call quickmenu#toggle(0)',   'Quickmenu'       ],
            \  '*': ['',                           'Search'          ],
            \}


let g:lmap.b={
            \ 'name': '+Buffers',
            \    'h': ['Startify', 'Home'              ],
            \    'n': ['bnext',    'Next Buffer'       ],
            \    'p': ['bprev',    'Previous Buffer'   ],
            \    'q': [ 'q',       'Close'             ],
            \    'Q': [ 'q!',      'Force Close'       ],
            \    'S': [ 'wa',      'Save All'          ],
            \    'w': [ 'w',       'Save'             ],
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
            \       'c': [ 'vsplit ~/.dotfiles/editors/nvim/plugin/commands.vim',        'Commands'               ],
            \       'd': [ 'vsplit $MYVIMRC',                                            '.vimrc'                 ],
            \       'e': [ 'vsplit ~/.dotfiles/editors/nvim/plugin/settings.vim',        'Settings'               ],
            \       'i': [ 'vsplit ~/.dotfiles/editors/nvim/plugin/ui.vim',              'UI'                     ],
            \       'k': [ 'vsplit ~/.dotfiles/editors/nvim/plugin/mappings.vim',        'Keybindings'            ],
            \       'p': [ 'vsplit ~/.dotfiles/editors/nvim/plugin/plugins.vim',         'Plugins'                ],
            \       's': [ 'vsplit ~/.dotfiles/editors/nvim/plugin/lightline.vim',       'Statusline'             ],
            \       't': [ 'vsplit ~/Projects/vim/vim-code-dark/colors/codedark.vim',    'Theme'                  ],
            \       'u': [ 'vsplit ~/.dotfiles/editors/nvim/plugin/unite.vim',           'Unite/Denite Interface' ],
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
            \    'r': ['Denite neoyank',                                          'Old Registers'           ],
            \    't': ['Denite todo',                                             'Todos'                   ],
            \    'T': ['Denite todo:done',                                        'Finished Todos'          ],
            \    'z': ['Denite z',                                                'Z (jump around)'         ],
            \}


let g:lmap.e={
            \ 'name': '+Edit',
            \ 'a': ['<Plug>(EasyAlign)', 'Align'            ],
            \ 'p': ['normal! "+gP"',     'Pase from System' ],
            \ 'x': ['normal! "+x"',      'Cut to System'    ],
            \ 'f': {
            \ 'name': '+File',
            \    'c': ['let @+=expand("%:f")',     'Copy File Name With Path'      ],
            \    'f': ['let @+=expand("%:t:r:r")', 'Copy File Name'                ],
            \    'e': ['let @+=expand("%:t")',     'Copy File Name With Extension' ],
            \    'a': ['let @+=expand("%:p:h")',   'Copy File Absolute Path'       ],
            \    'r': ['let @+=expand("%:h")',     'Copy File Relative Path'       ],
            \}
            \}


let g:lmap.f={
            \ 'name': '+Files',
            \    'e': {
            \    'name': '+Edit',
            \       'c': [ 'e ~/.dotfiles/editors/nvim/doc/cheat40.txt',              'Cheat Sheet'            ],
            \       'r': [ 'source $MYVIMRC',                                         'reload config'          ],
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
            \       'f': [ 'set filetype?',             'Echo Filetype'      ],
            \       's': [ 'call functions#SynStack()', 'Syntax'             ],
            \       'S': [ 'syntax',                    'List Syntax Groups' ],
            \}
            \}


let g:lmap.i={
            \ 'name': '+Interfaces',
            \    'c': ['Cheat40Open',                'Cheat Sheet'     ],
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
            \    'c': [ 'TComment',           'Comment'               ],
            \    'k': [ 'ColorToggle',        'Colors'                ],
            \    'f': [ 'normal! zi',         'Folding'               ],
            \    'h': [ 'set nohlsearch',     'Highlight'             ],
            \    'l': [ 'set wrap!',          'Line Wrap'             ],
            \    'm': [ 'tablemode#Toggle()', 'Table Mode'            ],
            \    'p': [ 'set nopaste',        'Paste Mode'            ],
            \    'r': [ 'set rnu!',           'Relative Line Numbers' ],
            \    'w': [ 'set list!',          'Invisible Characters'  ],
            \}


let g:lmap.u={
            \ 'name': '+Unite',
            \    'h': [ 'H unite',    'Help'  ],
            \    't': [ 'Unite todo', 'Todos' ],
            \    'u': [ 'Unite',      '(interactive)' ],
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

