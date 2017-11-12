" =============================================================================
"  deol
" =============================================================================

" nnoremap <silent> N :<C-u>call deol#new({'command': 'zsh'})<CR>
" nnoremap <silent> [Space]s :<C-u>Deol zsh<CR>
" nnoremap <silent> [Window]D  :<C-u>call deol#kill_editor()<CR>


" =============================================================================
"  === neoterm ===
" =============================================================================

let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'


" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>



" =============================================================================
"  vim-multiple-cursors
" =============================================================================
let g:multi_cursor_use_default_mapping=0

" Default mapping
" let g:multi_cursor_next_key='𐌍' " (C-m)
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'



" =============================================================================
"  === fzf ===
" =============================================================================
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split enew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
" let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
" let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
" let g:fzf_commands_expect = 'alt-enter,ctrl-x'


" =============================================================================
"  === ALE ===
" =============================================================================
" let g:ale_fixers={}
let g:ale_linters = {
\    'bash': ['shellcheck'],
\    'zsh': ['shellcheck'],
\    'javascript': ['eslint'],
\    'vim': ['vint'],
\}
let g:ale_fix_on_save = 0
" let g:ale_completion_enabled = 0
" let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '◊'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_vim_vint_show_style_issues = 1
highlight clear ALEErrorSign
hi clear ALEWarningSign
hi Error NONE
hi ErrorMsg NONE


" =============================================================================
"  === Table Mode ===
" =============================================================================
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
let g:table_mode_corner='|'
let g:table_mode_auto_align = 1
" let g:table_mode_motion_left_map=''
" let g:table_mode_motion_right_map = ''
" let g:table_mode_motion_down_map = ''
" let g:table_mode_motion_up_map = ''


" =============================================================================
"  === instant markdown ===
" =============================================================================
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 1


" =============================================================================
"  === Slash ===
" =============================================================================
" noremap <plug>(slash-after) zz


" =============================================================================
"  === UndoTree ===
" =============================================================================
let g:undotree_WindowLayout = 2
let g:undotree_SetFocusWhenToggle = 1

" =============================================================================
"  === TComment ===
" =============================================================================
let g:tcommentMaps=0
let g:tcommentMapLeader1=''
let g:tcommentMapLeader2=''
let g:tcommentMapLeaderCommentAnyway=''
let g:tcommentTextObjectInlineComment=''


" =============================================================================
"  === lastplace ===
" =============================================================================
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_ignore_buftype = "quickfix,nofile,help"
let g:lastplace_open_folds = 0


" =============================================================================
"  === delimitMate ===
" =============================================================================
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1



" =============================================================================
"  === Colorizer ===
" =============================================================================
let g:colorizer_auto_filetype=''


" =============================================================================
"  === gitgutter ===
" =============================================================================
let g:gitgutter_map_keys = 0


" =============================================================================
"  === vim-bookmarks ===
" =============================================================================
let g:bookmark_annotation_sign = '☰'
let g:bookmark_sign = '⚑'

let g:bookmark_no_default_key_mappings = 1

let g:bookmark_save_per_working_dir = 0
let g:bookmark_auto_save = 1
let g:bookmark_manage_per_buffer = 0
let g:bookmark_auto_save_file = $HOME .'/.vim-bookmarks'
let g:bookmark_auto_close = 0
let g:bookmark_highlight_lines = 0
let g:bookmark_show_warning = 1
let g:bookmark_show_toggle_warning = 1
let g:bookmark_center = 0
let g:bookmark_location_list = 1
let g:bookmark_disable_ctrlp = 1

" nmap <Leader><Leader> <Plug>BookmarkToggle
" nmap <Leader>i <Plug>BookmarkAnnotate
" nmap <Leader>a <Plug>BookmarkShowAll
" nmap <Leader>j <Plug>BookmarkNext
" nmap <Leader>k <Plug>BookmarkPrev
" nmap <Leader>c <Plug>BookmarkClear
" nmap <Leader>x <Plug>BookmarkClearAll
" nmap <Leader>kk <Plug>BookmarkMoveUp
" nmap <Leader>jj <Plug>BookmarkMoveDown
" nmap <Leader>g <Plug>BookmarkMoveToLine


" =============================================================================
"  === cheat40 ===
" =============================================================================
let g:cheat40_use_default = 0
nnoremap <leader>h<space> :Cheat40Open<cr>


" =============================================================================
"  === vim-resurrect ===
" =============================================================================
let g:resurrect_ignore_patterns = [
\  '/.git/',
\  'fugitive://',
\  '/undotree_2',
\  '/__CtrlSF__'
\]


