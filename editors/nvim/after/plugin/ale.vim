scriptencoding utf-8

if !exists(':ALEInfo')
  finish
endif

" =============================================================================
"  === ALE ===
" =============================================================================
" let g:ale_fixers={}
let g:ale_linters = {
    \    'bash':       ['shellcheck'],
    \    'sh':         ['shellcheck'],
    \    'zsh':        ['shellcheck'],
    \    'javascript': ['eslint'],
    \    'vim':        ['vint'],
    \    'python':     ['flake8'],
    \ }


let g:ale_type_map = {'flake8': {'D': 'I'}}

let g:ale_fix_on_save = 0
" let g:ale_completion_enabled = 0
" let g:ale_sign_column_always = 1
let g:ale_set_quickfix=1

let g:ale_sign_info = '◊'
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '●'
let g:ale_sign_style_error='--'
let g:ale_sign_style_warning='--'

let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'


let g:ale_echo_cursor = 1
let g:ale_echo_msg_error_str = '✗'
let g:ale_echo_msg_warning_str = '●'
let g:ale_echo_msg_info_str='◊'
" let g:ale_echo_msg_format = '[%linter%] %severity% %s'
let g:ale_echo_msg_format = '(%linter%) %severity%  %code -- %%s'
let g:ale_loclist_msg_format = '(%linter%) %severity%  %code -- %%s'

let g:ale_vim_vint_show_style_issues = 1
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
