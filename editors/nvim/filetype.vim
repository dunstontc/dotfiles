" =============================================================================
"  Filetype Associations
" =============================================================================
augroup filetypes
  autocmd!

  autocmd BufRead,BufNewFile *.cson set filetype=coffee

  autocmd BufRead,BufNewFile *.ctags set filetype=config

  autocmd BufRead,BufNewFile {topydo,columns,column}.conf,column,columns,topydo,.taskrc set filetype=dosini

  autocmd BufRead,BufNewFile .{babel,eslint,stylelint,jshint,prettier}rc,.tern-*,*.json set filetype=json

  autocmd BufRead,BufNewFile .spacemacs set filetype=lisp

  autocmd BufNewFile,BufReadPost *.md set filetype=markdown

  autocmd BufNewFile,BufRead *.pug set filetype=pug

  autocmd BufReadPost *.rs setlocal filetype=rust

  autocmd BufRead,BufNewFile .{aliases,env,exports,functions,highlight,inputrc,path,} set filetype=sh
  autocmd BufRead,BufNewFile .{bash_prompt,bash_profile} set filetype=sh

  autocmd BufNewFile,BufReadPost *{snippets,snip} set filetype=snippets

  " https://github.com/tjdevries/config_manager
  autocmd TermOpen term://*  set filetype=term

  autocmd BufNewFile,BufRead [Tt]odo.txt set filetype=todo
  autocmd BufNewFile,BufRead *.[Tt]odo.txt set filetype=todo
  autocmd BufNewFile,BufRead [Dd]one.txt set filetype=todo
  autocmd BufNewFile,BufRead *.[Dd]one.txt set filetype=todo

  autocmd BufNewFile,BufRead *.ts set filetype=typescript

  autocmd BufRead,BufNewFile rc.conf set filetype=vim

  " autocmd BufNewFile,BufReadPost *.wiki set filetype=wiki

augroup END
" =============================================================================
"  Language Specific Settings
" =============================================================================

"  === Markdown ===
" (tpope/vim-markdown)
let g:markdown_fenced_languages = ['html', 'js=javascript', 'python', 'ruby', 'sh', 'bash=sh', 'vim',]
" let g:markdown_syntax_conceal = 1
" let g:markdown_minlines = 100

" (plasticboy/vim-markdown)
let g:vim_markdown_fenced_languages=[ 'bash=sh', 'c++=cpp', 'ini=dosini', 'js=javascript', 'py=python', 'viml=vim' ]
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


"  === JSON ===
let g:vim_json_syntax_conceal = 0