" =============================================================================
"  === VimWiki ===
" =============================================================================
let g:vimwiki_list = [{'path': '~/vimwiki.md.d/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]


" =============================================================================
"  === extra-whitespace ===
" =============================================================================
  let g:extra_whitespace_ignored_filetypes = [
        \ 'unite',
        \ 'mkd',
        \ 'startify',
        \ 'cheat40'
        \]



" =============================================================================
"  === diminactive ===
" =============================================================================
let g:diminactive_use_syntax = 0
let g:diminactive_enable_focus = 1
" let g:diminactive_use_colorcolumn = 0


" =============================================================================
"  === echodoc ===
" =============================================================================
" let g:echodoc#enable_at_startup = 1
" set noshowmode


" =============================================================================
"  === calendar.vim ===
" =============================================================================
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

let g:calendar_locale='en/us'
let g:calendar_first_day='sunday'
let g:calendar_date_separator='/'
let g:calendar_date_month_name=1
let g:calendar_date_full_month_name=1
let g:calendar_week_number=1
let g:calendar_task=1
let g:calendar_cyclic_view=0

let g:calendar_updatetime=200
let g:calendar_yank_deleting=1
let g:calendar_task_delete=0
" let g:calendar_cache_directory= ~/.cache/calendar.vim

let g:calendar_debug=0

" let g:calendar_event_start_time=
let g:calendar_event_start_time_minwidth=16
let g:calendar_clock_12hour=1
let g:calendar_frame='unicode_round'
" let g:calendar_message_prefix="[calendar] "
let g:calendar_view='month'
let g:calendar_views=['year', 'month', 'week', 'day_4', 'day', 'clock']
	" 'year', 'month', 'week', 'weekday',
			" 'day_7', 'day_6', 'day_5', 'day_4',
			" 'day_3', 'day_2', 'day_1', 'day',
			" 'clock', 'event', 'agenda'


" Problem 10:					*calendar-problem-10*
	" Authorization to Google fails again and again.

		" Remove the cache directory and reauthorize to Google. >
		" rm -rf ~/.cache/calendar.vim/google/

" augroup calendar-mappings
"   autocmd!
"
"   " diamond cursor
"   autocmd FileType calendar nmap <buffer> i <Plug>(calendar_up)
"   autocmd FileType calendar nmap <buffer> j <Plug>(calendar_left)
"   autocmd FileType calendar nmap <buffer> k <Plug>(calendar_down)
"   autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)
"
"   " swap v and V
"   autocmd FileType calendar nmap <buffer> V <Plug>(calendar_visual)
"   autocmd FileType calendar nmap <buffer> v <Plug>(calendar_visual_line)
"
"   " unmap <C-n>, <C-p> for other plugins
"   autocmd FileType calendar nunmap <buffer> <C-n>
"   autocmd FileType calendar nunmap <buffer> <C-p>
" augroup END


" =============================================================================
"  === codi.vim ===
" =============================================================================
" let g:codi#autocmd    =  " determines what autocommands trigger updates. See the documentation for more information.
let g:codi#width      = 40  " the width of the Codi split.
let g:codi#rightsplit = 1   " whether or not Codi spawns on the right side.
let g:codi#rightalign = 1   " whether or not to right-align the Codi buffer.
let g:codi#autoclose  = 1   " whether or not to close Codi when the associated buffer is closed.
let g:codi#raw        = 0   " whether or not to display interpreter results without alignment formatting (useful for debugging).
let g:codi#use_buffer_dir = 1
let g:codi#log        = ''
let g:codi#interpreters = {
     \ 'javascript': {
     \        'bin': 'node',
     \     'prompt': '^\(>\|\.\.\.\+\) ',
     \ 'rightalign': 0,
     \ },
     \ 'python': {
     \    'bin': 'python3',
     \ 'prompt': '^\(>>>\|\.\.\.\) ',
     \ },
     \ }

let g:codi#aliases = {
     \ 'javascript.jsx': 'javascript',
     \ }

" augroup calendar-mappings
"   autocmd!
    " CodiEnterPre, CodiEnterPost " When a Codi pane enters.
    " CodiUpdatePre, CodiUpdatePost " When a Codi pane updates.
    " CodiLeavePre, CodiLeavePost " When a Codi pane leaves.
" augroup END


" =============================================================================
"  === indentguides ===
" =============================================================================
let g:indentguides_ignorelist = ['help']
let g:indentguides_firstlevel = 1
let g:indentguides_spacechar = '┃'
let g:indentguides_tabchar = '┆'


" =============================================================================
"  === vim-anzu ===
" =============================================================================
" mapping
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
" if start anzu-mode key mapping
" anzu-mode is anzu(12/51) in screen
" nmap n <Plug>(anzu-mode-n)
" nmap N <Plug>(anzu-mode-N)


" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)


" =============================================================================
"  === vim-sneak ===
" =============================================================================
" let g:sneak#prompt = 'Ƨ '
let g:sneak#prompt = '§ '

let g:sneak#label = 1
let g:sneak#label_esc = "\<Space>"
let g:sneak#target_labels = "asldkfjghz,xmcnvb"

let g:sneak#s_next = 0
let g:sneak#use_ic_scs = 1

" noremap z <Plug>Sneak_s
" noremap Z <Plug>Sneak_S

" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T



" =============================================================================
"  === vim-swoop ===
" =============================================================================
let g:swoopUseDefaultKeyMap = 0
let g:swoopIgnoreCase = 1
" let g:swoopWindowsVerticalLayout = 0
" let g:defaultWinSwoopWidth = 12
" let g:defaultWinSwoopHeight = 15

" Swoop current buffer
" nmap <Leader>l :call Swoop()<CR>
" vmap <Leader>l :call SwoopSelection()<CR>

" Swoop multi buffers
" nmap <Leader>ml :call SwoopMulti()<CR>
" vmap <Leader>ml :call SwoopMultiSelection()<CR>


" =============================================================================
"  === vim-expand-region ===
" =============================================================================
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

" Default settings. (NOTE: Remove comments in dictionary before sourcing)
let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'i"'  :0,
      \ 'i''' :0,
      \ 'i]'  :1,
      \ 'ib'  :1,
      \ 'iB'  :1,
      \ 'il'  :0,
      \ 'ip'  :0,
      \ 'ie'  :0,
      \ }

call expand_region#custom_text_objects({
      \ "\/\\n\\n\<CR>": 1,
      \ 'a]' :1,
      \ 'ab' :1,
      \ 'aB' :1,
      \ 'ii' :0,
      \ 'ai' :0,
      \ })
