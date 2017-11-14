" =============================================================================
" === Lightline ===
" =============================================================================
" set laststatus=2  " Always show statusline

source /Users/clay/.dotfiles/editors/nvim/autoload/lightline/DarkPlus.vim

let g:lightline = {
      \ 'colorscheme': 'DarkPlus',
      \  'separator': { 'left': '', 'right': '' },
      \  'subseparator': { 'left': '', 'right': '' },
      \  'inactive': {
      \    'left': [ ['displace' ], ],
      \    'right': [ [''], ],
      \},
      \  'active': {
      \    'left': [ [ 'mode', 'paste' ],
      \            [   'readonly', 'filename' ],
      \            [   'foremat' ] ],
      \    'right': [ [ 'cool_col' ],
      \               [ 'linter_warnings', 'linter_errors', 'clipboard', 'tabsize' ],
      \               [ 'fsize' ] ]
      \},
      \  'component': {
      \    'clipboard': '%{v:register}',
      \    'displace' : '%F',
      \},
      \  'component_function': {
      \    'mode':            'LightlineMode',
      \    'filename':        'LightlineFilename',
      \    'readonly':        'LightlineReadonly',
      \    'filesymbol':      'WebDevIconsGetFileTypeSymbol',
      \    'cool_col':        'PaddedStats',
      \    'fsize':           'FileSize',
      \    'gitbranch':       'GitInfo',
      \    'highlite':        'StatuslineCurrentHighlight',
      \    'linter_warnings': 'LightlineLinterWarnings',
      \    'linter_errors':   'LightlineLinterErrors',
      \    'linter_ok':       'LightlineLinterOK',
      \    'super_stats':     'SelectiveStats',
      \    'tabsize':         'TabSizing',
      \    'hud':             'Hud',
      \    'foremat':         'MyFiletype',
      \    'fivemat':         'MyFileformat'
      \},
      \ 'component_type': {
      \   'linter_warnings': 'warning',
      \   'linter_errors':   'error',
      \   'linter_ok':       'ok'
      \},
      \ 'component_visible_condition': {
      \   'clipboard': '(&filetype !~# "\v(cheat40|denite|gundo|help|nerdtree|peekaboo|quickmenu|startify|undotree|unite|vimfiler|vimshell)")',
      \ },
      \}





" =============================================================================
      " \   'readonly': '(&filetype!="help"&& &readonly)',
      " \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      " \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())',

let g:tcd_blacklist = '\v(cheat40|denite|gundo|help|nerdtree|peekaboo|quickmenu|startify|undotree|unite|vimfiler|vimshell)'

" =============================================================================

" function! SelectiveStats() abort
"   " let l:current_register = ' ' . expand('%{v:register}')
"   let l:current_register = ' ' . expand(getreg())
"   " let l:current_register = ' %{v:register}'
"   return 'v:register'
" endfunction

" =============================================================================

function! LightlineMode() abort
  return expand('%:t') ==#  '__Tagbar__' ? 'Tagbar'   :
        \ expand('%:t') ==# 'ControlP'   ? 'CtrlP'    :
        \ expand('%:t') ==# 'peekaboo'   ? 'Peekaboo' :
        \ &filetype ==#     'cheat40'    ? 'Cheat40'  :
        \ &filetype ==#     'denite'     ? 'Denite'   :
        \ &filetype ==#     'deol'       ? 'Deol'     :
        \ &filetype ==#     'gitcommit'  ? 'Fugitive' :
        \ &filetype ==#     'help'       ? 'Help'     :
        \ &filetype ==#     'neoterm'    ? 'NeoTerm'  :
        \ &filetype ==#     'nerdtree'   ? 'NERDTree' :
        \ &filetype ==#     'peekaboo'   ? 'Peekaboo' :
        \ &filetype ==#     'quickmenu'  ? 'Menu':
        \ &filetype ==#     'startify'   ? 'Startify' :
        \ &filetype ==#     'unite'      ? 'Unite'    :
        \ &filetype ==#     'undotree'   ? 'UndoTree' :
        \ &filetype ==#     'vimfiler'   ? 'VimFiler' :
        \ &filetype ==#     'vimshell'   ? 'VimShell' :
        \ lightline#mode()
endfunction

" =============================================================================

function! LightlineFilename() abort
  let l:filename = expand('%:t') !=# '' ? expand('%:t') : ''
  let l:modified = &modified ? ' +' : ''
  return &filetype !~# g:tcd_blacklist ? (l:filename . l:modified) : ''
endfunction


" =============================================================================

function! LightlineReadonly() abort
  return &readonly && &filetype !~# g:tcd_blacklist ? '' : ''
endfunction

let g:unite_force_overwrite_statusline = 0
let g:denite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0

" =============================================================================

function! TabSizing() abort
  return &filetype !~# g:tcd_blacklist ? ( '␉ ' . &shiftwidth ) : ''
