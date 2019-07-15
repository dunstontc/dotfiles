" ==============================================================================
" === dhruvasagar/vim-table-mode === {{{

" function! s:isAtStartOfLine(mapping)
"   let text_before_cursor = getline('.')[0 : col('.')-1]
"   let mapping_pattern = '\V' . escape(a:mapping, '\')
"   let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
"   return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
" endfunction

" inoreabbrev <expr> <bar><bar>
"           \ <SID>isAtStartOfLine('\|\|') ?
"           \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'

" inoreabbrev <expr> __
"           \ <SID>isAtStartOfLine('__') ?
"           \ '<c-o>:silent! TableModeDisable<cr>' : '__'

" let g:table_mode_syntax = 1
let g:table_mode_corner='|'
let g:table_mode_auto_align = 1
let g:table_mode_update_time = 100
" let g:table_mode_motion_left_map='<s-tab>'  " TODO: table mode tab map
" let g:table_mode_motion_right_map = '<tab>'
" let g:table_mode_motion_down_map = ''
" let g:table_mode_motion_up_map = ''
let g:table_mode_disable_mappings = 1
" let g:table_mode_delimiter = ','
let g:table_mode_always_active = 0
" let g:table_mode_toggle_map = ''
" let g:table_mode_map_prefix = ''
" let g:table_mode_tableize_d_map = ''
" let g:table_mode_echo_cell_map = ''
" let g:table_mode_eval_formula_map = ''
" let g:table_mode_delete_row_map = ''
" let g:table_mode_delete_column_map = ''
" let g:table_mode_add_formula_map = ''
" let g:table_mode_realign_map = ''
" let g:table_mode_cell_text_object_i_map = ''
" let g:table_mode_cell_text_object_i_map = ''
" let g:table_mode_cell_text_object_a_map = ''
" let g:table_mode_motion_up_map = ''
" let g:table_mode_motion_down_map = ''
" let g:table_mode_motion_left_map = ''
" let g:table_mode_motion_right_map = ''
" }}}

