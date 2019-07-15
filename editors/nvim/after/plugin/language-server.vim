" TODO: Add load guard

let g:LanguageClient_serverCommands = {
    \ 'haskell': ['hie', '--lsp'],
    \ 'ocaml':  ['ocaml-language-server', '--stdio'],
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'vue': ['vls'],
    \ }
    " \ 'javascript.jsx': ['javascript-typescript-stdio'],
    " \ 'javascript': ['/opt/javascript-typescript-langserver/lib/language-server-stdio.js'],


let g:LanguageClient_rootMarkers = {
    \ 'javascript': ['project.json'],
    \ 'rust': ['Cargo.toml'],
    \ }


" Automatically start language servers.
let g:LanguageClient_autoStart = 1

let g:LanguageClient_changeThrottle = 0

let g:LanguageClient_selectionUI = "location-list"

let g:LanguageClient_diagnosticsList = "location"

let g:LanguageClient_diagnosticsEnable = 1

let g:LanguageClient_windowLogMessageLevel = 3

" let g:LanguageClient_settingsPath=
" let g:LanguageClient_loadSettings = 0

nnoremap <silent> <C-y> :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
