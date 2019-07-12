" setlocal tabstop = 4

setlocal nolist
setlocal foldmethod=syntax

nmap <buffer><localleader>a <Plug>(go-alternate-vertical)
nmap <buffer><localleader><S-A> <Plug>(go-alternate-edit)
nmap <buffer><localleader>b :<C-u>call <SID>build_go_files()<CR>
nmap <buffer><localleader>c <Plug>(go-coverage-toggle)
nmap <buffer><localleader>r <Plug>(go-run)
nmap <buffer><localleader>t <Plug>(go-test)


" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
