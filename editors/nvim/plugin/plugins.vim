" =============================================================================
"  Shougo/deol
" =============================================================================

" nnoremap <silent> N :<C-u>call deol#new({'command': 'zsh'})<CR>
" nnoremap <silent> [Space]s :<C-u>Deol zsh<CR>
" nnoremap <silent> [Window]D  :<C-u>call deol#kill_editor()<CR>


" =============================================================================
"  === Shougo/vimfiler ===
" =============================================================================

let g:vimfiler_as_default_explorer = 1

" Like Textmate icons.
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_readonly_file_icon='X'

let g:vimfiler_time_format = " "
let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_no_default_key_mappings=1

" call vimfiler#set_execute_file('txt', 'notepad')
" call vimfiler#set_execute_file('c', ['gvim', 'notepad'])

" let g:vimfiler_directory_display_top=1
" let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$']
let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$', '^\Icon']

" Enable file operation commands.
" Edit file by tabedit.
call vimfiler#custom#profile('default', 'context', {
     \ 'safe'       : 0,
     \ 'no-quit'    : 1,
     \ 'split'      : 1,
     \ 'winwidth'   : 50,
     \ 'edit_action': 'vsplit',
     \ 'sort_type'  : 'filename',
     \ 'direction'  : 'topleft',
     \ 'columns'    : 'type:size',
     \ })

" " File explorer like behavior.
" :VimFiler -buffer-name=explorer
" \ -split -simple -winwidth=35 -toggle -no-quit
" :VimFilerExplorer
augroup MyAutoCmds
  autocmd!

  autocmd Filetype vimfiler setlocal norelativenumber
  autocmd Filetype vimfiler setlocal nolist
  autocmd Filetype vimfiler setlocal nowrap

  autocmd FileType vimfiler nmap <buffer> i :VimFilerPrompt<CR>
  autocmd FileType vimfiler nmap <buffer> j <Plug>(vimfiler_loop_cursor_down)
  autocmd FileType vimfiler nmap <buffer> k <Plug>(vimfiler_loop_cursor_up)
  autocmd FileType vimfiler nmap <buffer> h <Plug>(vimfiler_smart_h)
  autocmd FileType vimfiler nmap <buffer> l <Plug>(vimfiler_smart_l)
  autocmd FileType vimfiler nmap <buffer> gg <Plug>(vimfiler_cursor_top)
  autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_cd_or_edit)
  autocmd FileType vimfiler nmap <buffer> o <Plug>(vimfiler_expand_or_exit)
  autocmd FileType vimfiler nmap <buffer> <S-n> <Plug>(vimfiler_new_file)
  autocmd FileType vimfiler nmap <buffer> K <Plug>(vimfiler_make_directory)
  autocmd FileType vimfiler nmap <buffer> ~ <Plug>(vimfiler_switch_to_home_directory)
  autocmd FileType vimfiler nmap <buffer> ? <Plug>(vimfiler_help)
  autocmd FileType vimfiler nmap <buffer> yy <Plug>(vimfiler_yank_full_path)
  autocmd FileType vimfiler nmap <buffer> gr <Plug>(vimfiler_grep)
  autocmd FileType vimfiler nmap <buffer> gf <Plug>(vimfiler_find)
  " autocmd FileType vimfiler nmap <buffer> <2-LeftMouse> <Plug>(vimfiler_double_click)
  autocmd FileType vimfiler nmap <buffer> <2-LeftMouse> <Plug>(vimfiler_edit_file)
  autocmd FileType vimfiler nmap <buffer> e <Plug>(vimfiler_edit_file)
  autocmd FileType vimfiler nmap <buffer> <S-e> <Plug>(vimfiler_split_edit_file)
  autocmd FileType vimfiler nmap <buffer> <left> <left>
  " autocmd FileType vimfiler nmap <buffer> <Plug>(vimfiler_)
  " autocmd FileType vimfiler nmap <buffer> <C-l> <Plug>(vimfiler_redraw_screen)
  " autocmd FileType vimfiler nmap <buffer> q <Plug>(vimfiler_close)
augroup END


