
" autocmd FileType php let b:surround_45 = "<?php \r ?>"
" let g:surround_45 = "<% \r %>"
" let g:surround_61 = "<%= \r %>"
" let g:surround_108 = "\\begin{\1environment: \1}\r\\end{\1\1}"

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


