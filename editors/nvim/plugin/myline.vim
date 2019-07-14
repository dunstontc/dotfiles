let g:myline#blacklist = '\v(cheat40|denite|gundo|help|nerdtree|netrw|peekaboo|quickmenu|startify|tagbar|undotree|unite|vimfiler|vimshell)'

let g:myline = {}

let g:myline.mode_map = {
    \ 'n':      'NORMAL',
    \ 'i':      'INSERT',
    \ 'R':      'REPLACE',
    \ 'v':      'VISUAL',
    \ 'V':      'V-LINE',
    \ "\<C-v>": 'V-BLOCK',
    \ 'c':      'COMMAND',
    \ 's':      'SELECT',
    \ 'S':      'S-LINE',
    \ "\<C-s>": 'S-BLOCK',
    \ 't':      'TERMINAL',
    \ 'Rv':     'V·Replace ',
    \ 'no':     'N·Operator Pending ',
    \ 'cv':     'Vim Ex ',
    \ 'ce':     'Ex ',
    \ 'r':      'Prompt ',
    \ 'rm':     'More ',
    \ 'r?':     'Confirm ',
    \ 'ci':     'CMD-I ',
    \ 'cr':     'CMD-R ',
    \ 'o':      'Pending',
    \ 'sm':     'SHOW-MATCH ',
    \ '!':      'Shell ',
    \ }

function! myline#mode() abort
  call myline_colors#UpdateColor()
  return ' ' . g:myline.mode_map[mode()] . ' '
endfunction

""
" Return a name for plugin modes, or the mode name if not a plugin.
function! myline#Mode() abort
  return
        \ expand('%:t') ==# 'ControlP'   ? 'CtrlP'    :
        \ expand('%:t') ==# 'peekaboo'   ? 'Peekaboo' :
        \ &filetype ==#     'cheat40'    ? 'Cheat40'  :
        \ &filetype ==#     'deol'       ? 'Deol'     :
        \ &filetype ==#     'denite'     ? 'Denite'   :
        \ &filetype ==#     'fzf'        ? 'FZF'      :
        \ &filetype ==#     'gitcommit'  ? 'Fugitive' :
        \ &filetype ==#     'help'       ? 'Help'     :
        \ &filetype ==#     'neoterm'    ? 'NeoTerm'  :
        \ &filetype ==#     'nerdtree'   ? 'NERDTree' :
        \ &filetype ==#     'netrw'      ? 'netrw'    :
        \ &filetype ==#     'peekaboo'   ? 'Peekaboo' :
        \ &filetype ==#     'quickmenu'  ? 'Menu'     :
        \ &filetype ==#     'qf'         ? 'Quickfix' :
        \ &filetype ==#     'startify'   ? 'Startify' :
        \ &filetype ==#     'tagbar'     ? 'Tagbar'   :
        \ &filetype ==#     'unite'      ? 'Unite'    :
        \ &filetype ==#     'undotree'   ? 'UndoTree' :
        \ &filetype ==#     'vimfiler'   ? vimfiler#get_status_string() :
        \ &filetype ==#     'vimshell'   ? 'VimShell' :
        \ &filetype ==#     'goterm'     ? 'GoTerm'   :
        \ myline#mode()
endfunction

""
" @function(Readonly)
" In specific filetypes, above a specified width, returns the powerline readonly icon.
function! myline#Readonly() abort
  return &readonly && &filetype !~# g:myline#blacklist ? '  ' : ''
endfunction


""
" @public
" Returns the filename + &modified
function! myline#Filename() abort
  let l:filename = expand('%:t') !=# '' ? expand('%:t') : ' '
  let l:modified = &modified ? ' + ' : ' '

  if &filetype ==# 'help'
    return ' ' . l:filename
  elseif &filetype ==# 'denite'
    return ' ' . denite#get_status("sources")
  elseif &filetype ==# 'tagbar'
    return ' '.g:lightline.fname
  else
    return &filetype !~# g:myline#blacklist ? ('  '.l:filename.''.l:modified) : " "
  endif

endfunction

