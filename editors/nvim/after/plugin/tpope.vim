
" autocmd FileType php let b:surround_45 = "<?php \r ?>"
" let g:surround_45 = "<% \r %>"
" let g:surround_61 = "<%= \r %>"
" let g:surround_108 = "\\begin{\1environment: \1}\r\\end{\1\1}"

let g:projectionist_heuristics = {
      \ "*": {
      \     "autoload/*.vim": {
      \           "type": "auto"
      \     },
      \     "doc/*.txt": {
      \          "type": "doc"
      \     },
      \     "plugin/*.vim": {
      \             "type": "plug"
      \     },
      \     "syntax/*.vim": {
      \             "type": "syntax"
      \     },
      \     "readme.md": {
      \          "type": "doc"
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


