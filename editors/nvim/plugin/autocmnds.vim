augroup MyAutoCmds
  autocmd!

  " Automatically make splits equal in size
  autocmd VimResized * wincmd =

  " Head straight into insert mode in vim-terms
  " autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
  " autocmd BufEnter * if &filetype == 'terminal' | :startinsert | endif

  autocmd FileType python setlocal completeopt-=preview

  " Close vim if only NERDtree is open
  " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  " if has('folding')
  "   " Like the autocmd described in `:h last-position-jump` but we add `:foldopen!`.
  "   autocmd BufWinEnter * if line("'\"") > 1 && line("'\"") <= line('$') | execute "normal! g`\"" | execute 'silent! ' . line("'\"") . 'foldopen!' | endif
  " else
  "   autocmd BufWinEnter * if line("'\"") > 1 && line("'\"") <= line('$') | execute "normal! g`\"" | endif
  " endif

  " autocmd VimEnter,ColorScheme * call functions#change_iterm2_profile()

augroup END

