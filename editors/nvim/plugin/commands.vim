" Open manpages in vertical splits
command -nargs=* -complete=help H vertical belowright help <args>

" Make these commonly mistyped commands still work
command! WQ wq
command! Wq wq
command! Wqa wqa
command! W w
command! Q q

" Use :C to clear hlsearch
command! C nohlsearch

command! ClearRegisters call functions#ClearRegisters()
