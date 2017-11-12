" scriptencoding utf-8
"
" function! statusline#rhs() abort
"   let l:rhs=' '
"   if winwidth(0) > 80
"     let l:column=virtcol('.')
"     let l:width=virtcol('$')
"     let l:line=line('.')
"     let l:height=line('$')
"
"     " Add padding to stop rhs from changing too much as we move the cursor.
"     let l:padding=len(l:height) - len(l:line)
"     if (l:padding)
"       let l:rhs.=repeat(' ', l:padding)
"     endif
"
"     let l:rhs.=' '
"     let l:rhs.=l:line
"     let l:rhs.='/'
"     let l:rhs.=l:height
"     let l:rhs.=' : '
"     let l:rhs.=l:column
"     let l:rhs.='/'
"     let l:rhs.=l:width
"     let l:rhs.=' '
"
"     " Add padding to stop rhs from changing too much as we move the cursor.
"     if len(l:column) < 2
"       let l:rhs.=' '
"     endif
"     if len(l:width) < 2
"       let l:rhs.=' '
"     endif
"   endif
"   return l:rhs
" endfunction
"
"
" function! statusline#GitInfo()
"   let l:git = fugitive#head()
"   if l:git != ''
"     return '  '.fugitive#head()
"   else
"     return ''
"   endif
" endfunction
"
"
" " add the column number with padding so the sections don't resize
" function! statusline#PaddedStats() abort
"   let l:column = virtcol('.')
"   let l:padCol = ''
"   let l:row = line('.')
"   let l:padRow = ''
"   let l:total = line('$')
"
"   if strlen(l:column) == 3
"     let l:padCol = l:column
"   elseif strlen(l:column) == 2
"     let l:padCol = ' ' . l:column
"   else
"     let l:padCol = ' 0' . l:column
"   endif
"
"   if (strlen(l:row) > 2)
"     let l:padRow = l:row
"   else
"     let l:padRow = ' ' . l:row
"   endif
"
"   return ' ' . l:padRow  . '/' . l:total . ' :' . l:padCol
"
" endfunction
"
" " For a more fancy ale statusline
" " https://github.com/w0rp/ale#5iv-how-can-i-show-errors-or-warnings-in-my-statusline
" function! statusline#LinterStatus() abort
"   let l:symbol = '●'
"   let l:counts = ale#statusline#Count(bufnr(''))
"
"   let l:all_errors = l:counts.error + l:counts.style_error
"   let l:all_non_errors = l:counts.total - l:all_errors
"
"   return l:counts.total == 0 ? printf('%%#GitGutterAdd#%s%%*', l:symbol) : printf(
"         \   '%%#GitGutterDelete#%d %s %%#GitGutterChange#%d %s %%*',
"         \   l:all_errors,
"         \   l:symbol,
"         \   l:all_non_errors,
"         \   l:symbol
"         \)
" endfunction
"
" function! statusline#fileSize()
"   let l:bytes = getfsize(expand('%:p'))
"   if (l:bytes >= 1024)
"     let l:kbytes = l:bytes / 1024
"   endif
"   if (exists('kbytes') && l:kbytes >= 1000)
"     let l:mbytes = l:kbytes / 1000
"   endif
"
"   if l:bytes <= 0
"     return '[empty file] '
"   endif
"
"   if (exists('mbytes'))
"     return l:mbytes . ' MB '
"   elseif (exists('kbytes'))
"     return l:kbytes . ' KB '
"   else
"     return l:bytes . ' B '
"   endif
" endfunction
"
"
" " function! statusline#readOnly()
" "   if !&modifiable && &readonly
" "     return ' RO'
" "   elseif &modifiable && &readonly
" "     return 'RO'
" "   elseif !&modifiable && !&readonly
" "     return ''
" "   else
" "     return ''
" "   endif
" " endfunction
"
"
" function! statusline#readOnly()
"   if &readonly || !&modifiable
"     return ' '
"   else
"     return ''
"   endif
" endfunction
"
"
" function! statusline#modified()
"   return &modified ? '%#WarningMsg#' : '%6*'
" endfunction
"
" function! statusline#fileprefix()
"   let l:basename=expand('%:h')
"   if l:basename == '' || l:basename == '.'
"     return ''
"   else
"     " Make sure we show $HOME as ~.
"     return substitute(l:basename . '/', '\C^' . $HOME, '~', '')
"   endif
" endfunction
"
" " DEFINE MODE DICTIONARY
" let s:dictmode= {
"       \ 'n':  ['Normal',             '4'],
"       \ 'no': ['N-Operator Pending', '4'],
"       \ 'v':  ['Visual',             '6'],
"       \ 'V':  ['V·Line',             '6'],
"       \ '⌃v': ['V·Block',            '6'],
"       \ 's':  ['Select',             '3'],
"       \ 'S':  ['S·Line',             '3'],
"       \ 'i':  ['Insert',             '5'],
"       \ 'R':  ['Replace',            '1'],
"       \ 'Rv': ['V·Replace',          '1'],
"       \ 'c':  ['Command',            '2'],
"       \ 'cv': ['Vim Ex',             '7'],
"       \ 'ce': ['Ex',                 '7'],
"       \ 'r':  ['Propmt',             '7'],
"       \ 'rm': ['More',               '7'],
"       \ 'r?': ['Confirm',            '7'],
"       \ '!':  ['Shell',              '2'],
"       \ 't':  ['Terminal',           '2']
"       \ }
"
" " DEFINE COLORS FOR STATUSBAR
" let s:dictstatuscolor={
"       \  '1': pinnacle#highlight({ 'bg': '#d16969', 'fg': '#1e1e1e' }),
"       \  '2': pinnacle#highlight({ 'bg': '#4ec9b0', 'fg': 'NONE'    }),
"       \  '3': pinnacle#highlight({ 'bg': '#264f78', 'fg': 'NONE'    }),
"       \  '4': pinnacle#highlight({ 'bg': '#608b4e', 'fg': '#1e1e1e' }),
"       \  '5': pinnacle#highlight({ 'bg': '#569cd6', 'fg': '#1e1e1e' }),
"       \  '6': pinnacle#highlight({ 'bg': '#c586c0', 'fg': '#1e1e1e' }),
"       \  '7': pinnacle#highlight({ 'bg': '#dcdcaa', 'fg': 'NONE'    }),
"       \ '10': pinnacle#highlight({ 'bg': 'NONE', 'fg': '#608b4e' }),
"       \}
"
"
" " GET CURRENT MODE FROM DICTIONARY AND RETURN IT
" " IF MODE IS NOT IN DICTIONARY RETURN THE ABBREVIATION
" " GetMode() GETS THE MODE FROM THE ARRAY THEN RETURNS THE NAME
" function! statusline#getMode()
"   let l:modenow = mode()
"   let l:modelist = get(s:dictmode, l:modenow, [l:modenow, '1'])
"   let l:modecolor = l:modelist[1]
"   let l:modename = l:modelist[0]
"   let l:modeexe = get(s:dictstatuscolor, l:modecolor, '1')
"   exec 'hi! StatusLine term=NONE gui=NONE ' . l:modeexe
"   return l:modename
" endfunction
"
" function! statusline#getModePart()
"   let l:modenow = mode()
"   let l:modelist = get(s:dictmode, l:modenow, [l:modenow, '1'])
"   let l:modecolor = l:modelist[1]
"   let l:modename = l:modelist[0]
"   let l:modeexe = get(s:dictstatuscolor, l:modecolor, '1')
"   exec 'hi! StatusLine term=NONE gui=NONE ' . l:modeexe
"   return l:modename
" endfunction
"
