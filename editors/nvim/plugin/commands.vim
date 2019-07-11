" Open help pages in vertical splits
command -nargs=* -complete=help H vertical belowright help <args>

" Convert all tabs in a file to 4 spaces
command -nargs=* TabsToSpaces :%s/	/  /g

" copy path of the active buffer
command -nargs=0 GetRelPath :let @+ = expand("%")
command -nargs=0 GetFullPath :let @+ = expand("%:p")
command -nargs=0 GetName :let @+ = expand("%:t")

" Make commonly mistyped commands still work
command! WQ x
command! Wq x

command -nargs=0 SynDef echom string(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'))

