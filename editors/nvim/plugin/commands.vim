" Open manpages in vertical splits
command -nargs=* -complete=help H vertical belowright help <args>

command -nargs=* TabsToSpaces :%s/	/  /g
" copy path of the active buffer
command -nargs=0 GetRelPath :let @+ = expand("%")
command -nargs=0 GetFullPath :let @+ = expand("%:p")
command -nargs=0 GetName :let @+ = expand("%:t")


" Make these commonly mistyped commands still work
command! WQ x
command! Wq x
" command! Wqa wqa
" command! W w
" command! Q q

" Use :C to clear hlsearch
" command! C nohlsearch

command! FormatJSON %!python -m json.tool

command -nargs=0 SynDef echom string(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'))

command! -nargs=1 TwoSplit call functions#TwoSplit(<args>)

command! ClearRegisters call functions#ClearRegisters()

" http://vim.wikia.com/g00/wiki/Append_output_of_an_external_command?i10c.encReferrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8%3D
command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

" command! -nargs=0 Mail vsplit term://mutt

