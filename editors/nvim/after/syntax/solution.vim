" ==============================================================================
"  Vim syntax file
"  FILE: solution.vim
"  AUTHOR: Clay Dunston <dunstontc@gmail.com>
"  License: MIT license
"  Last Modified: 2018-01-18
" ==============================================================================

" Quit when a (custom) syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

syn case match

syn match slnHeader		"Microsoft Visual Studio Solution File, Format Version \d\+\.\d\+"
syn match slnHeader		"^# Visual Studio \d\+"
syn match slnHeader		"\(MinimumVisualStudioVersion\|VisualStudioVersion\).*"

syn match slnNum		"\d"
syn match slnOper		"[=|]"
syn keyword slnBool		TRUE	FALSE

syn match slnParen		"\%((\)\@<=\(\w\+\)\%()\)\@="
" syn region slnParen		start="\%((\)"	end="\%()\)"
syn region slnCurly		start="{"	end="}"
syn region slnString		start=/"/	end=/"/

syn keyword slnProject		Project	EndProject
syn keyword slnGlobal		Global	EndGlobal
syn keyword slnGlobalSection	GlobalSection	EndGlobalSection
syn keyword slnPreSolution	preSolution
syn keyword slnPostSolution	postSolution

hi def link slnHeader		Comment
hi def link slnOper		Conditional
hi def link slnBool		Boolean
hi def link slnNum		Number
hi def link slnCurly		Comment
hi def link slnParen		Identifier
hi def link slnString		String
hi def link slnProject		Constant
hi def link slnGlobal		Constant
hi def link slnGlobalSection	Conditional
hi def link slnPreSolution	Type
hi def link slnPostSolution	Type

let b:current_syntax = 'solution'

" vim:sw=8:ts=8:noexpandtab
