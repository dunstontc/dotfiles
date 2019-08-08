let g:neoformat_only_msg_on_error = 1

" Run all enabled formatters
" (by default Neoformat stops after the first formatter succeeds)
let g:neoformat_run_all_formatters = 0


let g:neoformat_enabled_c          = ['uncrustify']
let g:neoformat_enabled_cpp        = ['uncrustify']
let g:neoformat_enabled_cs         = ['uncrustify']
let g:neoformat_enabled_csx        = ['uncrustify']
let g:neoformat_enabled_dart       = ['dartfmt']
let g:neoformat_enabled_elixir     = ['mixformat']
let g:neoformat_enabled_go         = ['gofmt']
let g:neoformat_enabled_html       = ['html-beautify']
let g:neoformat_enabled_xhtml      = ['tidy']
let g:neoformat_enabled_xml        = ['tidy']
let g:neoformat_enabled_javascript = ['es_dlint']
let g:neoformat_enabled_typescript = ['tsfmt']
let g:neoformat_enabled_json       = ['fixjson']
let g:neoformat_enabled_json5      = ['fixjson']
let g:neoformat_enabled_java       = ['uncrustify']
let g:neoformat_enabled_markdown   = ['remark']
let g:neoformat_enabled_sh         = ['shfmt']
let g:neoformat_enabled_bash       = ['shfmt']
let g:neoformat_enabled_rust       = ['rustfmt']

" exe       the name the formatter executable in the path  n/a  required
" args      list of arguments  []  optional
" replace   overwrite the file, instead of updating the buffer  0  optional
" stdin     send data to the stdin of the formatter  0  optional
" env       list of environment variable definitions to be prepended to the formatter command  []  optional
" no_append do not append the path of the file to the formatter command, used when the path is in the middle of a command  0  optional

let g:neoformat_javascript_eslint_d = {
            \ 'exe': 'eslint_d',
            \ 'args': ['--fix', '--fix-to-stdout'],
            \ 'stdin': 1,
            \ }

let g:neoformat_typescript_tsfmt = {
            \ 'exe': 'tsfmt',
            \ 'args': ['--useTsfmt ~/.dotfiles/config/linting/tsfmt.json', '--stdin', '%:p'],
            \ 'stdin': 1,
            \ }

let g:neoformat_bash_shfmt = {
            \ 'exe': 'shfmt',
            \ 'args': ['-i 2', '-ci'],
            \ 'replace': 0,
            \ 'stdin': 0,
            \ 'no_append': 0,
            \ }

let g:neoformat_sh_shfmt = {
            \ 'exe': 'shfmt',
            \ 'args': ['-i 2', '-ci'],
            \ 'replace': 0,
            \ 'stdin': 0,
            \ 'no_append': 0,
            \ }


