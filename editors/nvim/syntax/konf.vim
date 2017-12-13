" Vim syntax file
" Language:             konf
" Current Maintainer:   Clay Dunston <dunstontc@gmail.com>
" URL:                  https://github.com/dunstontc/syntax.nvim
" Last Change:          2017-12-10
" Filenames:            *.conf,tox.ini
" Version:              0.0.1

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif



" Syntax definitions {{{1
" Builtin highlighting {{{2
" syn match  configdelimiter /[()\[\];,]/
"
" syn match configoperator  /[=|&\*\+\<\>]/
"
" syn match configDnl contained dnl
"
" syn match configcomment    /\(dnl.*\)\|\(#.*\)/  contains=configDnl,@Spell
"
" syn match configfunction   /\<[A-Z_][A-Z0-9_]*\>/
"
" syn match confignumber     /[-+]\=\<\d\+\(\.\d*\)\=\>/
"
" syn match configkeyword    else if test for fi done in then do
"
" syn match configspecial    cat eval rm
"
" syn region configstring    start=/\z(["'`]\)/ skip=/\\\z1/ end=/\z1/  contains=@Spell
"                    matchgroup=configfunction start=/AC_MSG_[A-Z]*\ze(\[/ matchgroup=configdelimiter end=/\])/  contains=configdelimiter,@Spell
"                    matchgroup=configfunction start=/AC_MSG_[A-Z]*\ze([^[]/ matchgroup=configdelimiter end=/)/  contains=configdelimiter,@Spell


" Basic keywords {{{2
syntax match confComment "\v#.*$"
syntax region konfSection oneline start=/\v^\[/ skip=/\\\\\|\\"/ end=/\v\]$/ contains=konfSectionDelim,konfSectionTitle
syntax match konfSectionDelim /\]/ contained
syntax match konfSectionDelim /\[/ contained
syntax match konfSectionTitle /\%(\[\).*\%(\]\)/ contained
" syntax match konfSectionDelim "v^\[\%(\w\)*\]" contains=konfSectionDelim
" syntax match konfSectionTitle /\v^\[\zs\w*\ze\]/ containedin=konfSectionDelim

" syntax match confOperator "\v\*"
" syntax match confOperator "\v/"
" syntax match confOperator "\v\+"
" syntax match confOperator "\v-"
" syntax match confOperator "\v\?"
" syntax match confOperator "\v\*\="
" syntax match confOperator "\v/\="
" syntax match confOperator "\v\+\="
" syntax match confOperator "\v-\="


" Default highlighting {{{1
hi def link confComment Comment
" hi def link confDirective Comment
" hi def link konfSection Number
hi def link konfSectionTitle Identifier
hi def link konfSectionDelim String


" hi def link configdelimiter Delimiter
" hi def link configoperator Operator
" hi def link configDnl Comment
" hi def link configcomment Comment
" hi def link configfunction Function
" hi def link confignumber Number
" hi def link configkeyword Keyword
" hi def link configspecial Special
" hi def link configstring String

let b:current_syntax = "konf"
