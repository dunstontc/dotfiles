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
      \    'left': [ ['displace', 'mood'], ],
      \    'right': [ [''], ],
      \},
      \  'active': {
      \    'left': [ [ 's','mode','s' ],
      \            [   'readonly', 'filename', ],
      \            [   'icon',     'fsize' ] ],
      \    'right': [ [ 'cool_col' ],
      \               [ 'tabsize'  ],
      \               [ 'linter_warnings', 'linter_errors', 's', 'anzu', 's', 'paste' ] ]
      \},
      \  'component': {
      \    'clipboard': ' %{v:register}',
      \    'displace' : ' %F',
      \    's'        : ' ',
      \},
      \  'component_function': {
      \    'mode':            'Mode',
      \    'mood':            'Mood',
      \    'filename':        'Filename',
      \    'readonly':        'Readonly',
      \    'filesymbol':      'WebDevIconsGetFileTypeSymbol',
      \    'cool_col':        'PaddedStats',
      \    'fsize':           'FileSize',
      \    'gitbranch':       'GitInfo',
      \    'highlite':        'StatuslineCurrentHighlight',
      \    'tabsize':         'TabSizing',
      \    'hud':             'Hud',
      \    'icon':            'MyFiletype',
      \    'anzu':            'anzu#search_status'
      \},
      \ 'component_expand': {
      \   'linter_warnings': 'LightlineLinterWarnings',
      \   'linter_errors':   'LightlineLinterErrors',
      \},
      \ 'component_type': {
      \   'linter_warnings': 'warning',
      \   'linter_errors':   'error',
      \   'linter_ok':       'ok'
      \},
      \}





" =============================================================================

let g:tcd_blacklist = '\v(cheat40|denite|gundo|help|nerdtree|netrw|peekaboo|quickmenu|startify|undotree|unite|vimfiler|vimshell)'

" let g:unite_force_overwrite_statusline = 0
" let g:denite_force_overwrite_statusline = 0
" let g:vimfiler_force_overwrite_statusline = 0

" =============================================================================


function! Mode() abort
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
        \ &filetype ==#     'netrw'      ? 'netrw'    :
        \ &filetype ==#     'peekaboo'   ? 'Peekaboo' :
        \ &filetype ==#     'quickmenu'  ? 'Menu'     :
        \ &filetype ==#     'startify'   ? 'Startify' :
        \ &filetype ==#     'unite'      ? 'Unite'    :
        \ &filetype ==#     'undotree'   ? 'UndoTree' :
        \ &filetype ==#     'vimfiler'   ? 'VimFiler' :
        \ &filetype ==#     'vimshell'   ? 'VimShell' :
        \ lightline#mode()
endfunction

" =============================================================================

function! Mood() abort
  let l:modified = &modified ? ' (+) ' : ''
  return &filetype !~# g:tcd_blacklist ? (l:modified) : ''
endfunction
" =============================================================================

function! Filename() abort
  let l:filename = expand('%:t') !=# '' ? expand('%:t') : ''
  let l:modified = &modified ? ' +' : ''
  return &filetype !~# g:tcd_blacklist ? (' ' . l:filename . '' . l:modified) : ' '
endfunction

" =============================================================================

function! Readonly() abort
  return &readonly && &filetype !~# g:tcd_blacklist ? '  ' : ''
endfunction

" =============================================================================

function! TabSizing() abort
  return &filetype !~# g:tcd_blacklist && winwidth(0) > 60 ? ( '␉ ' . &shiftwidth . ' ') : ''
endfunction

" =============================================================================

function! MyFiletype()
  " return winwidth(0) > 60 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  return &filetype !~# g:tcd_blacklist && winwidth(0) > 60 ? ('  '.WebDevIconsGetFileTypeSymbol().' ') : ''
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

" =============================================================================

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

  return &filetype !~# g:tcd_blacklist && winwidth(0) > 60 ? (' ' . l:padRow  . '/' . l:total . ' :' . l:padCol . ' ') :
                                       \ ( l:row  . '/' . l:total . ':' . l:column . ' ')
endfunction

" =============================================================================

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
    return &filetype !~# g:tcd_blacklist && winwidth(0) > 60 ? (l:mbytes . ' MB') : ''
  elseif (exists('l:kbytes'))
    return &filetype !~# g:tcd_blacklist && winwidth(0) > 60 ? (l:kbytes . ' KB') : ''
  else
    return &filetype !~# g:tcd_blacklist && winwidth(0) > 60 ? (l:bytes . ' B') : ''
  endif
endfunction

" =============================================================================
" ale + lightline

augroup lightline#ale
  autocmd!
  autocmd User ALELint call lightline#update()
augroup END

" let s:indicator_warnings = get(g:, 'lightline#ale#indicator_warnings', 'W:')
" let s:indicator_errors = get(g:, 'lightline#ale#indicator_errors', 'E:')
" let s:indicator_ok = get(g:, 'lightline#ale#indicator_ok', 'OK')

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  " return l:counts.total == 0 ? '' : printf('◊ %d ', all_non_errors)
  return l:counts.total == 0 ? '' : printf('● %d ', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('✗ %d', all_errors)
  " return l:counts.total == 0 ? '' : printf('● %d', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓' : ''
endfunction

