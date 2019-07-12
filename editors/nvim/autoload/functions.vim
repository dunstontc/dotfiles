
" =============================================================================

function! functions#ClearRegisters()
  let l:regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="*+'
  let l:i=0
  while (l:i<strlen(l:regs))
    exec 'let @'.l:regs[l:i].'=""'
    let l:i=l:i+1
  endwhile
endfunction

" =============================================================================

function! functions#NeatFoldTextTwo()
  let line             = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count      = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar         = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart    = strpart('' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend      = lines_count_text . repeat(foldchar, 8)
  let foldtextlength   = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction

" =============================================================================

function! functions#HoldOn() abort
  let g:held_reg_val  = getreg("+")
  let g:held_reg_type = getregtype("0")
  return ''
endfunction

function! functions#HandItOver() abort
  call setreg('+', g:held_reg_val, g:held_reg_type)
  let g:held_reg_val = ''
  let g:held_reg_type = ''
  return ''
endfunction

" =============================================================================