""
" @function(FileSize)
" Returns a human-readable filesize for active buffer.
function! myline#FileSize() abort
  let l:bytes = getfsize(expand('%:p'))
  if (l:bytes >= 1024)
    let l:kbytes = l:bytes / 1024
  endif
  if (exists('l:kbytes') && l:kbytes >= 1000)
    let l:mbytes = l:kbytes / 1000
  endif

  if l:bytes <= 0
    return &filetype !~# g:myline#blacklist ? ('0 B') : ''
  endif

  if (exists('l:mbytes'))
    return &filetype !~# g:myline#blacklist && winwidth(0) > 70 ? (l:mbytes . ' MB') : ''
  elseif (exists('l:kbytes'))
    return &filetype !~# g:myline#blacklist && winwidth(0) > 70 ? (l:kbytes . ' KB') : ''
  else
    return &filetype !~# g:myline#blacklist && winwidth(0) > 70 ? (l:bytes . ' B') : ''
  endif
endfunction

""
" @function(Devicon)
" In specific filetypes, above a specified width, returns the corresponding filetype icon.
function! myline#Devicon()
  " return &filetype !~# g:myline#blacklist && winwidth(0) > 70 ? ('['.&filetype.']') : ''
  return &filetype !~# g:myline#blacklist && winwidth(0) > 70 ? (WebDevIconsGetFileTypeSymbol()) : ''
endfunction

""
" @public
" Complain loudly when &paste is set
function! myline#Pest() abort
  if &paste
    return '----------PASTE----------PASTE----------PASTE----------PASTE----------'
  else
    return ''
  endif
endfunction