" " Switches to next line with loop.
" <Plug>(vimfiler_loop_cursor_down)
" " Switches to previous line with loop.
" <Plug>(vimfiler_loop_cursor_up)
"
" <Plug>(vimfiler_cursor_top)
" " Redraws vimfiler screen.
" <Plug>(vimfiler_redraw_screen)
" " Toggles mark in cursor line and move down.
" <Plug>(vimfiler_toggle_mark_current_line)
" " Clears marks in all lines.
" <Plug>(vimfiler_clear_mark_all_lines)
" " Mark in cursor line.
" <Plug>(vimfiler_mark_current_line)
" " Moves marked files to destination directory. If exists another
" " vimfiler buffer, destination directory is another vimfiler directory.
" " If no marked files, mark current file.
" <Plug>(vimfiler_move_file)
" " Deletes marked files completely.
" " If no marked files, mark current file.
" <Plug>(vimfiler_delete_file)
" " Copies marked files to vimfiler clipboard.
" " If no marked files, mark current file.
" <Plug>(vimfiler_clipboard_copy_file)
" " Moves marked files to vimfiler clipboard.
" " If no marked files, mark current file.
" <Plug>(vimfiler_clipboard_move_file)
" " Execute move or copy operation from vimfiler clipboard to
" " cursor directory. If directory tree is opened, will execute
" " the operation in directory tree.
" <Plug>(vimfiler_clipboard_paste)
" " Creates new directory. If directory tree is opened, will
" " create new directory in directory tree.
" " If you marked files, will move the files in new directory.
" <Plug>(vimfiler_make_directory)
" " Creates new files. If directory tree is opened, create new files in directory tree.
" <Plug>(vimfiler_new_file)
" " Renames cursor file or selected files.
" " If selected files, vimfiler will open exrename buffer.
" <Plug>(vimfiler_rename_file)
" " Change cursor directory or edit cursor file.
" <Plug>(vimfiler_cd_or_edit)
" <Plug>(vimfiler_switch_to_parent_directory)
" <Plug>(vimfiler_switch_to_home_directory)
" <Plug>(vimfiler_yank_full_path)
" " Executes grep word in selected files or all current files by
" " |unite| interface.
" " Note: This mapping use |vimproc|.
" <Plug>(vimfiler_grep)
" " Note: This mapping use |vimproc|.
" <Plug>(vimfiler_find)
" " If directory tree is opened, it will unexpand directory tree.
" " Else switches to parent directory.
" <Plug>(vimfiler_smart_h)
" " Switches to cursor directory or edit cursor file.
" " If enabled "explorer" option, it will expand directory tree or
" " edit cursor file.
" <Plug>(vimfiler_smart_l)

" =============================================================================
"  === kassio/neoterm ===
" =============================================================================

" let g:neoterm_position = 'horizontal'
" let g:neoterm_automap_keys = ',tt'


" " hide/close terminal
" nnoremap <silent> ,th :call neoterm#close()<cr>
" " clear terminal
" nnoremap <silent> ,tl :call neoterm#clear()<cr>
" " kills the current job (send a <c-c>)
" nnoremap <silent> ,tc :call neoterm#kill()<cr>
"

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
" let g:ale_sign_error = '●'
" let g:ale_sign_warning = '◊'
let g:ale_sign_warning = '●'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_vim_vint_show_style_issues = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s'
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" =============================================================================
"  === qfedit ===
" =============================================================================
let g:qfedit_enable=1


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
let g:table_mode_syntax = 1
let g:table_mode_corner='|'
let g:table_mode_auto_align = 1
let g:table_mode_update_time = 500
" let g:table_mode_motion_left_map='<s-tab>'
" let g:table_mode_motion_right_map = '<tab>'
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
"  === UndoTree ===
" =============================================================================
let g:undotree_WindowLayout = 2
let g:undotree_SetFocusWhenToggle = 1


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
"  === vim-bookmarks ===
" =============================================================================
let g:bookmark_annotation_sign = '☰'
let g:bookmark_sign = '⚑'

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



" =============================================================================
"  === cheat40 ===
" =============================================================================
let g:cheat40_use_default = 0


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
let g:echodoc#enable_at_startup = 1


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
"  === vim-swoop ===
" =============================================================================
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

" Default settings. (NOTE: Remove comments in dictionary before sourcing)
let g:expand_region_text_objects = {
      \ 'iv'  :0,
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


" =============================================================================
"  === vim-jedi ===
" =============================================================================
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"
let g:jedi#completions_enabled = 0

" let g:jedi#goto_command = "<leader>d"
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = ""
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"
let g:jedi#goto_command = ""
let g:jedi#goto_assignments_command = ""
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = ""
let g:jedi#usages_command = ""
let g:jedi#completions_command = ""
let g:jedi#rename_command = ""

let g:python_highlight_all=1


" =============================================================================
"  === taskwarrior ===
" =============================================================================
let g:task_rc_override = 'rc.defaultwidth=0'
let g:task_rc_override = 'rc.defaultheight=0'

" =============================================================================
" === jszakmeister/vim-togglecursor ===
" =============================================================================
let g:togglecursor_default = 'block'
let g:togglecursor_insert = 'line'
let g:togglecursor_leave = 'block'
let g:togglecursor_replace = 'underline'
let g:togglecursor_disable_tmux = 0
let g:togglecursor_disable_default_init = 1


" =============================================================================
"  === junegunn/rainbow_parentheses.vim ===
" =============================================================================
let g:rainbow#max_level = 16
" let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" List of colors that you do not want. ANSI code or #RRGGBB
let g:rainbow#blacklist = [233, 234]


" =============================================================================
"  === wincent/loupe ===
" =============================================================================
let g:LoupeClearHighlightMap=1


" =============================================================================
"  === itchyny/vim-parenmatch ===
" =============================================================================
let g:parenmatch=1
