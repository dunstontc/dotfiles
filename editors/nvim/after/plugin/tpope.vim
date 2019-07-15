
""
" Find an ASCII value with `:echo char2nr("<character>")`
"
" autocmd FileType php let b:surround_45 = "<?php \r ?>"
" let g:surround_45 = "<% \r %>"

""
" Advanced, experimental, and subject to change:  One can also prompt for
" replacement text.  The syntax for this is to surround the replacement in pairs
" of low numbered control characters.  If this sounds confusing, that's because
" it is (but it makes the parsing easy).  Consider the following example for a
" LaTeX environment on the "l" replacement.
"
" let g:surround_108 = "\\begin{\1environment: \1}\r\\end{\1\1}"

let g:surround_69 = "\(\)"

let g:projectionist_heuristics = {
      \ "*": {
      \     "autoload/*.vim": {
      \           "type": "auto"
      \     },
      \     "plugin/*.vim": {
      \             "type": "plug"
      \     },
      \     "doc/*.txt": {
      \          "type": "doc"
      \     },
      \     "readme.md": {
      \          "type": "doc"
      \     },
      \     "syntax/*.vim": {
      \             "type": "syntax"
      \     },
      \     "todo.txt": {
      \         "type": "todo"
      \     },
      \     "rplugin/python3/denite/kind/*.py": {
      \        "alternate": "rplugin/python3/denite/source/{}.py",
      \             "type": "kind"
      \     },
      \     "rplugin/python3/denite/source/*.py": {
      \        "alternate": "rplugin/python3/denite/kind/{}.py",
      \             "type": "source"
      \     }
      \  }
      \}

augroup commentGroup
  autocmd!

  autocmd FileType text setlocal commentstring=#\ %s
  autocmd FileType txt setlocal commentstring=#\ %s
  autocmd FileType apache setlocal commentstring=#\ %s
  autocmd FileType terraform setlocal commentstring=#%s

augroup END