endfunction

" =============================================================================
" add the column number with padding so the sections don't resize
function! PaddedStats() abort
  let l:column = virtcol('.')
  let l:padCol = ''
  let l:row = line('.')
  let l:padRow = ''
  let l:total = line('$')

  if strlen(l:column) == 3
    let l:padCol = l:column
  elseif strlen(l:column) == 2
    let l:padCol = ' ' . l:column
  else
    let l:padCol = ' 0' . l:column
  endif

  if (strlen(l:row) > 2)
    let l:padRow = l:row
  else
    let l:padRow = ' ' . l:row
  endif

  return &filetype !~# g:tcd_blacklist ? (' ' . l:padRow  . '/' . l:total . ' :' . l:padCol) :
                                       \ ( l:row  . '/' . l:total )
endfunction

" =============================================================================
" Find out current buffer's size and output it.
function! FileSize() abort
  let l:bytes = getfsize(expand('%:p'))
  if (l:bytes >= 1024)
    let l:kbytes = l:bytes / 1024
  endif
  if (exists('l:kbytes') && l:kbytes >= 1000)
    let l:mbytes = l:kbytes / 1000
  endif

  if l:bytes <= 0
    return &filetype !~# g:tcd_blacklist ? ('0 B') : ''
  endif

  if (exists('l:mbytes'))
    return &filetype !~# g:tcd_blacklist ? (l:mbytes . ' MB') : ''
  elseif (exists('l:kbytes'))
    return &filetype !~# g:tcd_blacklist ? (l:kbytes . ' KB') : ''
  else
    return &filetype !~# g:tcd_blacklist ? (l:bytes . ' B') : ''
  endif
endfunction

" =============================================================================

function! GitInfo()
  let l:git = fugitive#head()
  if l:git != ''
    return '  '.fugitive#head()
  else
    return ''
  endif
endfunction

" function! LightlineFugitive()
"   if &ft !~? 'vimfiler' && exists('*fugitive#head')
"     let branch = fugitive#head()
"     return branch !=# '' ? '⭠ '.branch : ''
"   endif
"   return ''
" endfunction

" =============================================================================

autocmd User ALELint call lightline#update()

" ale + lightline
function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('◊ %d', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('✗ %d  ', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓' : ''
endfunction

" =============================================================================

function! MyFiletype()
  " return winwidth(0) > 60 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  return &filetype !~# g:tcd_blacklist ? WebDevIconsGetFileTypeSymbol() : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 60 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" =============================================================================

" function! s:fzf_statusline()
"   " Override statusline as you like
"   highlight fzf1 ctermfg=161 ctermbg=251
"   highlight fzf2 ctermfg=23 ctermbg=251
"   highlight fzf3 ctermfg=237 ctermbg=251
"   setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
" endfunction

" autocmd! User FzfStatusLine call <SID>fzf_statusline()

" =============================================================================

" let g:word_count="<unknown>"
" function WordCount()
"     return g:word_count
" endfunction
"
" function UpdateWordCount()
"     let lnum = 1
"     let n = 0
"     while lnum <= line('$')
"         let n = n + len(split(getline(lnum)))
"         let lnum = lnum + 1
"     endwhile
"     let g:word_count = n
" endfunction
" " Update the count when cursor is idle in command or insert mode.
" " Update when idle for 1000 msec (default is 4000 msec).
" set updatetime=1000
" augroup WordCounter
"     au! CursorHold,CursorHoldI * call UpdateWordCount()
" augroup END


" let g:word_count="<unknown>"
" fun! WordCount()
"     return g:word_count
" endfun
" fun! UpdateWordCount()
"     let s = system("wc -w ".expand("%p"))
"     let parts = split(s, ' ')
"     if len(parts) > 1
"         let g:word_count = parts[0]
"     endif
" endfun
"
" augroup WordCounter
"     au! CursorHold * call UpdateWordCount()
"     au! CursorHoldI * call UpdateWordCount()
" augroup END
"
" " how eager are you? (default is 4000 ms)
" set updatetime=500


" =============================================================================

" " Standard Status Line
" " :set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"
" hi User1 guifg=#e06c75
" hi User2 guifg=#61afef
"
"
" set statusline=
" set statusline+=%1*\ \ %{getcwd()}%*                " Current Working Directory
" set statusline+=\ \ [%n]                            " Buffer #
" set statusline+=%2*\ \ %t%*                         " Filename
" set statusline+=\ %{WebDevIconsGetFileTypeSymbol()} " FileType
" set statusline+=\ %-3(%{FileSize()}%)               " File size
" set statusline+=%*
" set statusline+=%=\                                 " left/right separator
" " set statusline+=%0*\ %{v:register}%*              " Current Register
" set statusline+=%2*\ \ %l:\ %L\ c:%v%*             " Row/total
" " set statusline+=\ \                               " Some padding
" set statusline+=%*                                  " Clear highlighting
