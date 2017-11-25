" =============================================================================
" === Shougo/deoplete ===
" =============================================================================
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#auto_completion_start_length = 1
" let g:deoplete#enable_camel_case = 1
" let g:deoplete#skip_chars = ['(', ')', '<', '>']
" let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1
" let g:deoplete#ignore_sources =
" let g:deoplete#omni#input_patterns =
" let g:deoplete#omni_patterns =


call deoplete#custom#source('vim',           'mark', '')
call deoplete#custom#source('omni',          'mark', '⌾')
call deoplete#custom#source('file',          'mark', '')
call deoplete#custom#source('jedi',          'mark', '')
call deoplete#custom#source('emoji',         'mark', '')
call deoplete#custom#source('around',        'mark', '↻')
call deoplete#custom#source('buffer',        'mark', '')
call deoplete#custom#source('member',        'mark', '.')
call deoplete#custom#source('necovim',       'mark', '')
call deoplete#custom#source('ultisnips',     'mark', ' ')
call deoplete#custom#source('necosyntax',    'mark', 'ns')
call deoplete#custom#source('tmux-complete', 'mark', '⧉ ')

call deoplete#custom#source('jedi', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#source('necovim', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#source('necosyntax', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#source('tmux-complete', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#source('emoji', 'filetypes', ['gitcommit', 'markdown', 'org', 'rst'])
" call deoplete#custom#source('ultisnips', 'rank', 1000)


" Default rank is 100, higher is better.
" call deoplete#custom#source('omni',          'mark', '⌾')
" call deoplete#custom#source('flow',          'mark', '⌁')
" call deoplete#custom#source('padawan',       'mark', '⌁')
" call deoplete#custom#source('TernJS',        'mark', '⌁')
" call deoplete#custom#source('go',            'mark', '⌁')
" call deoplete#custom#source('vim',           'mark', '⌁')
" call deoplete#custom#source('neosnippet',    'mark', '⌘')
" call deoplete#custom#source('tag',           'mark', '⌦')
" call deoplete#custom#source('buffer',        'mark', 'ℬ')
" call deoplete#custom#source('syntax',        'mark', '♯')



" call deoplete#custom#source('padawan',       'rank',  60)
" call deoplete#custom#source('go',            'rank', 650)
" call deoplete#custom#source('vim',           'rank', 640)
" call deoplete#custom#source('TernJS',        'rank', 620)
" call deoplete#custom#source('jedi',          'rank', 610)
call deoplete#custom#source('omni',          'rank', 600)
call deoplete#custom#source('file',          'rank', 650)
" call deoplete#custom#source('neosnippet',    'rank', 510)
call deoplete#custom#source('ultisnips',     'rank', 510)
call deoplete#custom#source('member',        'rank', 500)
" call deoplete#custom#source('file_include',  'rank', 420)
call deoplete#custom#source('tag',           'rank', 400)
call deoplete#custom#source('tmux-complete', 'rank', 400)
call deoplete#custom#source('around',        'rank', 330)
call deoplete#custom#source('buffer',        'rank', 320)
call deoplete#custom#source('dictionary',    'rank', 310)
call deoplete#custom#source('syntax',        'rank', 200)

function! Multiple_cursors_before()
  let b:deoplete_disable_auto_complete=2
endfunction
function! Multiple_cursors_after()
  let b:deoplete_disable_auto_complete=0
endfunction



" =============================================================================
" === SuperTab ===
" =============================================================================
" let g:SuperTabContextDefaultCompletionType = '<c-n>'
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

" inoremap <expr> <cr>    pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
" inoremap <expr> <tab>   pumvisible() ? "\<c-n>" : "\<tab>"
" inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"


" =============================================================================
"  === https://www.reddit.com/r/vim/comments/4gjbqn/what_tricks_do_you_use_instead_of_popular_plugins/d2iatu9/ ===
" =============================================================================


cnoremap <expr> <Tab>   getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>/<C-r>/" : "<C-z>"
cnoremap <expr> <S-Tab> getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>?<C-r>/" : "<S-Tab>"


" =============================================================================
" === Ultisnips ===
" =============================================================================
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:UltiSnipsSnippetsDir             = '$HOME/.dotfiles/editors/nvim/snipz'
let g:UltiSnipsListSnippets            = '<c-n>'
" let g:UltiSnipsJumpForwardTrigger      = '<c-j>'
" let g:UltiSnipsJumpBackwardTrigger     = '<c-k>'

" inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<TAB>"

let g:UltiSnipsSnippetDirectories = ["snipz"]
" let g:UltiSnipsAddFiletypes = "conf.sh"



" =============================================================================
"  === Tmux complete ===
" =============================================================================
let g:tmuxcomplete#trigger = ''



" =============================================================================
"  === Shougo/neco-syntax ===
" =============================================================================
let g:necosyntax#min_keyword_length=4
let g:necosyntax#max_syntax_line=300


" =============================================================================
"  === deoplete-jedi ===
" =============================================================================
let g:deoplete#sources#jedi#show_docstring = 1



" =============================================================================
"  === Emmet ===
" =============================================================================
let g:user_emmet_install_global = 0
" " let g:user_emmet_leader_key='<Plug>(emmet_expand)'
" " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"
" "  https://github.com/mhartington/dotfiles/blob/master/config/nvim/init.vim
" " Remapping <C-y>, just doesn't cut it.
" " 𐌄 = ⇧ + ENTER
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
"   autocmd FileType html,css,scss imap <silent><buffer><expr><tab> <sid>expand_html_tab()
"   let g:user_emmet_mode='a'
"   let g:user_emmet_complete_tag = 0
"   let g:user_emmet_install_global = 0
"   autocmd FileType html,css,scss EmmetInstall
