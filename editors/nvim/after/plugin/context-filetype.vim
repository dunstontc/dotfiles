let g:context_filetype#filetypes = {
\ 'ruby' : [
\   {
\     'start' : '\%(\%(class\s*\|\%([]})".]\|::\)\)\_s*\|\w\)\@<!<<-\=\zsJS',
\     'end' : '^\s*\zsJS$',
\     'filetype' : 'javascript',
\   },
\   {
\     'start' : '\%(\%(class\s*\|\%([]})".]\|::\)\)\_s*\|\w\)\@<!<<-\=\zsHTML',
\     'end' : '^\s*\zsHTML$',
\     'filetype' : 'html',
\   },
\   {
\     'start' : '\%(\%(class\s*\|\%([]})".]\|::\)\)\_s*\|\w\)\@<!<<-\=\zsSQL',
\     'end' : '^\s*\zsSQL$',
\     'filetype' : 'sql',
\   },
\   {
\     'start' : '\%(\%(class\s*\|\%([]})".]\|::\)\)\_s*\|\w\)\@<!<<-\=\zsGRAPHQL',
\     'end' : '^\s*\zsGRAPHQL$',
\     'filetype' : 'graphql',
\   },
\ ]
\}
