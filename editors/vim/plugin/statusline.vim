" =============================================================================
" === statline ===
" =============================================================================
" source /Users/clay/.dotfiles/editors/nvim/autoload/lightline/DarkPlus.vim
let g:currentmode={
      \ 'n'  : 'Normal',
      \ 'no' : 'N·Operator Pending ',
      \ 'v'  : 'Visual ',
      \ 'V'  : 'V·Line ',
      \ ''   : 'V·Block ',
      \ 's'  : 'Select ',
      \ 'S'  : 'S·Line ',
      \ ''   : 'S·Block ',
      \ 'i'  : 'Insert ',
      \ 'R'  : 'Replace ',
      \ 'Rv' : 'V·Replace ',
      \ 'c'  : 'Command ',
      \ 'cv' : 'Vim Ex ',
      \ 'ce' : 'Ex ',
      \ 'r'  : 'Prompt ',
      \ 'rm' : 'More ',
      \ 'r?' : 'Confirm ',
      \ '!'  : 'Shell ',
      \ 't'  : 'Terminal '
      \}

" =============================================================================
let g:tcd_blacklist = '\v(cheat40|denite|gundo|help|nerdtree|peekaboo|quickmenu|startify|undotree|unite|vimfiler|vimshell)'

let g:unite_force_overwrite_statusline = 0
let g:denite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0

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

function! Filename() abort
  let l:filename = expand('%:t') !=# '' ? expand('%:t') : ''
  let l:modified = &modified ? ' +' : ''
  return &filetype !~# g:tcd_blacklist ? (l:filename . l:modified) : ''
endfunction

" =============================================================================

function! Readonly() abort
  return &readonly && &filetype !~# g:tcd_blacklist ? '' : ''
endfunction

" =============================================================================

function! TabSize() abort
  return &filetype !~# g:tcd_blacklist ? ( '␉ ' . &shiftwidth ) : ''
endfunction

" =============================================================================

function! SelectiveStats() abort
  " let l:current_register = ' ' . expand('%{v:register}')
  " let l:current_register = ' ' . expand(getreg())
  " let l:current_register = ' %{v:register}'
  return 'v:register'
endfunction

" =============================================================================

function! MyFiletype()
  return &filetype !~# g:tcd_blacklist ? WebDevIconsGetFileTypeSymbol() : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 60 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
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

  return &filetype !~# g:tcd_blacklist && winwidth(0) > 60 ? (' ' . l:padRow  . '/' . l:total . ' :' . l:padCol) :
                                       \ ( l:row  . '/' . l:total . ':' . l:column )
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
    return &filetype !~# g:tcd_blacklist && winwidth(0) > 60 ? ('0 B') : ''
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

" ale
function! LinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('◊ %d', all_non_errors)
endfunction

function! LinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('✗ %d', all_errors)
endfunction

function! LinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓' : ''
endfunction

" =============================================================================

" Create mode-based hilight groups
function! ChangeStatuslineColor()
  if (mode() =~# '\v(n|no)')
    exe 'hi! User7 ctermbg=65  guibg=#303030    guifg=#608B4E gui=None cterm=None'
    exe 'hi! User8 ctermbg=65  guibg=#505050 guifg=#608B4E gui=None cterm=None'
    exe 'hi! User9 ctermfg=65  guifg=#1E1E1E guibg=#608B4E gui=None cterm=None'
  elseif (mode() =~# '\v(v|V|)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
    exe 'hi! User7 ctermbg=176 guibg=#303030    guifg=#C586C0 gui=None cterm=None'
    exe 'hi! User8 ctermbg=176 guibg=#505050 guifg=#C586C0 gui=None cterm=None'
    exe 'hi! User9 ctermfg=176 guifg=#1E1E1E guibg=#C586C0 gui=None cterm=None'
  elseif (mode() ==# '\v(!|t)')
    exe 'hi! User7 ctermfg=43  guibg=#303030    guifg=#4EC9B0 gui=None cterm=None'
    exe 'hi! User8 ctermfg=43  guibg=#505050 guifg=#4EC9B0 gui=None cterm=None'
    exe 'hi! User9 ctermfg=43  guifg=#1E1E1E guibg=#4EC9B0 gui=None cterm=None'
  elseif (mode() ==# 'i')
    exe 'hi! User7 ctermfg=75  guibg=#303030    guifg=#569CD6 gui=None cterm=None'
    exe 'hi! User8 ctermfg=75  guibg=#505050 guifg=#569CD6 gui=None cterm=None'
    exe 'hi! User9 ctermfg=75  guifg=#1E1E1E guibg=#569CD6 gui=None cterm=None'
  else
    exe 'hi! User7 ctermfg=65  guibg=#303030    guifg=#608B4E gui=None cterm=None'
    exe 'hi! User8 ctermfg=65  guibg=#505050 guifg=#608B4E gui=None cterm=None'
    exe 'hi! User9 ctermfg=65  guifg=#1E1E1E guibg=#608B4E gui=None cterm=None'
  endif

  return ''
endfunction

highlight User1 guibg=None    guifg=None    cterm=None gui=None
highlight User2 guifg=#d4d4d4 guibg=#505050 cterm=None gui=None
highlight User3 guibg=#303030    guifg=#505050 cterm=None gui=None
highlight User4 guibg=#303030 guifg=#303030 cterm=None gui=None


" =============================================================================


set laststatus=2
set statusline=
set statusline+=%{ChangeStatuslineColor()}                 " Changing the statusline color
set statusline+=%9*\ %{toupper(g:currentmode[mode()])}%*   " Current mode
set statusline+=%8*%*
set statusline+=%8*\ (%n)                                  " Buffer #
set statusline+=%2*\ %{Filename()}\                        " Filename & Modified
set statusline+=%3*%*
set statusline+=%7*\ %{MyFiletype()}%*
set statusline+=%7*\ %{Readonly()}%*
set statusline+=%4*%=                                      " Clear
" set statusline+=\ %=                                     " Space
" set statusline+=\ %{LinterWarnings()}%*           " Ale Warnings
" set statusline+=%0*\ %{LinterErrors()}%*\         " Ale Errors
" set statusline+=%4*
set statusline+=%7*\ %{FileSize()}\ %*
set statusline+=%3*%*
set statusline+=%2*\ \ %{v:register}%*                    " The currently selected register
set statusline+=%2*\ %{TabSize()}\                       " Line & column info
set statusline+=%8*%*
set statusline+=%9*\ %{PaddedStats()}\ \                   " Line & column info
