" ==============================================================================
"   Denite
" ==============================================================================

call denite#custom#option('default', {
  \ 'prompt':                  '❯ ',
  \ 'auto_accel':              v:true,
  \ 'auto_preview':            v:false,
  \ 'auto_resize':             v:true,
  \ 'cursor_shape':            v:true,
  \ 'cursor_wrap':             v:true,
  \ 'reversed':                v:true,
  \ 'statusline':              v:false,
  \ 'updatetime':              1,
  \ 'scroll':                  1,
  \ 'source_names':            '',
  \ 'prompt_highlight':        'helpSpecial',
  \ 'highlight_matched_char':  'Underlined',
  \ 'highlight_matched_range': 'Underlined',
  \ 'highlight_mode_normal':   'deniteModeNormal',
  \ 'highlight_mode_insert':   'deniteModeInsert',
  \ 'highlight_preview_line':  'String',
  \ })

  " \ 'cursorline':              v:true,
  " \ 'auto_highlight':          v:true,
  " \ 'winheight':              10,
" \ 'source_names':           'long',

" buffer source
" call denite#custom#var(
  " \ 'buffer',
  " \ 'date_format', '%m-%d-%Y %H:%M:%S')

" Default is none
" call denite#custom#source(
"   \ 'buffer,file_mru,file_old',
"   \ 'converters', ['converter_relative_word'])


" if executable('ag')
  " The Silver Searcher
  call denite#custom#var('file_rec', 'command',
       \ ['ag', '-U', '--hidden', '--follow', '--nocolor', '--nogroup', '-g', ''])

  " Setup ignore patterns in your .agignore file!
  " https://github.com/ggreer/the_silver_searcher/wiki/Advanced-Usage
  call denite#custom#var('grep', 'command', ['ag'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#var('grep', 'default_opts',
       \ [ '--skip-vcs-ignores', '--vimgrep', '--smart-case', '--hidden' ])
  call denite#custom#source('grep', 'args', ['', '', '!'])
" endif

call denite#custom#source('_', 'matchers', ['matcher_fzf'])
" call denite#custom#source('_', 'matchers', ['matcher_fzf', 'matcher_regexp'])
" call denite#custom#source('grep', 'filters', ['converter_abbr_word'])


" ==============================================================================


call denite#custom#map('insert', '<Esc>',  '<denite:enter_mode:normal>',           'noremap')
call denite#custom#map('insert', '<C-q>',  '<denite:enter_mode:normal>',           'noremap')
call denite#custom#map('insert', '𐌘',      '<denite:enter_mode:normal>',           'noremap')
call denite#custom#map('insert', '<C-v>',  '<denite:do_action:vsplit>',            'noremap')
call denite#custom#map('insert', '<C-x>',  '<denite:do_action:split>',             'noremap')
call denite#custom#map('insert', '<C-p>',  '<denite:move_to_next_line>',           'noremap')
call denite#custom#map('insert', '<C-n>',  '<denite:move_to_previous_line>',       'noremap')
call denite#custom#map('insert', '<C-h>',  '<denite:delete_word_before_caret>',    'noremap') " TODO: See if this works, remove if not.
call denite#custom#map('insert', '<C-a>',  '<denite:move_caret_to_one_word_left>', 'noremap')
" call denite#custom#map('insert', '<M-left>',   '<denite:move_caret_to_one_word_left>', 'noremap')
" call denite#custom#map('insert', '<M-right>',  '<denite:move_caret_to_end_of_word>', 'noremap')
" call denite#custom#map('insert', '<>',  '<denite:>', 'noremap')

" call denite#custom#map('insert', '<ScrollWheelUp>',    '<denite:move_to_next_line>',     'noremap')
" call denite#custom#map('insert', '<ScrollWheelDown>',  '<denite:move_to_previous_line>', 'noremap')

call denite#custom#map('normal', '<Esc>',  '<NOP>',                          'noremap')
call denite#custom#map('normal', '<C-q>',  '<NOP>',                          'noremap')
call denite#custom#map('normal', '𐌘',      '<NOP>',                          'noremap')
call denite#custom#map('normal', 'n',      '<NOP>',                          'noremap')
call denite#custom#map('normal', 'a',      '<denite:do_action:add>',         'noremap')
call denite#custom#map('normal', 'd',      '<denite:do_action:delete>',      'noremap')
call denite#custom#map('normal', 'r',      '<denite:do_action:reset>',       'noremap')
call denite#custom#map('normal', '<C-v>',  '<denite:do_action:vsplit>',      'noremap')
call denite#custom#map('normal', '<C-x>',  '<denite:do_action:split>',       'noremap')


" " KEY MAPPINGS
" let s:insert_mode_mappings = [
"       \  ['jk', '<denite:enter_mode:normal>', 'noremap'],
"       \ ['<Tab>', '<denite:move_to_next_line>', 'noremap'],
"       \ ['<S-tab>', '<denite:move_to_previous_line>', 'noremap'],
"       \  ['<Esc>', '<denite:enter_mode:normal>', 'noremap'],
"       \  ['<C-N>', '<denite:assign_next_matched_text>', 'noremap'],
"       \  ['<C-P>', '<denite:assign_previous_matched_text>', 'noremap'],
"       \  ['<Up>', '<denite:assign_previous_text>', 'noremap'],
"       \  ['<Down>', '<denite:assign_next_text>', 'noremap'],
"       \  ['<C-Y>', '<denite:redraw>', 'noremap'],
"       \ ]
"
" let s:normal_mode_mappings = [
"       \   ["'", '<denite:toggle_select_down>', 'noremap'],
"       \   ['<C-n>', '<denite:jump_to_next_source>', 'noremap'],
"       \   ['<C-p>', '<denite:jump_to_previous_source>', 'noremap'],
"       \   ['gg', '<denite:move_to_first_line>', 'noremap'],
"       \   ['st', '<denite:do_action:tabopen>', 'noremap'],
"       \   ['sg', '<denite:do_action:vsplit>', 'noremap'],
"       \   ['sv', '<denite:do_action:split>', 'noremap'],
"       \   ['q', '<denite:quit>', 'noremap'],
"       \   ['r', '<denite:redraw>', 'noremap'],
"       \ ]


