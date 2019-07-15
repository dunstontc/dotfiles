
" === nicwest/vim-http ===
let g:vim_http_split_vertically = 1

function! s:set_json_header() abort
  call http#set_header('Content-Type', 'application/json')
endfunction

function! s:clean_personal_stuff() abort
  call http#remove_header('Cookie')
  call http#remove_header('Accept')
  call http#remove_header('User-Agent')
  call http#remove_header('Accept-Language')
endfunction

function! s:add_compression() abort
  call http#set_header('Accept-Encoding', 'deflate, gzip')
  let g:vim_http_additional_curl_args = '--compressed'
endfunction

command! JSON call s:set_json_header()
command! Anon call s:clean_personal_stuff()
command! Compression call s:add_compression()
