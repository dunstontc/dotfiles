setlocal spell
setlocal wrap
setlocal linebreak
setlocal nolist
setlocal textwidth=0
setlocal wrapmargin=0
setlocal conceallevel=2

" i = italic
let b:surround_105 = "*\r*"
nmap <buffer> <leader>i ysiwi
vmap <buffer> <leader>i Si
" I = bold
nmap <buffer> <leader>b ysiwI
vmap <buffer> <leader>b SI
let b:surround_73 = "**\r**"

" === (tpope/vim-markdown) ===
" let g:markdown_fenced_languages = ['html', 'js=javascript', 'python', 'ruby', 'sh', 'bash=sh', 'vim',]
let g:markdown_syntax_conceal = 1
" let g:markdown_minlines = 100

" ===(plasticboy/vim-markdown) ===
let g:vim_markdown_fenced_languages=[ 'bash=sh', 'zsh=zsh', 'ini=dosini', 'js=javascript', 'py=python', 'viml=vim' ]
let g:vim_markdown_no_default_key_mappings = 0
let g:vim_markdown_no_extensions_in_markdown = 0
" let g:vim_markdown_folding_style_pythonic = 1
" let g:vim_markdown_folding_level = 6
" let g:vim_markdown_override_foldtext = 0
" let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal = 1
" <Plug>Markdown_EditUrlUnderCursor
