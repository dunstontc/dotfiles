" =============================================================================
"  Filetype Associations
" =============================================================================
augroup filetypes
  autocmd!

  autocmd BufRead,BufNewFile *.cson set filetype=coffee

  autocmd BufRead,BufNewFile *.ctags set filetype=cfg

  autocmd BufRead,BufNewFile *.csv,*.dat,*.tsv set filetype=csv

  autocmd BufRead,BufNewFile {topydo,columns,column}.conf,column,columns,topydo,.taskrc set filetype=dosini

  autocmd BufRead,BufNewFile .{babel,eslint,stylelint,jshint,prettier}rc,.tern-*,*.json set filetype=json

  autocmd BufRead,BufNewFile .spacemacs set filetype=lisp

  autocmd BufNewFile,BufReadPost *.md set filetype=markdown

  autocmd BufNewFile,BufRead *.{jade,pug} set filetype=pug

  autocmd BufNewFile,BufRead *.pyi set filetype=python

  autocmd BufReadPost *.rs  filetype=rust

  autocmd BufRead,BufNewFile .{aliases,env,exports,functions,highlight,inputrc,path,} set filetype=sh
  autocmd BufRead,BufNewFile .{bash_prompt,bash_profile} set filetype=sh

  autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

  autocmd BufNewFile,BufReadPost *{snippets,snip} set filetype=snippets

  " https://github.com/tjdevries/config_manager

  " autocmd TermOpen term://*  set filetype=term

  autocmd BufNewFile,BufRead [Tt]odo.txt set filetype=todo
  autocmd BufNewFile,BufRead *.[Tt]odo.txt set filetype=todo
  autocmd BufNewFile,BufRead [Dd]one.txt set filetype=todo
  autocmd BufNewFile,BufRead *.[Dd]one.txt set filetype=todo

  autocmd BufNewFile,BufRead *.ts set filetype=typescript

  autocmd BufRead,BufNewFile rc.conf set filetype=vim

  " autocmd BufNewFile,BufReadPost *.wiki set filetype=wiki

augroup END


