" ==============================================================================
"  === Shougo/echodoc ===
" ==============================================================================
let g:echodoc#enable_at_startup = 1
" The documentation display type.
"echo": It uses the command line |:echo|.
"signature": It uses gonvim signature feature.
" let g:echodoc#type='echo'
" let g:echodoc_type='echo'
" let g:echodoc#type='signature'
" let g:echodoc_type='signature'
" The highlight of identifier.
" let g:echodoc#highlight_identifier = "Identifier"
" The highlight of current argument.
" let g:echodoc#highlight_arguments = "Special"


" ==============================================================================
" === Shougo/deoplete ===
" ==============================================================================
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list = 500
let g:deoplete#auto_complete_delay = 150
let g:deoplete#auto_refresh_delay = 1000

let g:deoplete#disable_auto_complete = 0
let g:deoplete#auto_completion_start_length = 1

let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#min_keyword_length = 1
let g:deoplete#min_pattern_length = 1
let g:deoplete#sources#syntax#min_keyword_length = 1

let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns._ = '[a-zA-Z_]\k*\(?'
" let g:deoplete#keyword_patterns.tex = '\\?[a-zA-Z_]\w*'
let g:deoplete#keyword_patterns.tex = '[^\w|\s][a-zA-Z_]\w*'

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.python = ''
let g:deoplete#omni#functions = {}

let g:deoplete#skip_chars = ['(', ')']

" let g:deoplete#ignore_sources =
" let g:deoplete#skip_chars = ['(', ')', '<', '>']
" let g:deoplete#file#enable_buffer_path = 1
" let g:deoplete#buffer#require_same_filetype=0
" let g:deoplete#omni#input_patterns =
" let g:deoplete#omni_patterns =
" let g:context_filetype#same_filetypes=0

" call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])
call deoplete#custom#source('_', 'matchers', ['matcher_fuzzy'])
" call deoplete#custom#source('_', 'sorters', ['sorter_word'])
" call deoplete#custom#source('_', 'sorters', ['sorter_rank'])

" ⌁ ⌘ ℬ'
call deoplete#custom#source('vim',            'mark', '' )
call deoplete#custom#source('tag',            'mark', '⌦' )
call deoplete#custom#source('webcomplete',    'mark', '' )
call deoplete#custom#source('omni',           'mark', '⌾' )
call deoplete#custom#source('file',           'mark', '' )
call deoplete#custom#source('look',           'mark', '' )
call deoplete#custom#source('jedi',           'mark', '' )
call deoplete#custom#source('Jedi',           'mark', '' )
call deoplete#custom#source('emoji',          'mark', '' )
call deoplete#custom#source('around',         'mark', '↻' )
call deoplete#custom#source('buffer',         'mark', '' )
call deoplete#custom#source('dictionary',     'mark', '' )
call deoplete#custom#source('member',         'mark', '.' )
call deoplete#custom#source('necovim',        'mark', '' )
call deoplete#custom#source('ultisnips',      'mark', ' ')
call deoplete#custom#source('neosnippet',     'mark', ' ')
call deoplete#custom#source('necosyntax',     'mark', '♯' )
call deoplete#custom#source('tmux-complete',  'mark', '⧉ ')
call deoplete#custom#source('LanguageClient', 'mark', '⌾' )

" call deoplete#custom#source('jedi',          'matchers', ['matcher_fuzzy'])
" call deoplete#custom#source('necovim',       'matchers', ['matcher_fuzzy'])
" call deoplete#custom#source('ultisnips',     'matchers', ['matcher_fuzzy'])
" call deoplete#custom#source('necosyntax',    'matchers', ['matcher_fuzzy'])
" call deoplete#custom#source('tmux-complete', 'matchers', ['matcher_fuzzy'])

call deoplete#custom#source('emoji',      'filetypes', ['gitcommit', 'markdown', 'org', 'rst', 'txt', 'todo'])
call deoplete#custom#source('dictionary', 'filetypes', ['gitcommit', 'markdown', 'org', 'rst', 'txt', 'todo'])




