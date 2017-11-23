let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +225 ~/.dotfiles/editors/nvim/plugin/mappings.vim
badd +250 ~/.config/nvim/init.vim
badd +595 ~/Projects/vim/vim-code-dark/colors/codedark.vim
argglobal
silent! argdel *
edit ~/.dotfiles/editors/nvim/plugin/mappings.vim
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe '2resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
exe '3resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 89 + 89) / 179)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal fen
silent! normal! zE
let s:l = 23 - ((11 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 025|
wincmd w
argglobal
if bufexists('~/Projects/vim/vim-code-dark/colors/codedark.vim') | buffer ~/Projects/vim/vim-code-dark/colors/codedark.vim | else | edit ~/Projects/vim/vim-code-dark/colors/codedark.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal fen
silent! normal! zE
let s:l = 595 - ((12 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
595
normal! 035|
wincmd w
argglobal
if bufexists('~/.config/nvim/init.vim') | buffer ~/.config/nvim/init.vim | else | edit ~/.config/nvim/init.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal fen
silent! normal! zE
let s:l = 250 - ((11 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
250
normal! 09|
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe '2resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
exe '3resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 89 + 89) / 179)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=0 winminwidth=1 shortmess=filnxoOcstTF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
