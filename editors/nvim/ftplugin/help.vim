setlocal nolist
setlocal number


setlocal iskeyword+=:
setlocal iskeyword+=#
setlocal iskeyword+=-

nmap <buffer> <silent> q :q<cr>
nmap <buffer> <silent> <Tab> gO
nmap <buffer> <silent> <CR> <Plug>(expand_region_expand)
nmap <buffer> <silent> ᚾ <Plug>(expand_region_expand)


