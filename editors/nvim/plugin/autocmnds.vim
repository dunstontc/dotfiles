augroup MyAutoCmds
  autocmd!

  " Automatically make splits equal in size
  autocmd VimResized * wincmd =

  " Head straight into insert mode in vim-terms
  autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif

  " Don't use Lightline in interface buffers
  " autocmd FileType nerdtree call lightline#disable()
  " autocmd FileType cheat40 call lightline#disable()
  " autocmd FileType quickmenu call lightline#disable()
  " autocmd FileType  call lightline#disable()


  " if has('folding')
  "   " Like the autocmd described in `:h last-position-jump` but we add `:foldopen!`.
  "   autocmd BufWinEnter * if line("'\"") > 1 && line("'\"") <= line('$') | execute "normal! g`\"" | execute 'silent! ' . line("'\"") . 'foldopen!' | endif
  " else
  "   autocmd BufWinEnter * if line("'\"") > 1 && line("'\"") <= line('$') | execute "normal! g`\"" | endif
  " endif

  " autocmd VimEnter,ColorScheme * call functions#change_iterm2_profile()

augroup END

