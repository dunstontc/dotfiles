" =============================================================================
"   Denite
" =============================================================================
augroup deniteresize
  autocmd!
  autocmd VimResized,VimEnter * call denite#custom#option('default',
        \'winheight', winheight(0) / 4)
augroup end


call denite#custom#option('default', {
      \ 'auto_accel'  :     v:true,
      \ 'prompt'      :     '❯ ',
      \ 'source_names':     'short',
      \ 'prompt_highlight': 'helpSpecial',
      \ })

" buffer source
call denite#custom#var(
      \ 'buffer',
      \ 'date_format', '%m-%d-%Y %H:%M:%S')

" replace grep with silver searcher
call denite#custom#var('grep', 'command', ['ag'])
" call denite#custom#var('grep', 'default_opts',
"       \ ['--hidden',
"       \  '--vimgrep',
"       \  '--no-heading',
"       \  '-S'])

call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt',    ['--regexp'])
call denite#custom#var('grep', 'separator',      ['--'])
call denite#custom#var('grep', 'final_opts',     [])


" =============================================================================

" Use ctrl-Q to make a selection
call denite#custom#map('normal',  '<C-q>',
    \ '<NOP>',
    \ 'noremap')
call denite#custom#map('insert', '<C-q>',
    \ '<denite:enter_mode:normal>',
    \ 'noremap')
call denite#custom#map('normal', '<Esc>',
    \ '<NOP>',
    \ 'noremap')
call denite#custom#map('insert', '<Esc>',
    \ '<denite:enter_mode:normal>',
    \ 'noremap')

" or use ctrl-n/ctrl-p to cycle them
call denite#custom#map('insert', '<C-n>',
    \ '<denite:move_to_next_line>',
    \ 'noremap')
call denite#custom#map('insert', '<C-p>',
    \ '<denite:move_to_previous_line>',
    \ 'noremap')

" and then ctrl-v to split into it
call denite#custom#map('insert', '<C-v>',
    \ '<denite:do_action:vsplit>',
    \ 'noremap')
call denite#custom#map('normal', '<C-v>',
    \ '<denite:do_action:vsplit>',
    \ 'noremap')




" call denite#custom#map('normal',  'a',
"       \ '<denite:do_action:add>',
"       \ 'noremap')
" call denite#custom#map('normal',  'd',
"       \ '<denite:do_action:delete>',
"       \ 'noremap')
" call denite#custom#map('normal',  'r',
"       \ '<denite:do_action:reset>',
"       \ 'noremap' )


nnoremap <C-p> :<C-u>Denite file_rec<CR>
" nnoremap <leader>s :<C-u>Denite buffer<CR>
" nnoremap <leader>8 :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
" nnoremap <leader>/ :<C-u>Denite grep:. -mode=normal<CR>
" nnoremap <leader><Space>/ :<C-u>DeniteBufferDir grep:. -mode=normal<CR>




" let s:menus = {}
" let s:menus.vim = {
"     \ 'description': 'Vim',
"     \ }
" let s:menus.vim.file_candidates = [
"     \ ['    > Edit configuation file (init.vim)', '~/.config/nvim/init.vim']
"     \ ]
" call denite#custom#var('menu', 'menus', s:menus)

" =============================================================================
" === denite-extra  ===
" =============================================================================
" nnoremap <leader>o :<C-u>Denite location_list -mode=normal -no-empty<CR>
" nnoremap <leader>hs :<C-u>Denite history:search -mode=normal<CR>
" nnoremap <leader>hc :<C-u>Denite history:cmd -mode=normal<CR>

" =============================================================================
"  vim-denite-sessions
" =============================================================================
call denite#custom#var('session', 'path', '~/.vim-sessions')


" =============================================================================
"  denite-z
" =============================================================================
call denite#custom#var('z', 'order', 'frecent')

call denite#custom#source('z', 'sorters', ['sorter_z'])

command! -nargs=+ -complete=command Z
      \ call denite#start([{'name': 'z', 'args': [<q-args>]}])


" =============================================================================
"  unite-location
" =============================================================================

" nnoremap <silent> <space>p  :<C-u>Denite -resume<CR>
" nnoremap <silent> <space>j  :call execute('Denite -resume -select=+'.v:count1.' -immediately')<CR>
" nnoremap <silent> <space>k  :call execute('Denite -resume -select=-'.v:count1.' -immediately')<CR>
" nnoremap <silent> <space>q  :<C-u>Denite -mode=normal -auto-resize quickfix<CR>
" nnoremap <silent> <space>l  :<C-u>Denite -mode=normal -auto-resize location_list<CR>


" =============================================================================
"  === neoyank ===
" =============================================================================

let g:neoyank#limit=100
" let g:neoyank#file= /history_yank
" let g:neoyank#save_registers=['"']
autocmd BufWinEnter \(*.asc\|*.gpg\) let g:neoyank_disable = 1


" =============================================================================
"   Unite
" =============================================================================
call unite#filters#matcher_default#use(['matcher_fzf'])
call unite#filters#sorter_default#use(['sorter_rank'])
" let g:unite_source_history_yank_enable = 1
" call unite#custom#profile('default', 'context', {
"       \   'safe': 0,
"       \   'start_insert': 1,
"       \   'ignorecase' : 1,
"       \   'short_source_names': 1,
"       \   'update_time': 200,
"       \   'direction': 'rightbelow',
"       \   'winwidth': 40,
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
nnoremap <C-p> :Unite file_rec/async<cr>
nnoremap <space>/ :Unite grep:.<cr>


" =============================================================================
"  === vim-bookmarks ===
" =============================================================================

call unite#custom#profile('source/vim_bookmarks', 'context', {
  \   'winheight': 13,
  \   'direction': 'botright',
  \   'start_insert': 0,
  \   'keep_focus': 1,
  \   'no_quit': 1,
\ })

" =============================================================================
"   fastunite
" =============================================================================

" let g:fastunite_default_options = {}
" call extend(g:fastunite_default_options, {
"   \   'direction': 'botright',
"   \   'prompt_direction': 'top',
"   \   'winheight': 10
"   \ })

