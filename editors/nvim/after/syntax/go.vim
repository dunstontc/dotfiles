" " syn match       goCommentDelim      "\(\/\*\*\|\*\*/\)"
" " syn match       goCommentDelim      "\v(\/\*\*)|(\*\*\/$)"  containedin=goComment
" " syn match       goCommentDelimEnd      "\v\*\*\/"  containedin=goComment
" " syn match       goCommentDelim      "\v(\*\*\/)"
" " syn match       goCommentDelim      "\v(\/\*\*)"
" " syn match       goCommentDelim      "\v(\/\*\s)|(\*\/$)"
" " syn match       goCommentDelim      "\v(\/\*\s)|(\s\*\/$)"
" " syn match       goCommentDelim      "\\"
" " syn match       goCommentDelim      "\/\*\s"
" " syn match       goCommentDelim      "\v\/\*\s" contained containedin=goComment
" " syn match       goCommentDelim      "\/\*\*$" contained containedin=goComment
" " syn match       goCommentDelim      "//\s"
" " syn match       goCommentDelim      "\*\/$"
" " syn match       goCommentDelim      "\v\s\*\/"  contained containedin=goComment
" " syn match       goCommentDelim      "\*\*\/$"
" syn match goDocComStart "^\t\+\zs\/\*\*\ze$" containedin=goCommentGroup
" syn match goDocComEnd "\*\*\/" contained
"
" " syn region goDocComment start="^\t\+\/\*\*$" end="^\t+\*\*\$/" contained containedin=goComment
" " syn cluster     goCommentGroup      contains=goTodo,goCommentDelimEnd
