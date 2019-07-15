" Copyright 2011 The Go Authors. All rights reserved.
" Use of this source code is governed by a BSD-style
" license that can be found in the LICENSE file.
"
" gotexttmpl.vim: Vim syntax file for Go templates.
"
" See Also: https://golang.org/pkg/text/template/#hdr-Actions
"

if exists("b:current_syntax")
  finish
endif

if !exists("g:main_syntax")
  let g:main_syntax = 'html'
endif

runtime! syntax/html.vim
unlet b:current_syntax

" syn case match

" Go escapes
syn match       goEscapeOctal       display contained "\\[0-7]\{3}"
syn match       goEscapeC           display contained +\\[abfnrtv\\'"]+
syn match       goEscapeX           display contained "\\x\x\{2}"
syn match       goEscapeU           display contained "\\u\x\{4}"
syn match       goEscapeBigU        display contained "\\U\x\{8}"
syn match       goEscapeError       display contained +\\[^0-7xuUabfnrtv\\'"]+

" Strings and their contents
syn cluster     goStringGroup       contains=goEscapeOctal,goEscapeC,goEscapeX,goEscapeU,goEscapeBigU,goEscapeError
syn region      goString            contained start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@goStringGroup
syn region      goRawString         contained start=+`+ end=+`+

" Characters; their contents
syn cluster     goCharacterGroup    contains=goEscapeOctal,goEscapeC,goEscapeX,goEscapeU,goEscapeBigU
syn region      goCharacter         contained start=+'+ skip=+\\\\\|\\'+ end=+'+ contains=@goCharacterGroup

" Integers
syn match       goDecimalInt        contained "\<\d\+\([Ee]\d\+\)\?\>"
syn match       goHexadecimalInt    contained "\<0x\x\+\>"
syn match       goOctalInt          contained "\<0\o\+\>"
syn match       goOctalError        contained "\<0\o*[89]\d*\>"
syn cluster     goInt               contains=goDecimalInt,goHexadecimalInt,goOctalInt

" Floating point
syn match       goFloat             contained "\<\d\+\.\d*\([Ee][-+]\d\+\)\?\>"
syn match       goFloat             contained "\<\.\d\+\([Ee][-+]\d\+\)\?\>"
syn match       goFloat             contained "\<\d\+[Ee][-+]\d\+\>"

" Imaginary literals
syn match       goImaginary         contained "\<\d\+i\>"
syn match       goImaginary         contained "\<\d\+\.\d*\([Ee][-+]\d\+\)\?i\>"
syn match       goImaginary         contained "\<\.\d\+\([Ee][-+]\d\+\)\?i\>"
syn match       goImaginary         contained "\<\d\+[Ee][-+]\d\+i\>"

" Token groups
syn cluster     goTmplLiteral     contains=goString,goRawString,goCharacter,@goInt,goFloat,goImaginary
syn keyword     goTmplControl     contained   if else end range with template define block
syn keyword     goTmplFunctions   contained   and html index js len not or print printf println urlquery eq ne lt le gt ge
syn match       goTmplVariable    contained   /\$[a-zA-Z0-9_]*/ containedin=goTmplAction
syn match       goTmplIdentifier  contained   /\.[^\s}]+\>/
syn match       goTmplVar         contained   "\." containedin=goTmplAction

" syn match       goTmplBrace       contained   "\({{\|}}\)"

syn region goTmplAction  start="{{" end="}}" contains=@goTmplLiteral,goTmplControl,goTmplFunctions,goTmplVariable,goTmplIdentifier,goTmplVar containedin=ALL
" syn region goTmplAction  start="\[\[" end="\]\]" contains=@goTmplLiteral,goTmplControl,goTmplFunctions,goTmplVariable
syn region goTmplComment start="{{\(- \)\?/\*" end="\*/\( -\)\?}}"
syn region goTmplComment start="\[\[\(- \)\?/\*" end="\*/\( -\)\?\]\]"


hi def link     goEscapeOctal       goSpecialString
hi def link     goEscapeC           goSpecialString
hi def link     goEscapeX           goSpecialString
hi def link     goEscapeU           goSpecialString
hi def link     goEscapeBigU        goSpecialString
hi def link     goSpecialString     Special
hi def link     goEscapeError       Error
hi def link     goString            String
hi def link     goRawString         String
hi def link     goCharacter         Character
hi def link     goInt               Number
hi def link     goFloat             Number
hi def link     goImaginary         Number
hi def link     goTmplControl       Keyword
hi def link     goTmplFunctions     Function
hi def link     goTmplVariable      Special
hi def link     goTmplVar           Identifier
hi def link     goTmplAction        PreProc
hi def link     goTmplComment       Comment


let b:current_syntax = "gohtml"

" vim: sw=2 ts=2 et