" Default rank is 100, higher is better.
call deoplete#custom#source('LanguageClient', 'rank', 800)
call deoplete#custom#source('go',             'rank', 700)
call deoplete#custom#source('TernJS',         'rank', 700)
call deoplete#custom#source('jedi',           'rank', 700)
call deoplete#custom#source('padawan',        'rank', 700)
call deoplete#custom#source('omni',           'rank', 600)     " Default: 500
call deoplete#custom#source('file',           'rank', 650)     " Default: 150
call deoplete#custom#source('ultisnips',      'rank', 550)
call deoplete#custom#source('neosnippet',     'rank', 550)
call deoplete#custom#source('member',         'rank', 500)     " Default: 100
call deoplete#custom#source('tmux-complete',  'rank', 500)
call deoplete#custom#source('file_include',   'rank', 420)
call deoplete#custom#source('tag',            'rank', 400)     " Default: 100
call deoplete#custom#source('around',         'rank', 330)     " Default: 800
call deoplete#custom#source('dictionary',     'rank', 310)     " Default: 100
call deoplete#custom#source('buffer',         'rank', 300)     " Default: 100
call deoplete#custom#source('vim',            'rank', 200)
call deoplete#custom#source('syntax',         'rank', 200)


" function! Multiple_cursors_before()
"   let b:deoplete_disable_auto_complete=2
" endfunction
" function! Multiple_cursors_after()
"   let b:deoplete_disable_auto_complete=0
" endfunction

" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" inoremap <expr><C-d> deoplete#undo_completion()
" inoremap <expr><C-d>  deoplete#close_popup()

" ==============================================================================
" === dictionary ===
" ==============================================================================

call deoplete#custom#source('dictionary', 'min_pattern_length', 2)
" Remove this if you'd like to use fuzzy search
" call deoplete#custom#source('dictionary', 'matchers', ['matcher_head'])
" If dictionary is already sorted, no need to sort it again.
" call deoplete#custom#source('dictionary', 'sorters', [])


" ==============================================================================
" === SuperTab ===
" ==============================================================================
" let g:SuperTabContextDefaultCompletionType = '<c-n>'
let g:SuperTabDefaultCompletionType = '<C-n>'
" let g:SuperTabCrMapping                = 0