" nnoremap <C-p> :<C-u>Denite file_rec<CR>
" nnoremap <leader>s :<C-u>Denite buffer<CR>
" nnoremap <leader>8 :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
" nnoremap <leader>/ :<C-u>Denite grep:. -mode=normal<CR>
" nnoremap <leader>/ :<C-u>DeniteBufferDir grep:. -mode=normal<CR>


" ==============================================================================
" === denite-extra  ===
" ==============================================================================
" nnoremap <leader>o :<C-u>Denite location_list -mode=normal -no-empty<CR>
" nnoremap <leader>hs :<C-u>Denite history:search -mode=normal<CR>
" nnoremap <leader>hc :<C-u>Denite history:cmd -mode=normal<CR>
call denite#custom#var('commands', 'config', '~/commands.json')


" ==============================================================================
"  vim-denite-sessions
" ==============================================================================
call denite#custom#var('session', 'path', '~/.config/nvim/sessions')
" call denite#custom#var('session', 'path', '~/.vim-sessions')


" ==============================================================================
"  denite-z
" ==============================================================================
call denite#custom#var('z', 'order', 'frecent')

call denite#custom#source('z', 'sorters', ['sorter_z'])

command! -nargs=+ -complete=command Z
      \ call denite#start([{'name': 'z', 'args': [<q-args>]}])


" ==============================================================================
"  === rafi/vim-denite-task ===
" ==============================================================================

call denite#custom#var('task', 'taskrc', '~/.taskrc')
call denite#custom#var('task', 'data_dir', '~/.task')
call denite#custom#var('task', 'format', '{id:3.3} | {priority:1.1} | {project:15.15} | {description:40.40} | {entry} | {due}')
call denite#custom#var('task', 'date_format', '%y-%m-%d %H:%M')
" call denite#custom#var('task', 'label_width', 17)



" ==============================================================================
"  unite-location
" ==============================================================================

" nnoremap <silent> <space>p  :<C-u>Denite -resume<CR>
" nnoremap <silent> <space>j  :call execute('Denite -resume -select=+'.v:count1.' -immediately')<CR>
" nnoremap <silent> <space>k  :call execute('Denite -resume -select=-'.v:count1.' -immediately')<CR>
" nnoremap <silent> <space>q  :<C-u>Denite -mode=normal -auto-resize quickfix<CR>
" nnoremap <silent> <space>l  :<C-u>Denite -mode=normal -auto-resize location_list<CR>


" ==============================================================================
"  === neoyank ===
" ==============================================================================

let g:neoyank#limit=100
" let g:neoyank#file=~/.cache/neoyank/history_yank
" let g:neoyank#save_registers=['"']


" ==============================================================================
"   Unite
" ==============================================================================
" call unite#filters#matcher_default#use(['matcher_fzf'])
" call unite#filters#sorter_default#use(['sorter_rank'])
" let g:unite_source_history_yank_enable = 1
call unite#custom#profile('default', 'context', {
      \  'safe': 1,
      \  'start_insert': 1,
      \  'ignorecase' : 1,
      \  'update_time': 1,
      \  'direction': 'rightbelow',
      \  'max_candidates': 100,
      \  'auto_resize': 1,
      \  'hide_icon': 0,
      \  'candidate-icon': ' ',
      \  'marked_icon': '✓',
      \  'prompt' : '❯❯ '
      \})
" call unite#custom#profile('default', 'context', {
"       \   'safe': 1,
"       \   'start_insert': 0,
"       \   'ignorecase' : 1,
"       \   'short_source_names': 0,
"       \   'update_time': 200,
"       \   'direction': 'rightbelow',
"       \   'winwidth': 0,
"       \   'winheight': 15,
"       \   'max_candidates': 100,
"       \   'no_auto_resize': 1,
"       \   'vertical_preview': 1,
"       \   'cursor_line_time': '0.10',
"       \   'hide_icon': 0,
"       \   'candidate-icon': ' ',
"       \   'marked_icon': '✓',
"       \   'prompt' : '❯❯ '
"       \ })
" nnoremap <C-p> :Unite file_rec/async<cr>
" nnoremap <space>/ :Unite grep:.<cr>

" let g:unite_source_file_rec_max_depth = 6
" let g:unite_source_grep_default_opts =
"       \ '-i --vimgrep --hidden --ignore ' .
"       \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
" let g:unite_source_grep_recursive_opt = ''
"
" call unite#custom#profile('file_rec/async', 'context', {
"       \   'start_insert' : 1,
"       \   'quit'         : 1,
"       \   'split'        : 1,
"       \   'keep_focus'   : 1,
"       \   'winheight'    : 20,
"       \ })

" ==============================================================================
"  === vim-bookmarks ===
" ==============================================================================

call unite#custom#profile('source/vim_bookmarks', 'context', {
  \   'winheight': 13,
  \   'direction': 'botright',
  \   'start_insert': 1,
  \   'keep_focus': 1,
  \   'no_quit': 1,
  \ })

