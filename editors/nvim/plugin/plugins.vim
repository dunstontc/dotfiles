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

let g:vimfiler_time_format = ' '
let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_no_default_key_mappings=1

" call vimfiler#set_execute_file('txt', 'notepad')
" call vimfiler#set_execute_file('c', ['gvim', 'notepad'])

" let g:vimfiler_directory_display_top=1
" let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$']
let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$', '^\Icon']

call vimfiler#custom#profile('default', 'context', {
     \ 'safe'       : 0,
     \ 'no-quit'    : 1,
     \ 'split'      : 1,
     \ 'winwidth'   : 50,
     \ 'sort_type'  : 'filename',
     \ 'direction'  : 'topleft',
     \ 'columns'    : 'type:size',
     \ })

     " \ 'edit_action': 'vsplit',
" " File explorer like behavior.
" :VimFiler -buffer-name=explorer
" \ -split -simple -winwidth=35 -toggle -no-quit
" :VimFilerExplorer

call vimfiler#custom#profile('explorer', 'context', {
     \ 'safe'       : 0,
     \ 'no-quit'    : 1,
     \ 'split'      : 1,
     \ 'winwidth'   : 50,
     \ 'sort_type'  : 'filename',
     \ 'direction'  : 'topleft',
     \ 'columns'    : 'type:size',
     \ })

augroup VimFilerAutocommands
  autocmd!

  autocmd Filetype vimfiler setlocal norelativenumber
  autocmd Filetype vimfiler setlocal nonumber
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
  autocmd FileType vimfiler nmap <buffer> e <Plug>(vimfiler_edit_file)
  autocmd FileType vimfiler nmap <buffer> <S-E> <Plug>(vimfiler_split_edit_file)
  autocmd FileType vimfiler nmap <buffer> p <Plug>(vimfiler_preview_file)

  autocmd FileType vimfiler nmap <buffer> <2-LeftMouse> <Plug>(vimfiler_double_click)
  " autocmd FileType vimfiler nmap <buffer> <2-LeftMouse> <Plug>(vimfiler_edit_file)
  autocmd FileType vimfiler nmap <buffer> <S-N> <Plug>(vimfiler_new_file)
  autocmd FileType vimfiler nmap <buffer> <S-D> <Plug>(vimfiler_delete_file)
  autocmd FileType vimfiler nmap <buffer> <S-M> <Plug>(vimfiler_rename_file)
  autocmd FileType vimfiler nmap <buffer> <S-K> <Plug>(vimfiler_make_directory)
  autocmd FileType vimfiler nmap <buffer> <S-R> <Plug>(vimfiler_redraw_screen)
  autocmd FileType vimfiler nmap <buffer> ~ <Plug>(vimfiler_switch_to_home_directory)
  autocmd FileType vimfiler nmap <buffer> ? <Plug>(vimfiler_help)
  autocmd FileType vimfiler nmap <buffer> yy <Plug>(vimfiler_yank_full_path)
  autocmd FileType vimfiler nmap <buffer> gr <Plug>(vimfiler_grep)
  autocmd FileType vimfiler nmap <buffer> gf <Plug>(vimfiler_find)
  " autocmd FileType vimfiler nmap <buffer> <Plug>(vimfiler_)
  " autocmd FileType vimfiler nmap <buffer> <C-l> <Plug>(vimfiler_redraw_screen)
  " autocmd FileType vimfiler nmap <buffer> q <Plug>(vimfiler_close)
augroup END


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
"  === UndoTree ===
" =============================================================================
let g:undotree_WindowLayout = 2
let g:undotree_SetFocusWhenToggle = 1


" =============================================================================
"  === lastplace ===
" =============================================================================
let g:lastplace_ignore = 'gitcommit,gitrebase,svn,hgcommit'
let g:lastplace_ignore_buftype = 'quickfix,nofile,help'
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
let g:bookmark_auto_save_file = $HOME.'/.vim-bookmarks'
let g:bookmark_auto_close = 0
let g:bookmark_highlight_lines = 0
let g:bookmark_show_warning = 1
let g:bookmark_show_toggle_warning = 1
let g:bookmark_center = 0
let g:bookmark_location_list = 1
let g:bookmark_disable_ctrlp = 1

let g:bookmark_no_default_key_mappings = 1
" function! BookmarkMapKeys()
    nmap mm :BookmarkToggle<CR>
    nmap mi :BookmarkAnnotate<CR>
    nmap mn :BookmarkNext<CR>
    nmap mp :BookmarkPrev<CR>
    nmap ma :BookmarkShowAll<CR>
    nmap mc :BookmarkClear<CR>
    nmap mx :BookmarkClearAll<CR>
    nmap mkk :BookmarkMoveUp
    nmap mjj :BookmarkMoveDown
" endfunction
" function! BookmarkUnmapKeys()
"     unmap mm
"     unmap mi
"     unmap mn
"     unmap mp
"     unmap ma
"     unmap mc
"     unmap mx
"     unmap mkk
"     unmap mjj
" endfunction
" autocmd BufEnter * :call BookmarkMapKeys()
" autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()



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
"  === echodoc ===
" =============================================================================
let g:echodoc#enable_at_startup = 1



" =============================================================================
"  === indentguides ===
" =============================================================================
let g:indentguides_ignorelist = ['help']
let g:indentguides_firstlevel = 1
let g:indentguides_spacechar = '┃'
let g:indentguides_tabchar = '┆'



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
