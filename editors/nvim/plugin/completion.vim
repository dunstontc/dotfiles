" =============================================================================
" === Deoplete ===
" =============================================================================
let g:deoplete#enable_at_startup=1
" let g:deoplete#ignore_sources =
" let g:deoplete#omni#input_patterns =
" let g:deoplete#omni_patterns =
" let g:deoplete#auto_completion_start_length = 1
" let g:deoplete#e cednable_smart_case=1
" let g:deoplete#enable_smart_case=1
call deoplete#custom#set('vim', 'mark', ' ')
call deoplete#custom#set('file', 'mark', ' ')
call deoplete#custom#set('buffer', 'mark', ' ')
call deoplete#custom#set('necovim', 'mark', ' ')
call deoplete#custom#set('ultisnips', 'mark', ' ')
call deoplete#custom#set('tmuxcomplete', 'mark', '⧉ ')

call deoplete#custom#set('necovim', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#set('tmuxcomplete', 'matchers', ['matcher_fuzzy'])
" call deoplete#custom#source('ultisnips', 'rank', 1000)

function! Multiple_cursors_before()
  let b:deoplete_disable_auto_complete=2
endfunction
function! Multiple_cursors_after()
  let b:deoplete_disable_auto_complete=0
endfunction
let g:deoplete#file#enable_buffer_path=1



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
