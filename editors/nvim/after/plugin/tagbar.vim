
" let g:tagbar_width = 40
let g:tagbar_left = 0
let g:tagbar_sort = 0
" let g:tagbar_map_showproto = ''
let g:tagbar_autofocus = 0  " Move cursor to the Tagbar window when it is opened.
let g:tagbar_autoclose = 0  " Automatically close when you jump to a tag
let g:tagbar_compact = 0    " Short help at the top of the window and the blank lines in between top-level scopes
let g:tagbar_indent = 2
let g:tagbar_show_visibility = 1
let g:tagbar_iconchars = ['▶ ', '▼ ']

let g:tagbar_status_func = 'ClaysTagbarStatusFunc'

function! ClaysTagbarStatusFunc(current, sort, fname, ...) abort
  let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

let g:tagbar_type_css = {
  \ 'ctagstype' : 'Css',
  \ 'kinds'     : [
  \     'c:classes',
  \     's:selectors',
  \     'i:identities'
  \ ]
  \}

let g:tagbar_type_markdown = {
  \ 'ctagstype': 'markdown',
  \ 'ctagsbin' : '~/.ghq/github.com/jszakmeister/markdown2ctags/markdown2ctags.py',
  \ 'ctagsargs': '-f - --sort=yes',
  \ 'kinds' : [
  \     's:sections',
  \     'i:images'
  \ ],
  \ 'sro' : '|',
  \ 'kind2scope' : {
  \     's' : 'section',
  \ },
  \ 'sort': 0,
  \}

let g:tagbar_type_rst = {
  \ 'ctagstype': 'rst',
  \ 'ctagsbin' : '/path/to/rst2ctags.py',
  \ 'ctagsargs' : '-f - --sort=yes',
  \ 'kinds' : [
  \     's:sections',
  \     'i:images'
  \ ],
  \ 'sro' : '|',
  \ 'kind2scope' : {
  \     's' : 'section',
  \ },
  \ 'sort': 0,
  \}

let g:tagbar_type_rust = {
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
  \    'T:types,type definitions',
  \    'f:functions,function definitions',
  \    'g:enum,enumeration names',
  \    's:structure names',
  \    'm:modules,module names',
  \    'c:consts,static constants',
  \    't:traits',
  \    'i:impls,trait implementations',
  \ ]
  \}

let g:tagbar_type_snippets = {
  \ 'ctagstype' : 'snippets',
  \ 'kinds' : [
  \    's:snippets',
  \ ],
  \ 'sort': 0
  \}



let g:tagbar_type_vim = {
    \ 'ctagstype': 'Vim',
    \ 'kinds' : [
    \ 'n:vimball filenames',
    \ 'v:variables',
    \ 'f:functions',
    \ 'a:autocommand groups',
    \ 'c:commands',
    \ 'm:maps',
    \ 't:tags',
    \ 'z:todos',
    \ 's:sectons',
    \ ],
\     }


" TODO TODO