" inoremap <expr> <cr>    pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
" inoremap <expr> <tab>   pumvisible() ? "\<c-n>" : "\<tab>"
" inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" ==============================================================================
"  === (tenfyzhong/CompleteParameter.vim) ===
" ==============================================================================
inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <c-n> <Plug>(complete_parameter#goto_next_parameter)
imap <c-n> <Plug>(complete_parameter#goto_next_parameter)
smap <c-p> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-p> <Plug>(complete_parameter#goto_previous_parameter)

let g:complete_parameter_log_level = 5
let g:complete_parameter_use_ultisnips_mapping = 1

" if !exists('g:neocomplete#force_omni_input_patterns')
"     let g:neocomplete#force_omni_input_patterns = {}
" endif
" let g:neocomplete#force_omni_input_patterns.javascript = '[^. \t]\.\w*'


let g:deoplete#sources#padawan#server_addr = 'http://127.0.0.1:15155'
let g:deoplete#sources#padawan#server_command = 'padawan-server'
let g:deoplete#sources#padawan#composer_command = 'composer'
let g:deoplete#sources#padawan#log_file = '/tmp/padawan-server.log'
let g:deoplete#sources#padawan#server_autostart = 1
let g:deoplete#sources#padawan#add_parentheses = 0
let g:deoplete#sources#padawan#auto_update = 0

" ==============================================================================
" === Shougo/neosnippet.vim ===
" ==============================================================================
let g:neosnippet#disable_runtime_snippets = {
  \   '_' : 1,
  \ }

" let g:neosnippet#disable_runtime_snippets=1
let g:neosnippet#snippets_directory='~/.dotfiles/editors/nvim/nsnipz'

" let g:neosnippet#scope_aliases = {}
" let g:neosnippet#scope_aliases['ruby'] = 'ruby,ruby-rails'

" let g:neosnippet#enable_snipmate_compatibility=1
" let g:neosnippet#enable_conceal_markers=0
" let g:neosnippet#expand_word_boundary=0
" let g:neosnippet#enable_completed_snippet=1

" imap <C-n>     <Plug>(neosnippet_expand_or_jump)
" imap <C-a>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets' behavior.
" imap <expr><TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ neosnippet#expandable_or_jumpable() ?
"   \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"   \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Expand the completed snippet trigger by <CR>.
"imap <Expandxpr><CR>
"\ (pumvisible() && neosnippet#expandable()) ?
"\ "\<Plug>(neosnippet_expand)" : "\<CR>"

" For conceal markers.
" if has('conceal')
"  set conceallevel=2 concealcursor=niv
" endif

" " Expand snippets on tab if snippets exists, otherwise do autocompletion
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"   \ "\<Plug>(neosnippet_expand_or_jump)"
"   \ : pumvisible() ? "\<C-n>" : "\<TAB>"
" " If popup window is visible do autocompletion from back
" imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" " Fix for jumping over placeholders for neosnippet
" smap <expr><TAB> neosnippet#jumpable() ?
"   \ "\<Plug>(neosnippet_jump)"
"   \: "\<TAB>"



" ==============================================================================
" === Ultisnips ===
" ==============================================================================
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
" let g:UltiSnipsSnippetsDir             = '$HOME/.dotfiles/editors/nvim/snipz'
let g:UltiSnipsSnippetDirectories = ["snipz"]
" let g:UltiSnipsListSnippets            = '<c-n>'
" let g:UltiSnipsJumpForwardTrigger      = '<c-n>'
" let g:UltiSnipsJumpBackwardTrigger     = '<c-p>'

" inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<TAB>"

" let g:UltiSnipsAddFiletypes = "conf.sh"


" ==============================================================================
"  === Shougo/neco-syntax ===
" ==============================================================================
let g:necosyntax#min_keyword_length=2
let g:necosyntax#max_syntax_line=1000


" ==============================================================================
"  === deoplete-jedi ===
" ==============================================================================
let g:deoplete#sources#jedi#show_docstring = 1
let g:deoplete#sources#jedi#enable_cache = 1
let g:deoplete#sources#jedi#statement_length = 50
let g:deoplete#sources#jedi#server_timeout = 10

" ==============================================================================
"  === wellle/tmux-complete.vim ===
" ==============================================================================
let g:tmuxcomplete#trigger = ''


" ==============================================================================
"  === delimitMate ===
" ==============================================================================
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1


" ==============================================================================
"  === https://www.reddit.com/r/vim/comments/4gjbqn/what_tricks_do_you_use_instead_of_popular_plugins/d2iatu9/ ===
" ==============================================================================
" cnoremap <expr> <Tab>   getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>/<C-r>/" : "<C-z>"
" cnoremap <expr> <S-Tab> getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>?<C-r>/" : "<S-Tab>"


" ==============================================================================
"  === Emmet ===
" ==============================================================================
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


" ==============================================================================
"  === Table Mode ===
" ==============================================================================
" function! s:isAtStartOfLine(mapping)
"   let text_before_cursor = getline('.')[0 : col('.')-1]
"   let mapping_pattern = '\V' . escape(a:mapping, '\')
"   let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
"   return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
" endfunction
"
" inoreabbrev <expr> <bar><bar>
"           \ <SID>isAtStartOfLine('\|\|') ?
"           \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
" inoreabbrev <expr> __
"           \ <SID>isAtStartOfLine('__') ?
"           \ '<c-o>:silent! TableModeDisable<cr>' : '__'
let g:table_mode_syntax = 1
let g:table_mode_corner='|'
let g:table_mode_auto_align = 1
let g:table_mode_update_time = 500
" let g:table_mode_motion_left_map='<s-tab>'
" let g:table_mode_motion_right_map = '<tab>'
" let g:table_mode_motion_down_map = ''
" let g:table_mode_motion_up_map = ''



