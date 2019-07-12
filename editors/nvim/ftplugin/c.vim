" === octol/vim-cpp-enhanced-highlight ===
let g:c_no_curly_error = 1
let g:cpp_concepts_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1
" let g:cpp_experimental_simple_template_highlight = 1

" === Rip-Rip/clang_complete ===
let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'

" === zchee/deoplete-clang ===
let g:deoplete#sources#clang#libclang_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
" let g:deoplete#sources#clang#clang_header=

" === tweekmonster/deoplete-clang2 ===
let g:deoplete#sources#clang#autofill_neomake = v:true
let g:deoplete#sources#clang#executable='/usr/bin/clang'
