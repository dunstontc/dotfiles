" " =============================================================================
" "  Guide
" " =============================================================================
" " let g:leaderGuide_position = botright
" let g:leaderGuide_vertical = 0
" let g:leaderGuide_hspace = 5
" let g:leaderGuide_sort_horizontal = 0
" let g:leaderGuide_flatten = 1
" " let g:leaderGuide_displayfunc
" let g:leaderGuide_max_size = 0
"
" " Define prefix dictionary
" let g:lmap={}
" " let g:lmap={
" "             \  ' ': ['',                 'Cancel'],
" "             \  '`': ['vsplit +terminal', 'New Terminal'],
" "             \  '[': ['',                 'Decrease Indent'],
" "             \  ']': ['',                 'Increase Indent'],
" "             \  '/': ['',                 'Toggle Comment'],
" "             \  'M': ['',                 'ViMagit'],
" "             \  'q': ['',                 'Quit'],
" "             \  'r': ['',                 'Redo'],
" "             \  'z': ['',                 'Syntax'],
" "             \  '*': ['',                 'Search'],
" "             \}
" "
" "
" " let g:lmap.d={
" "             \ 'name': '+Denite',
" "             \    'b': ['Denite buffer',                                           'Buffers'],
" "             \    'c': ['Denite command_history -default-action=edit_and_execute', 'Command History'],
" "             \    'f': ['Denite file_manager',                                     'File Manager'],
" "             \    'm': ['Denite file_mru',                                         'Most Recent Files'],
" "             \    'M': ['Denite directory_mru',                                    'Most Recent Directories'],
" "             \    'h': ['Denite help',                                             'Help Docs'],
" "             \    'r': ['Denite neoyank',                                          'Old Registers'],
" "             \    't': ['Denite todo',                                             'Todos'],
" "             \    'T': ['Denite todo:done',                                        'Finished Todos'],
" "             \    'z': ['Denite z',                                                'Z (jump around)'],
" "             \}
" "
" "
" "
" "
" "
" " let g:lmap.h={
" "            \ 'name': '+Help',
" "            \    ' ': [ 'Cheat40Open', 'Cheat Sheet' ],
" "            \    'i': [ 'H index',     'index.man'   ],
" "            \    'm': [ 'messages',     'Messages'   ],
" "            \    'd': {
" "                \ 'name': 'Describe',
" "                \    's': [ 'syntax',  'List Syntax Groups' ],
" "                \}
" "            \}
" "
"
" " let g:lmap.i={
" "             \ 'name': '+Interfaces',
" "             \    'c': ['Cheat40Open',                'Cheat Sheet'     ],
" "             \    'm': ['call magit#show_magit("v")', 'Magit'           ],
" "             \    'n': ['NERDTreeToggle',             'NERDTree'        ],
" "             \    's': ['vsplit +Startify',           'Startify'        ],
" "             \    'u': ['Unite',                      'Unite'           ],
" "             \    'x': ['XtermColorTable',            'XtermColorTable' ],
" "             \    'z': ['UndotreeToggle',             'Undotree'        ],
" "             \}
"
"
"
" "
" " let g:lmap.t={
" "             \ 'name': '+Toggle',
" "             \    'c': [ 'TComment',           'Comment'               ],
" "             \    'k': [ 'ColorToggle',        'Colors'                ],
" "             \    'f': [ 'normal! zi',         'Folding'               ],
" "             \    'h': [ 'set nohlsearch',     'Highlight'             ],
" "             \    'l': [ 'set wrap!',          'Line Wrap'             ],
" "             \    'm': [ 'tablemode#Toggle()', 'Table Mode'            ],
" "             \    'p': [ 'set nopaste',        'Paste Mode'            ],
" "             \    'r': [ 'set rnu!',           'Relative Line Numbers' ],
" "             \    'w': [ 'set list!',          'Invisible Characters'  ],
" "             \}
" "
"
" " let g:lmap.w={
" "             \ 'name': 'Window',
" "             \    'h': [ 'split', 'Horizontal Split'  ],
" "             \    'q': [ 'q',     'Close'             ],
" "             \    'Q': [ 'q!',    'Force Close'       ],
" "             \    'v': [ 'vs',    'Vertical Split'    ],
" "             \}
"
" " let g:lmap.f = {
" "             \'name': 'FZF & Find',
" "             \'a': ['FzfAg', 'Ag'],
" "             \'c': ['FzfCommits', 'Commit'],
" "             \'b': ['FzfBuffers', 'Buffers'],
" "             \'l': ['FzfTodo', 'Todo List'],
" "             \'g': ['FzfLines', 'Lines'],
" "             \'f': ['call ShowfindFiles()', 'File'],
" "             \'d': ['FzfCommands', 'Commands'],
" "             \'t': ['FzfBTags', 'Bufer`s Tags'],
" "             \'T': ['call FzfTagsFunction()', 'Tags'],
" "             \'m': ['FzfMarks', 'Marks'],
" "             \'p': ['FzfMaps', 'Maps'],
" "             \'h': ['FzfHistory', 'Histroy'],
" "             \}
"
"
" " Create new menus not based on existing mappings:
" " call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
" " nnoremap <silent><nowait> <leader> :<c-u>LeaderGuide '<Space>'<CR>
" " vnoremap <silent><nowait> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

