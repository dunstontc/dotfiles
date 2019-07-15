" ==============================================================================
"  === Emmet ===
let g:user_emmet_install_global = 0

let g:user_emmet_leader_key = '<C-e>'

let g:user_emmet_mode='a'
" let g:user_emmet_complete_tag = 1
" let g:user_emmet_install_global = 0

let g:emmet_settings = {
  \  'indentation' : ' ',
  \  'html': {
  \    'empty_element_suffix': ' />',
  \    'default_attributes': {
  \      'a': {'href': ''},
  \      'ins': {'datetime': '${datetime}'},
  \      'iframe': [{'src': ''}, {'frameborder': '0'}],
  \      'textarea': [{'name': ''}, {'id': ''}, {'cols': '30'}, {'rows': '10'}],
  \    },
  \  },
  \  'javascript.jsx' : {
  \    'extends': 'jsx',
  \    'quote_char': '"',
  \  }
  \}

  " let g:user_emmet_settings = webapi#json#decode(
  " \  join( readfile( expand( '~/.snippets_custom.json' ) ), "\n" ) )

let g:user_emmet_leader_key='<leader>y'
'
" let g:user_emmet_leader_key='<Plug>(emmet_expand)'
" " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"
" "  https://github.com/mhartington/dotfiles/blob/master/config/nvim/init.vim
" " Remapping <C-y>, just doesn't cut it.
"   function! s:expand_html_tab()
" " try to determine if we're within quotes or tags.
" " if so, assume we're in an emmet fill area.
"    let line = getline('.')
"    if col('.') < len(line)
"      let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
"      if len(line) >= 2
"         return "\<C-n>"
"      endif
"    endif
" " expand anything emmet thinks is expandable.
"   if emmet#isExpandable()
"     return emmet#expandAbbrIntelligent("\<tab>")
"     " return "\<C-y>,"
"   endif
" " return a regular tab character
"   return "\<tab>"
"   endfunction
"   " let g:user_emmet_expandabbr_key='<Tab>'
"   " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"

augroup EmmetCmdz
  autocmd!
    " autocmd FileType html,css,scss imap <silent><buffer><expr><tab> <sid>expand_html_tab()
    autocmd FileType html,scss,gohtml EmmetInstall
augroup END

" }}}


