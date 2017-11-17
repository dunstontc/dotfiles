augroup MyAutoCmds
  autocmd!

  " Automatically make splits equal in size
  autocmd VimResized * wincmd =

  " http://vim.wikia.com/wiki/Detect_window_creation_with_WinEnter
  autocmd VimEnter * autocmd WinEnter * let w:created=1
  autocmd VimEnter * let w:created=1

  autocmd InsertLeave * set nopaste
  " if has('nvim')
  "   " Sync with corresponding non-nvim settings in ~/.vim/plugin/settings.vim:
  "   autocmd ColorScheme * highlight! link NonText ColorColumn
  "   autocmd ColorScheme * highlight! link CursorLineNr DiffText
  "   autocmd ColorScheme * highlight! link VertSplit LineNr
  " endif

  " Head straight into insert mode in vim-terms
  " autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
  " autocmd BufEnter * if &filetype == 'terminal' | :startinsert | endif

  autocmd FileType python setlocal completeopt-=preview

  autocmd BufNewFile,BufRead * setlocal formatoptions-=r
  autocmd BufNewFile,BufRead * setlocal formatoptions-=o

  " Close vim if only NERDtree is open
  " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    " if has('statusline')
    "   autocmd BufEnter,FocusGained,VimEnter,WinEnter * call tcd#autocmds#focus_statusline()
    "   autocmd FocusLost,WinLeave * call tcd#autocmds#blur_statusline()
    " endif
  " if has('folding')
  "   " Like the autocmd described in `:h last-position-jump` but we add `:foldopen!`.
  "   autocmd BufWinEnter * if line("'\"") > 1 && line("'\"") <= line('$') | execute "normal! g`\"" | execute 'silent! ' . line("'\"") . 'foldopen!' | endif
  " else
  "   autocmd BufWinEnter * if line("'\"") > 1 && line("'\"") <= line('$') | execute "normal! g`\"" | endif
  " endif

  " autocmd VimEnter,ColorScheme * call functions#change_iterm2_profile()

augroup END

