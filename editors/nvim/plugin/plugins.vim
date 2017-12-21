" ==============================================================================
"  === Shougo/dein ===
" ==============================================================================
let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1
" let g:dein#notification_icon = '~/.vim/signs/warn.png'
let g:dein#install_log_filename = '~/dein.log'


" ==============================================================================
"  === pbogut/fzf-mru.vim ===
" ==============================================================================
let g:fzf_mru_relative = 1


" ==============================================================================
"  === xolox/vim-easytags ===
" ==============================================================================
let g:easytags_file = '~/.config/nvim/tags'


" ==============================================================================
"  === qfedit ===
" ==============================================================================
let g:qfedit_enable=1


" ==============================================================================
"  === lastplace ===
" ==============================================================================
let g:lastplace_ignore = 'gitcommit,gitrebase,svn,hgcommit'
let g:lastplace_ignore_buftype = 'quickfix,nofile,help'
let g:lastplace_open_folds = 0


" ==============================================================================
"  === Colorizer ===
" ==============================================================================
let g:colorizer_auto_filetype=''


" ==============================================================================
"  === cheat40 ===
" ==============================================================================
let g:cheat40_use_default = 0


" ==============================================================================
"  === vim-resurrect ===
" ==============================================================================
let g:resurrect_ignore_patterns = [
\  '/.git/',
\  'fugitive://',
\  '/undotree_2',
\  '/__CtrlSF__'
\]


" ==============================================================================
"  === VimWiki ===
" ==============================================================================
" let g:vimwiki_list = [{'path': '~/vimwiki.md.d/',
"                      \ 'syntax': 'markdown', 'ext': '.md'}]


" ==============================================================================
"  === freitass/todo.txt ===
" ==============================================================================
let g:todo_load_python = 1


" ==============================================================================
"  === extra-whitespace ===
" ==============================================================================
let g:extra_whitespace_ignored_filetypes = [
      \ 'unite',
      \ 'mkd',
      \ 'startify',
      \ 'cheat40'
      \]


" ==============================================================================
"  === indentguides ===
" ==============================================================================
let g:indentguides_ignorelist = ['help']
let g:indentguides_firstlevel = 1
let g:indentguides_spacechar = '┃'
let g:indentguides_tabchar = '┆'


" ==============================================================================
"  === vim-expand-region ===
" ==============================================================================

let g:expand_region_text_objects = {
      \ 'iv'  :1,
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


" ==============================================================================
"  === taskwarrior ===
" ==============================================================================
let g:task_rc_override = 'rc.defaultwidth=0'
let g:task_rc_override = 'rc.defaultheight=0'


" ==============================================================================
"  === junegunn/rainbow_parentheses.vim ===
" ==============================================================================
let g:rainbow#max_level = 16
" let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" List of colors that you do not want. ANSI code or #RRGGBB
let g:rainbow#blacklist = [233, 234]


" ==============================================================================
"  === wincent/loupe ===
" ==============================================================================
" let g:LoupeClearHighlightMap=1


" ==============================================================================
"  === itchyny/vim-parenmatch ===
" ==============================================================================
let g:parenmatch=1


" ==============================================================================
"  === dkarter/bullets.vim ===
" ==============================================================================

let g:bullets_enabled_file_types = [
    \ 'gitcommit',
    \ 'markdown',
    \ 'rst',
    \ 'scratch',
    \ 'text',
    \ 'yaml',
    \]
