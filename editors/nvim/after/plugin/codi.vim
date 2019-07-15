if !exists(':Codi')
  finish
endif

" =============================================================================
"  === codi.vim ===
" =============================================================================
" let g:codi#autocmd    =  " determines what autocommands trigger updates. See the documentation for more information.
let g:codi#width      = 45  " The width of the Codi split.
let g:codi#rightsplit = 1   " Whether or not Codi spawns on the right side.
let g:codi#rightalign = 1   " Whether or not to right-align the Codi buffer.
let g:codi#autoclose  = 1   " Whether or not to close Codi when the associated buffer is closed.
let g:codi#raw        = 0   " Whether or not to display interpreter results without alignment formatting (useful for debugging).
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
     \  'sh': {
     \ 'bin': '/usr/local/bin/bash'
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
