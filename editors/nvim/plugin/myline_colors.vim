

" ==============================================================================

" autocmd InsertLeave * hi! EndOfBuffer guifg=#608B4E guibg=#303030
function! myline_colors#color_normal() abort
  highlight! User1 ctermfg=0 guifg=#1e1e1e ctermbg=2 guibg=#608b4e cterm=NONE gui=NONE
  highlight! User3 ctermfg=2 guifg=#608b4e ctermbg=0 guibg=#303030 cterm=NONE gui=NONE
endfunction

function! myline_colors#color_insert() abort
  highlight! User1 ctermfg=0 guifg=#1e1e1e ctermbg=4 guibg=#569cd6 cterm=NONE gui=NONE
  highlight! User3 ctermfg=4 guifg=#569cd6 ctermbg=0 guibg=#303030 cterm=NONE gui=NONE
endfunction

function! myline_colors#color_visual() abort
  highlight! User1 ctermfg=0 guifg=#1e1e1e ctermbg=13 guibg=#c586c0 cterm=NONE gui=NONE
  highlight! User3 ctermfg=13 guifg=#c586c0 ctermbg=0 guibg=#303030 cterm=NONE gui=NONE
endfunction

" ==============================================================================

""
" See: https://groups.google.com/d/msg/vim_use/PFOBAog21fU/dFLSZo6Vl5QJ
function! s:list_contains(list, item) abort
  if (index(a:list, a:item) >= 0)
    return 1
  else
    return 0
  endif
endfunction

" via h: mode():
"
" n	Normal
" no	Operator-pending
" v	Visual by character
" V	Visual by line
" CTRL-V	Visual blockwise
" s	Select by character
" S	Select by line
" CTRL-S	Select blockwise
" i	Insert
" ic	Insert mode completion |compl-generic|
" ix	Insert mode |i_CTRL-X| completion
" R	Replace |R|
" Rc	Replace mode completion |compl-generic|
" Rv	Virtual Replace |gR|
" Rx	Replace mode |i_CTRL-X| completion
" c	Command-line editing
" cv	Vim Ex mode |gQ|
" ce	Normal Ex mode |Q|
" r	Hit-enter prompt
" rm	The -- more -- prompt
" r?	A |:confirm| query of some sort
" !	Shell or external command is executing
" t	Terminal mode: keys go to the job

""
" See: https://groups.google.com/d/msg/vim_use/PFOBAog21fU/dFLSZo6Vl5QJ
function! myline_colors#UpdateColor() abort
  let l:normal_modes = ['n', 'no']
  let l:visual_modes = ['v', 'V', '']
  let l:insert_modes = ['i', 'ic', 'ix']

  if s:list_contains(insert_modes, mode())
    call myline_colors#color_insert()
  elseif s:list_contains(normal_modes, mode())
    call myline_colors#color_normal()
  elseif s:list_contains(visual_modes, mode())
    call myline_colors#color_visual()
  endif
endfunction


" ==============================================================================

" augroup myline#color
"   autocmd!
  autocmd InsertEnter * call myline_colors#color_insert()
  autocmd InsertLeave * call myline_colors#UpdateColor()
  autocmd CursorMoved * call myline_colors#UpdateColor()
  autocmd CursorMovedI * call myline_colors#UpdateColor()
"   autocmd CursorHold * call myline_colors#UpdateColor()
"   autocmd CursorHoldI * call myline_colors#UpdateColor()
" augroup END
" call timer_start(100, function('myline_colors#UpdateColor'), {'repeat': -1})

" ==============================================================================
