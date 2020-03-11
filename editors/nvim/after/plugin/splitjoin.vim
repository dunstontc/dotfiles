if !exists(':SplitjoinJoin')
  finish
endif

let g:splitjoin_normalize_whitespace = 1
let g:splitjoin_align = 1
let g:splitjoin_trailing_comma = 1

let g:splitjoin_ruby_curly_braces = 1
let g:splitjoin_ruby_trailing_comma = 1
let g:splitjoin_ruby_hanging_args = 0
let g:splitjoin_ruby_heredoc_type = '<<~'

let g:splitjoin_html_attributes_hanging = 1
