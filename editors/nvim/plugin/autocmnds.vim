augroup MyAutoCmds
  autocmd!

  " Automatically make splits equal in size
  autocmd VimResized * wincmd =

  " http://vim.wikia.com/wiki/Detect_window_creation_with_WinEnter
  " autocmd VimEnter * autocmd WinEnter * let w:created=1
  " autocmd VimEnter * let w:created=1

  " Disable yank history in sensitive files
  autocmd BufWinEnter \(*.asc\|*.gpg\) let g:neoyank_disable = 1

  " autocmd InsertLeave * set nopaste

  " if has('nvim')
  "   " Sync with corresponding non-nvim settings in ~/.vim/plugin/settings.vim:
  "   autocmd ColorScheme * highlight! link NonText ColorColumn
  "   autocmd ColorScheme * highlight! link CursorLineNr DiffText
  "   autocmd ColorScheme * highlight! link VertSplit LineNr
  " endif

  " autocmd FileType python setlocal completeopt-=preview

  " autocmd InsertEnter * highlight! CursorLineNr guifg=#569CD6 guibg=#303030
  " autocmd InsertEnter * hi! EndOfBuffer guifg=#569CD6 guibg=#303030
  " autocmd InsertLeave * highlight! CursorLineNr guifg=#608B4E guibg=#303030
  " autocmd InsertLeave * hi! EndOfBuffer guifg=#608B4E guibg=#303030

  autocmd BufNewFile,BufRead * setlocal formatoptions-=r
  autocmd BufNewFile,BufRead * setlocal formatoptions-=o

  " Open VimFiler with nvim if no file specified
  " autocmd VimEnter * if !argc() | VimFiler | endif
  " Close if we only have a VimFiler buffer
  " autocmd BufEnter * if (!has('vim_starting') && winnr('$') == 1
  " \ && &filetype ==# 'vimfiler') | quit | endif
  " Close vim if only NERDtree is open
  " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  " autocmd VimEnter,ColorScheme * call functions#change_iterm2_profile()
augroup END
