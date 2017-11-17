augroup MyAutoCmds
  autocmd!

  " Automatically make splits equal in size
  autocmd VimResized * wincmd =

  " http://vim.wikia.com/wiki/Detect_window_creation_with_WinEnter
  autocmd VimEnter * autocmd WinEnter * let w:created=1
  autocmd VimEnter * let w:created=1

  autocmd InsertLeave * set nopaste


  autocmd BufNewFile,BufRead * setlocal formatoptions-=r
  autocmd BufNewFile,BufRead * setlocal formatoptions-=o


augroup END
