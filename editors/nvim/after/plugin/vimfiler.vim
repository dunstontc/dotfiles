scriptencoding utf-8

" =============================================================================
"  === Shougo/vimfiler ===
" =============================================================================

let g:vimfiler_as_default_explorer = 1

" Like Textmate icons.
let g:vimfiler_tree_leaf_icon = ' '
" let g:vimfiler_tree_opened_icon = '▾'
" let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_tree_opened_icon = '▼'
let g:vimfiler_tree_closed_icon = '▷'
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
let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$', '^\Icon', '__pycache__']

call vimfiler#custom#profile('default', 'context', {
     \ 'safe'       : 0,
     \ 'explorer'   : 1,
     \ 'no-quit'    : 1,
     \ 'split'      : 1,
     \ 'winwidth'   : 35,
     \ 'sort_type'  : 'filename',
     \ 'direction'  : 'topleft',
     \ 'columns'    : 'type:size',
     \ })

     " \ 'edit_action': 'vsplit',
" " File explorer like behavior.
" :VimFiler -buffer-name=explorer
" \ -split -simple -winwidth=35 -toggle -no-quit
" :VimFilerExplorer

" call vimfiler#custom#profile('explorer', 'context', {
"      \ 'safe'       : 0,
"      \ 'no-quit'    : 1,
"      \ 'split'      : 1,
"      \ 'winwidth'   : 50,
"      \ 'sort_type'  : 'filename',
"      \ 'direction'  : 'topleft',
"      \ 'columns'    : 'type:size',
"      \ })

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
  autocmd FileType vimfiler nmap <buffer> <C-V> <Plug>(vimfiler_split_edit_file)
  autocmd FileType vimfiler nmap <buffer> p <Plug>(vimfiler_preview_file)

  autocmd FileType vimfiler nmap <buffer> <2-LeftMouse> <Plug>(vimfiler_double_click)
  autocmd FileType vimfiler nmap <buffer> <2-LeftMouse> <Plug>(vimfiler_smart_l)
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
" " Renames cursor file or selected files.
" " Change cursor directory or edit cursor file.
" <Plug>(vimfiler_cd_or_edit)
" <Plug>(vimfiler_switch_to_parent_directory)
" <Plug>(vimfiler_switch_to_home_directory)

