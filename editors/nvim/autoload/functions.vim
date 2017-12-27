" let g:UtilNoColorcolumn = ['qf', 'fzf', 'netrw', 'help', 'markdown', 'startify', 'GrepperSide', 'txt']

function! functions#should_turn_off_colorcolumn() abort
  return functions#hasFileType(g:UtilNoColorcolumn)
endfunction

" =============================================================================

" https://github.com/mhartington/dotfiles/blob/master/config/nvim/init.vim#L216 🙏
" Log scope @ the cursor
function! functions#SynStack()
  " if !exists('*synstack')
  "   return
  " endif
  " let l:syntaks = map(synstack(line('.'), col('.')), "synIDattr(v:val, 'name')")
  " echo l:syntaks
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

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

function! functions#NeatFoldText()
  let l:raquo='»'
  let l:foldchar = matchstr(&fillchars, 'fold:\zs.')
  let l:lines=(v:foldend - v:foldstart + 1) . ' lines'
  let l:first=substitute(getline(v:foldstart), '\v *', '', '')
  let l:dashes=substitute(v:folddashes, '-', l:foldchar, 'g')
  return l:raquo . l:dashes . l:foldchar . l:foldchar . l:lines . ': ' . l:first
endfunction

function! functions#SuperSexyFoldText()
    let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
    let lines_count = v:foldend - v:foldstart + 1
    let lines_count_text = printf("%s", lines_count)
    let foldchar = " "
    let foldtextstart = strpart('' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
    let foldtextend = ' ( ' . repeat(" ", 5 - len(lines_count_text)) . lines_count_text . repeat(" ", 2) . "lines" . '   )  '
    let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
    return '....' . repeat('.', winwidth('.') / 4) . " " . line . repeat(foldchar, winwidth('.') / 3 - len(line)) . foldtextend . repeat(".", winwidth('.'))
endfunction

function! functions#NeatFoldTextTwo()
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction

" =============================================================================

function! functions#TwoSplit(filepath)
  let l:confirmed = confirm('Open in a new window?', "&Yes\n&No", 2)
  if l:confirmed == 1
    execute "vsplit ".fnameescape(a:filepath)
  else
    execute "edit ".fnameescape(a:filepath)
  endif
endfunction

function! functions#ThreeSplit(filepath)
  let l:confirmed = confirm('How you want it boss?', "&Open\n&Vertical\n&Horizontal", 1)
  if l:confirmed == 1
    execute "edit ".fnameescape(a:filepath)
  elseif l:confirmed == 2
    execute "vsplit ".fnameescape(a:filepath)
  elseif l:confirmed == 3
    execute "split ".fnameescape(a:filepath)
  endif
endfunction

" =============================================================================

function! functions#Chomp()
  " let l:column = virtcol('.') " cursor position

  if (virtcol('.') != 1)
    " execute 'call feedkeys("a\<bs>\<esc>")'
    exec 'normal i<del><esc><right>'
  else
    exec 'normal a<bs><esc>'
    " execute 'call feedkeys("a\<del>\<esc>\<right>")'
  endif
endfunction


" =============================================================================
function! functions#tcdtoggle()
  if ( g:tcd#testvar )
    let g:tcd#testvar = 0
  else
    let g:tcd#testvar = 1
  endif
  echom g:tcd#testvar
endfunction


" =============================================================================
"  === Utilities ===
" =============================================================================

function! s:fnameescape(file) abort
  if exists('*fnameescape')
    return fnameescape(a:file)
  else
    return escape(a:file," \t\n*?[{`$\\%#'\"|!<")
  endif
endfunction
d
function! s:runtime_globpath(file) abort
  return split(globpath(escape(&runtimepath, ' '), a:file), "\n")
endfunction


" =============================================================================


" When switching colorscheme in terminal vim change the profile in iTerm as well.
" https://github.com/vheon/home/blob/b4535fdfd0cb2df93284f69d676d587b3e2b2a21/.vim/vimrc#L318-L339
" function! functions#change_iterm2_profile()
"   " let dual_colorschemes = ['onedark', 'gruvbox']
"   let l:is_iTerm = exists('$TERM_PROGRAM') && $TERM_PROGRAM =~# 'iTerm.app'
"   if l:is_iTerm
"     if exists('g:colors_name')
"       let l:profile = g:colors_name
"       " if index(dual_colorschemes, g:colors_name) >= 0
"       "   let profile .= '_'.&background
"       "   echo profile
"       " endif
"       let l:escape = '\033]50;SetProfile='.l:profile.'\x7'
"       if exists('$TMUX')
"         let l:escape = '\033Ptmux;'.substitute(l:escape, '\\033', '\\033\\033', 'g').'\033\\'
"       endif
"       " for some reason it always sets BG to light?
"       silent call system("printf '".l:escape."' > /dev/tty")
"     endif
"   endif
" endfunction

