scriptencoding utf-8

if !exists(':ALEInfo')
  finish
endif

" =============================================================================
"  === ALE ===
" =============================================================================
" let g:ale_fixers={}
let g:ale_linters = {
    \    'bash': ['shellcheck'],
    \    'zsh': ['shellcheck'],
    \    'javascript': ['eslint'],
    \    'vim': ['vint'],
    \}
let g:ale_fix_on_save = 0
" let g:ale_completion_enabled = 0
" let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
" let g:ale_sign_error = '●'
" let g:ale_sign_warning = '◊'
let g:ale_sign_warning = '●'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_vim_vint_show_style_issues = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s'
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