""
" @function(PaddedStats)
" Returns the current/total rows & columns with padding to keep the statusline from resizing.
function! myline#PaddedStats() abort
  let l:column   = virtcol('.')
  let l:padCol   = ''
  let l:width    = virtcol('$')
  let l:padWidth = ''
  let l:row      = line('.')
  let l:padRow   = ''
  let l:height   = line('$')

  ""
  " Add trailing spaces to the column total.
  if strlen(l:width) == 3
    let l:padWidth = l:width
  elseif strlen(l:width) == 2
    let l:padWidth = l:width.' '
  else
    let l:padWidth = '0'.l:width.' '
  endif

  ""
  " Add leading spaces to the current column.
  if strlen(l:column) == 3
    let l:padCol = l:column
  elseif strlen(l:column) == 2
    let l:padCol = ' ' . l:column
  else
    let l:padCol = ' 0'.l:column
  endif

  ""
  " Add leading spaces to the current row.
  " FIXME: handle rows greater than 2 digits without making the rhs huge
  if (strlen(l:row) > 2)
    let l:padRow = l:row
  else
    let l:padRow = ' ' . l:row
  endif

  ""
  " Check the filetype and return all or some of our stable width values.
  if &filetype =~ '\v(cheat40|peekaboo|tagbar|undotree|vimfiler)'
    return ''
  elseif &filetype == 'denite'
    " return denite#get_status_path().' '
    " let l:path = denite#get_status_path()
    let l:clean_path = substitute(denite#get_status("path"), '\([\|\]\)', '', 'g')
    let l:cool_path = substitute(l:clean_path, expand($HOME), '~', 'g')
    return ''.l:cool_path.'   '
  else
    return &filetype !~# g:myline#blacklist && winwidth(0) > 70 ?
                         \ ('↕ '.l:padRow.':'.l:height.' ↔'.l:padCol .':'.l:padWidth) :
                         \ ( l:padCol.':'.l:padRow.'/'.l:height.' ')
  endif
endfunction

""
" @function(Register)
" In specific filetypes, above a specified width, returns the name of the currently selected register.
function! myline#Register() abort
  return &filetype !~# g:myline#blacklist && winwidth(0) > 70 ? '  '.v:register.'' : ' '
endfunction

""
" @function(TabSizing)
" In specific filetypes, above a specified width, returns the current value of a tab.
function! myline#TabSizing() abort
  return &filetype !~# g:myline#blacklist && winwidth(0) > 70 ? ( '␉ ' . &shiftwidth . ' ') : ''
endfunction

" ==============================================================================

set statusline=
set statusline+=%1*
set statusline+=\  "
set statusline+=%{myline#mode()}
set statusline+=\  "
set statusline+=%2*
set statusline+=%{myline#Filename()}
set statusline+=\  "
set statusline+=%{myline#Readonly()}
set statusline+=%3*
set statusline+=\  "
set statusline+=\  "
set statusline+=%{myline#Devicon()}
set statusline+=\  "
set statusline+=\  "
set statusline+=%{myline#FileSize()}
set statusline+=\  "
set statusline+=%{myline#Pest()}


set statusline+=%= "

set statusline+=\  "
set statusline+=%2*
set statusline+=\  "
set statusline+=%{myline#Register()}
set statusline+=\  "
set statusline+=\  "
set statusline+=%{myline#TabSizing()}
set statusline+=\  "
set statusline+=%1*
set statusline+=\  "
set statusline+=%{myline#PaddedStats()}

" ==============================================================================
"
" function! s:fzf_statusline()
"   " Override statusline as you like
"   highlight fzf1 ctermfg=161 ctermbg=251
"   highlight fzf2 ctermfg=23 ctermbg=251
"   highlight fzf3 ctermfg=236 ctermbg=251
"   setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
" endfunction
"
" autocmd! User FzfStatusLine call <SID>fzf_statusline()

""
" @function(myline#Pending)
" For inactive files, returns the full path and |&modified|.
function! myline#Pending() abort
  let l:filename = expand('%F') !=# '' ? expand('%F') : ''
  let l:modified = &modified ? ' (+) ' : ''

  if &filetype == 'vimfiler'
    return vimfiler#get_status_string()
  else
    return &filetype !~# g:myline#blacklist ? ('  '.l:filename.''.l:modified) : ' '
  endif
endfunction

""
" @function(LangServStatus)
" Returns autozimu/LanguageClient-neovim StatusLine
" - LanguageClient_serverStatus()
"   - Get language server status. 0 for server idle. 1 for server busy.
" - LanguageClient_serverStatusMessage()
"   - Get a detail message of server status.
" - LanguageClient_statusLine()
"   - Example status line making use of LanguageClient_serverStatusMessage.
function! myline#LangServStatus() abort " {{{
  let l:stat = LanguageClient_statusLine()
  return l:stat
endfunction
" }}}

" ==============================================================================
" `a:active here would reflect if the window is the current one.`
" let neomake_status_str = neomake#statusline#get(bufnr, {
"       \ 'format_running': '… ({{running_job_names}})',
"       \ 'format_loclist_ok':
"       \   (a:active ? '%#NeomakeStatusGood#' : '%*').'✓',
"       \ 'format_quickfix_ok': '',
"       \ 'format_quickfix_issues': (a:active ? '%s' : ''),
"       \ 'format_status': '%%(%s'
"       \   .(a:active ? '%%#StatColorHi2#' : '%%*')
"       \   .'%%)',
"       \ })

" let lightline#neomake_status_str = neomake#statusline#get(bufnr, {
"       \ 'format_running': '… ({{running_job_names}})',
"       \ 'format_loclist_ok': '✓',
"       \ 'format_quickfix_ok': '',
"       \ 'format_quickfix_issues': '%s',
"       \ })

" augroup myline#neomake
"   autocmd!
"   autocmd User NeomakeJobFinished call lightline#update()
" augroup END

function! myline#NeomakeErrs() " {{{
  " if !exists(":Neomake") || ((get(neomake#statusline#QflistCounts(), "E", 0) + get(neomake#statusline#LoclistCounts(), "E", 0)) == 0)
    " return ''
  " endif
  " let loclist_errs = get(neomake#statusline#LoclistCounts(), 'E', 0)
  " let qflist_errs = get(neomake#statusline#QflistCounts(), 'E', 0)
  " let total_errs = (loclist_errs + qflist_errs)
  " return total_errs == 0 ? '' : printf('✗ %d', total_errs)
  " return qflist_errs
  if (get(neomake#statusline#LoclistCounts(), 'E', 0) + get(neomake#statusline#QflistCounts(), 'E', 0)) >= 1
    return '✗ '.(get(neomake#statusline#LoclistCounts(), 'E', 0) + get(neomake#statusline#QflistCounts(), 'E', 0))
  else
    return '  '
  endif
endfunction
" }}}

function! myline#NeomakeWarnings() " {{{
  " if !exists(":Neomake") || ((get(neomake#statusline#QflistCounts(), "W", 0) + get(neomake#statusline#LoclistCounts(), "W", 0)) == 0)
    " return ''
  " endif
  if (get(neomake#statusline#LoclistCounts(), 'W', 0) + get(neomake#statusline#QflistCounts(), 'W', 0)) >= 1
    return '● '.(get(neomake#statusline#LoclistCounts(), 'W', 0) + get(neomake#statusline#QflistCounts(), 'W', 0))
  else
    return '  '
  endif
endfunction
" }}}

" =============================================================================

" let s:black          = [ '#1e1e1e', 234 ]
" let s:brightblack    = [ '#303030', 234 ]
" let s:gray           = [ '#505050', 244 ]
" let s:white          = [ '#d4d4d4', 253 ]
" let s:darkblue       = [ '#569cd6', 75  ]
" let s:cyan           = [ '#4ec9b0', 79  ]
" let s:green          = [ '#608b4e', 65  ]
" " let s:orange         = [ '#ce9178', 216 ]
" let s:purple         = [ '#c586c0', 176 ]
" let s:red            = [ '#d16969', 210 ]
" let s:yellow         = [ '#d7ba7d', 179 ]
" " let s:inactive_dark  = [ '#303030', 234, 'italic' ]
" let s:inactive_light = [ '#d4d4d4', 234, 'italic' ]
"
" let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}, 'command': {}}
"
" let s:p.normal.left =     [ [ s:black,    s:green ],           [ s:white, s:gray ] ]
" let s:p.normal.right =    [ [ s:black,    s:green ],           [ s:white, s:gray ] ]
" let s:p.normal.middle =   [ [ s:green,    s:brightblack  ] ]
" let s:p.insert.left =     [ [ s:black,    s:darkblue     ],    [ s:white, s:gray ] ]
" let s:p.insert.right =    [ [ s:black,    s:darkblue     ],    [ s:white, s:gray ] ]
" let s:p.insert.middle =   [ [ s:darkblue, s:brightblack  ] ]
" let s:p.visual.left =     [ [ s:black,    s:purple       ],    [ s:white, s:gray ] ]
" let s:p.visual.right =    [ [ s:black,    s:purple       ],    [ s:white, s:gray ] ]
" let s:p.visual.middle =   [ [ s:purple,   s:brightblack  ] ]
" let s:p.replace.left =    [ [ s:black,    s:red          ],    [ s:purple, s:gray ] ]
" " let s:p.command.left =    [ [ s:black,    s:red          ],    [ s:purple, s:gray ] ]
" " let s:p.inactive.left =   [ [ s:white,    s:brightblack  ], [ s:white, s:gray ] ]
" let s:p.inactive.left =   [ [ s:green,    s:brightblack, 'italic' ], [ s:white, s:gray, 'italic'] ]
" let s:p.inactive.right =  [ [ s:green,    s:brightblack ],[ s:white, s:gray  ] ]
" let s:p.inactive.middle = [ [ s:green,    s:brightblack ] ]
" let s:p.tabline.left =    [ [ s:green,    s:brightblack ] ]
" let s:p.tabline.tabsel =  [ [ s:black,    s:green       ] ]
" let s:p.tabline.middle =  [ [ s:inactive_light, s:brightblack, 'italic' ] ]
" " let s:p.tabline.right = copy(s:p.normal.right)
" let s:p.normal.error =    [ [ s:red,      s:brightblack ] ]
" let s:p.normal.warning =  [ [ s:yellow,   s:brightblack ] ]
" let s:p.normal.special =  [ [ s:cyan,     s:brightblack ] ]


