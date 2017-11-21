" =============================================================================
" Filename: DarkPlus.vim
" Author: Clay Dunston
" License: MIT License
" Last Change: 2017
" =============================================================================

let s:black       = [ '#1e1e1e', 234 ]
let s:brightblack = [ '#303030', 234 ]
let s:gray        = [ '#505050', 244 ]
let s:white       = [ '#d4d4d4', 253 ]
let s:darkblue    = [ '#569cd6', 75  ]
let s:cyan        = [ '#4ec9b0', 79  ]
let s:green       = [ '#608b4e', 65  ]
let s:orange      = [ '#ce9178', 216 ]
let s:purple      = [ '#c586c0', 176 ]
let s:red         = [ '#d16969', 210 ]
let s:yellow      = [ '#d7ba7d', 179 ]
let s:inactive    = [ '#303030', 234, 'italic' ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left =     [ [ s:black,    s:green ],    [ s:white, s:gray ] ]
let s:p.normal.right =    [ [ s:black,    s:green ],    [ s:white, s:gray ] ]
let s:p.normal.middle =   [ [ s:green,    s:brightblack ] ]
let s:p.insert.left =     [ [ s:black,    s:darkblue    ], [ s:white, s:gray ] ]
let s:p.insert.right =    [ [ s:black,    s:darkblue    ], [ s:white, s:gray ] ]
let s:p.insert.middle =   [ [ s:darkblue, s:brightblack ] ]
let s:p.visual.left =     [ [ s:black,    s:purple       ], [ s:white, s:gray ] ]
let s:p.visual.right =    [ [ s:black,    s:purple       ], [ s:white, s:gray ] ]
let s:p.visual.middle =   [ [ s:purple,   s:brightblack  ] ]
let s:p.replace.left =    [ [ s:black,    s:red          ], [ s:purple, s:gray ] ]
" let s:p.inactive.left =   [ [ s:white,    s:brightblack  ], [ s:white, s:gray ] ]
let s:p.inactive.left =   [ [ s:white,    s:brightblack, 'italic'  ], [ s:white, s:gray, 'italic'] ]
let s:p.inactive.right =  [ [ s:white,    s:brightblack  ], [ s:white, s:gray ] ]
let s:p.inactive.middle = [ [ s:white,    s:brightblack  ] ]
let s:p.tabline.left =    [ [ s:gray,     s:black ] ]
let s:p.tabline.tabsel =  [ [ s:white,    s:gray  ] ]
let s:p.tabline.middle =  [ [ s:gray,     s:black ] ]
let s:p.normal.error =    [ [ s:red,      s:brightblack  ] ]
let s:p.normal.warning =  [ [ s:yellow,   s:brightblack  ] ]
let s:p.tabline.right = copy(s:p.normal.right)

let g:lightline#colorscheme#DarkPlus#palette = lightline#colorscheme#flatten(s:p)
