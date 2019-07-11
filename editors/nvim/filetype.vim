" =============================================================================
"  Filetype Associations
" =============================================================================
augroup filetypes
  autocmd!

  autocmd BufRead,BufNewFile *.cson set filetype=coffee

  autocmd BufRead,BufNewFile *.csx set filetype=cs

  autocmd BufRead,BufNewFile *.cr set filetype=crystal

  autocmd BufRead,BufNewFile *.ctags,*.cnf,.editorconfig set filetype=cfg

  autocmd BufRead,BufNewFile *.csv,*.dat,*.tsv set filetype=csv

  autocmd BufNewFile,BufRead [Dd]ockerfile,Dockerfile.*,*.Dockerfile set filetype=dockerfile

  autocmd BufRead,BufNewFile {topydo,columns,column}.conf,column,columns,topydo,.taskrc set filetype=dosini

  autocmd BufRead,BufNewFile *.{gohtml,tpl,tmpl} set filetype=gohtml

  autocmd BufRead,BufNewFile .{babel,eslint,stylelint,jshint,prettier,cheat}rc,.tern-*,*.json set filetype=json

  autocmd BufRead,BufNewFile *.hs set filetype=haskell

  autocmd BufRead,BufNewFile .spacemacs set filetype=lisp

  autocmd BufNewFile,BufRead *.{mustache,hogan,hulk,hjs} set filetype=html.mustache syntax=mustache
  autocmd BufNewFile,BufRead *.{handlebars,hbs} set filetype=html.handlebars syntax=mustache

  autocmd BufNewFile,BufReadPost *.md set filetype=markdown

  autocmd BufNewFile,BufRead *.{jade,pug} set filetype=pug

  autocmd BufNewFile,BufRead *.log set filetype=prolog

  autocmd BufNewFile,BufRead *.pyi set filetype=python

  autocmd BufReadPost,BufRead *.rs set filetype=rust

  autocmd BufRead,BufNewFile Vagrantfile,Vagrantfile.local,.vagrantuser set filetype=ruby

  autocmd BufRead,BufNewFile .{aliases,env,exports,functions,highlight,inputrc,path} set filetype=sh
  autocmd BufRead,BufNewFile *.{bashrc,bash_prompt,bash_profile} set filetype=sh

  autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

  autocmd BufNewFile,BufRead *.sln setlocal filetype=solution

  autocmd BufNewFile,BufReadPost *{snippets,snip} set filetype=snippets

  " .NET filetypes
  autocmd BufNewFile,BufRead *.proj  set filetype=xml
  autocmd BufNewFile,BufRead *.csproj set filetype=xml
  autocmd BufNewFile,BufRead *.sln set filetype=xml
  autocmd BufNewFile,BufRead *.config.transform set filetype=xml
  autocmd BufNewFile,BufRead *.cshtml set filetype=cshtml.html syntax=cshtml
  autocmd BufNewFile,BufRead *.aspx set filetype=aspx.html syntax=aspx
  autocmd BufNewFile,BufRead *.ascx set filetype=aspx.html syntax=aspx
  autocmd BufNewFile,BufRead *.master set filetype=aspx.html syntax=aspx

  " https://github.com/tjdevries/config_manager
  " autocmd TermOpen term://*  set filetype=term

  autocmd BufNewFile,BufRead [Tt]odo.txt set filetype=todo
  autocmd BufNewFile,BufRead *.[Tt]odo.txt set filetype=todo
  autocmd BufNewFile,BufRead [Dd]one.txt set filetype=todo
  autocmd BufNewFile,BufRead *.[Dd]one.txt set filetype=todo

  autocmd BufNewFile,BufRead *.ts set filetype=typescript

  autocmd BufRead,BufNewFile rc.conf set filetype=vim

  autocmd BufRead,BufNewFile compose.yml set filetype=yaml

  autocmd BufRead,BufNewFile *.vstheme,*.vssettings set filetype=xml

  autocmd BufNewFile,BufReadPost *.wiki set filetype=wiki

augroup END
