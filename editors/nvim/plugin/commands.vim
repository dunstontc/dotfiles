" Open manpages in vertical splits
command -nargs=* -complete=help H vertical belowright help <args>


" copy path of the active buffer
command -nargs=0 GetRelPath :let @+ = expand("%")
command -nargs=0 GetFullPath :let @+ = expand("%:p")
command -nargs=0 GetName :let @+ = expand("%:t")


" Make these commonly mistyped commands still work
command! WQ wq
command! Wq wq
command! Wqa wqa
command! W w
command! Q q

" Use :C to clear hlsearch
command! C nohlsearch

" Commands for user-defined functions

command SynDef call functions#SynStack()

command! -nargs=1 TwoSplit call functions#TwoSplit(<args>)

command! ClearRegisters call functions#ClearRegisters()
