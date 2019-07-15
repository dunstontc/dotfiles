" TODO: add load guard

let g:rooter_change_directory_for_non_project_files = ''
" resolve symbolic links
let g:rooter_resolve_links = 0
" Echo cwd on change
let g:rooter_silent_chdir = 1
let g:rooter_use_lcd = 1
let g:rooter_manual_only = 0

" let g:rooter_targets = '/,*.rb,*.haml,*.js'
let g:rooter_targets = '/,*'
" let g:rooter_patterns = ['Rakefile', '.git/', '.projections.json']
let g:rooter_patterns = [
      \ '.git', '.git/',
      \ '_darcs/',
      \ '.hg/',
      \ '.bzr/',
      \ '.svn/',
      \ 'Rakefile',
      \ '.projections.json'
      \]
