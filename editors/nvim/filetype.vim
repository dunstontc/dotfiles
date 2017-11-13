" =============================================================================
"  Filetype Associations
" =============================================================================
augroup filetypes
    autocmd!
    " au BufRead,BufNewFile rc.conf set filetype=sh

    autocmd BufRead,BufNewFile rc.conf set filetype=vim

    autocmd BufRead,BufNewFile .spacemacs set filetype=lisp

    autocmd BufRead,BufNewFile {topydo,columns,column}.conf set filetype=dosini

    autocmd BufRead,BufNewFile .{aliases,env,exports,functions,highlight,inputrc,path,} set filetype=sh
    " autocmd BufRead,BufNewFile .{bash_prompt,bash_profile} set filetype=sh

    autocmd BufRead,BufNewFile *.cson set filetype=coffee

    autocmd BufNewFile,BufReadPost *.md set filetype=markdown

    autocmd BufNewFile,BufReadPost *.snippets set filetype=snippets
    autocmd BufNewFile,BufReadPost *.snip set filetype=snippets

    autocmd BufNewFile,BufReadPost *.wiki set filetype=wiki

    autocmd BufRead,BufNewFile .{babel,eslint,stylelint,jshint,prettier}rc,.tern-*,*.json set ft=json

augroup END
" =============================================================================
"  Language Specific Settings
" =============================================================================

"  === Markdown ===
let g:markdown_fenced_languages = ['html', 'js=javascript', 'vim', 'ruby', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

"  === JSON ===
let g:vim_json_syntax_conceal = 0




