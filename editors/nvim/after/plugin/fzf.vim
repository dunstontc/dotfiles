if !exists(':fzf')
    finish
endif
" =============================================================================
"  === fzf ===
" =============================================================================
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }
" let g:fzf_layout = { 'window': '10split enew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'StatusLineNC'],
  \ 'bg':      ['bg', 'StatusLineNC'],
  \ 'hl':      ['fg', 'StatusLineNC'],
  \ 'fg+':     ['fg', 'StatusLineNC', 'StatusLineNC', 'StatusLineNC'],
  \ 'bg+':     ['bg', 'StatusLineNC', 'StatusLineNC'],
  \ 'hl+':     ['fg', 'StatusLineNC'],
  \ 'info':    ['fg', 'StatusLineNC'],
  \ 'border':  ['fg', 'StatusLineNC'],
  \ 'prompt':  ['fg', 'StatusLineNC'],
  \ 'pointer': ['fg', 'StatusLineNC'],
  \ 'marker':  ['fg', 'StatusLineNC'],
  \ 'spinner': ['fg', 'StatusLineNC'],
  \ 'header':  ['fg', 'StatusLineNC'] }


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

" autocmd! FileType fzf
" autocmd  FileType fzf set laststatus=0 noshowmode noruler
  " \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


" function! s:fzf_statusline()
"   " Override statusline as you like
"   highlight fzf1 ctermfg=161 ctermbg=251
"   highlight fzf2 ctermfg=23 ctermbg=251
"   highlight fzf3 ctermfg=236 ctermbg=251
"   setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
" endfunction
"
" autocmd! User FzfStatusLine call <SID>fzf_statusline()

