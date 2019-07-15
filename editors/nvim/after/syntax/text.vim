" ==============================================================================
" Vim syntax-highlighting for text, forked from:
" URL: http://aurelio.net/vim/txt.vim
" Maintainer: Aurelio Marinho Jargas
" ==============================================================================

" syn clear
syn case match

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MISC:
syn keyword txtTodo    TODO FIXME XXX contained
syn match   txtComment '^#.*$' contains=txtTodo
syn match   txtNumber  '\v<([0-9[:upper:]]+[[:blank:][:punct:]/-]?)?[0-9]+([[:blank:][:punct:]/-]?[0-9[:upper:]]+)*>'
syn match   txtBar     '^\s*[_=*-]\{3,}\s*$'
syn match   txtSpecial '[][<>{}®]'
syn match   txtSpecial '\v<([1-9]%([0-9]*([,.][0-9]+)?|[0-9]{0,2}%(%( [0-9]{3,3})*%([,.][0-9]+)?|%([.][0-9]{3,3})*%(,[0-9]+)?|%(,[0-9]{3,3})*%([.][0-9]+)?))|0[,.][0-9]+)\s*(%(%(US)?\$|R\$?|%u20ac|\%)|%(USD?|Dollars?|BRL|Rea%(l|is)|EUR|Eur%(o|os)?|[Cc](en)?ts?)>)'
syn match   txtSpecial '\v(%(%u20ac|\$)|<%(R\$|US[D$]?|BRL|EUR))\s*([1-9]%([0-9]*%([,.][0-9]+)?|[0-9]{0,2}%(%( [0-9]{3,3})*%([,.][0-9]+)?|%([.][0-9]{3,3})*%(,[0-9]+)?|%(,[0-9]{3,3})*%([.][0-9]+)?))|0[,.][0-9]+)>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"URL EMAIL:
syn match txtEmail '\<[A-Za-z0-9_.-]\+@\([A-Za-z0-9_-]\+\.\)\+[A-Za-z]\{2,4}\>\(?[A-Za-z0-9%&=+.,@*_-]\+\)\='
syn match txtUrl   '\<\(\(https\=\|ftp\|news\|telnet\|gopher\|wais\)://\([A-Za-z0-9._-]\+\(:[^ @]*\)\=@\)\=\|\(www[23]\=\.\|ftp\.\)\)[A-Za-z0-9%._/~:,=$@-]\+\>/*\(?[A-Za-z0-9/%&=+.,@*_-]\+\)\=\(#[A-Za-z0-9%._-]\+\)\='
syn match txtEmailMsg '^\s*\(From\|De\|Von\|To\|Para\|Nach\|Date\|Data\|Datum\|Assunto\|Subject\|Betreff\):.*'
syn match txtEmailQuote '^\(>\($\| \)\)\+'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"LIST:
syn match txtList    '^ *[-+*.] [^ ]'me=e-1
syn match txtList    '^ *[0-9]\+) '

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FONT BEAUTIFIERS:
syn match   txtUnderline  '\v(^|\s)\zs_[^_]{-1,}([^)]{-}\r?\n){-}[^_]{-}_\ze($|[[:blank:][:punct:]])'hs=s+1,he=e-1
syn match   txtItalic       '\v(^|\s)\zs\*[^*]{-1,}([^)]{-}\r?\n){-}[^*]{-}\*\ze($|[[:blank:][:punct:]])'hs=s+1,he=e-1
syn match   txtMonospace  '\v(^|\s)\zs`[^`]{-1,}([^)]{-}\r?\n){-}[^`]{-}`\ze($|[[:blank:][:punct:]])'hs=s+1,he=e-1
" max: two lines
syn match   txtParentesis '\v(^|\s)\zs\([^)]{-1,}([^)]{-}\r?\n){-}[^)]{-}\)\ze($|[[:blank:][:punct:]])' contains=txtUrl,txtEmail
syn match   txtQuotes '\v(^|\s)\zs"[^"]{-1,}([^)]{-}\r?\n){-}[^"]{-}"\ze($|[[:blank:][:punct:]])'hs=s+1,he=e-1
syn match   txtQuotes "\v(^|\s)\zs'[^']{-1,}([^)]{-}\r?\n){-}[^']{-}'\ze($|[[:blank:][:punct:]])"hs=s+1,he=e-1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color definitions (specific)
hi txtBar         term=bold        cterm=bold        gui=bold
hi txtItalic      term=italic      cterm=italic      gui=italic
hi txtUnderline   term=underline   cterm=underline   gui=underline
"
" color definitions (using Vim defaults)
hi link txtComment      Comment
hi link txtQuotes       String
hi link txtNumber       Number
hi link txtTodo         Todo
hi link txtEmail        PreProc
hi link txtUrl          PreProc
hi link txtList         Statement
hi link txtMonospace    Special
hi link txtSpecial      Statement
hi link txtParentesis   Comment
