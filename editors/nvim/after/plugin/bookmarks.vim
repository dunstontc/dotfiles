scriptencoding utf-8

if exists('g:bookmark_sign')
  finish
endif

let g:bookmark_sign = 1
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
    " nmap mm :BookmarkToggle<CR>
    " nmap mi :BookmarkAnnotate<CR>
    " nmap mn :BookmarkNext<CR>
    " nmap mp :BookmarkPrev<CR>
    " nmap ma :BookmarkShowAll<CR>
    " nmap mc :BookmarkClear<CR>
    " nmap mx :BookmarkClearAll<CR>
    " nmap mkk :BookmarkMoveUp
    " nmap mjj :BookmarkMoveDown
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

