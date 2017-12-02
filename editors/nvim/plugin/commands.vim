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

" Commands for user-defined functions

command -nargs=0 SynDef echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')

" command! -nargs=0 Chompp call functions#Chomp()

command! -nargs=1 TwoSplit call functions#TwoSplit(<args>)

command! ClearRegisters call functions#ClearRegisters()

" command! -nargs=0 Mail vsplit term://mutt

