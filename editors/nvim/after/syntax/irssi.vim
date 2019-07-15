" ==============================================================================
" Vim Syntax File
" Language:      ~/.irssi/config (close to perl)
" Maintainer:    Clay Dunston <dunstontc@gmail.com>
" Last Modified: 2018-01-16
" ==============================================================================

if exists('b:current_syntax')
  finish
endif

syntax case  ignore

syntax keyword irssiKeyword	servers	chatnets	channels	aliases	statusbar	prompt	topic	default	window

syntax match irssiComment	"\(^\|\s\)#.*$"
syntax match irssiSimiColon	";"
syntax match irssiOp		"="
syntax match irssiVar		"\$[a-zA-Z0-9]\+" contained

syntax match irssiNum		"\d"
syntax match irssiDelim		"{"	contained
syntax match irssiDelim		"}"	contained

syntax region irssiString	start=/"/	skip=+\\\\\|\\.+	end=/"/	contains=irssiVar,irssiTemplate,irssiDelim
" syntax region irssiTemplate	start=/{/	end=/}/	contains=irssiDelim


highlight default link irssiComment	Comment
highlight default link irssiString	String
highlight default link irssiTemplate	String
highlight default link irssiNum		Number
highlight default link irssiSimiColon	Comment
highlight default link irssiVar		Identifier
highlight default link irssiOp		Conditional
highlight default link irssiKeyword	Keyword

let b:current_syntax = 'irssi'

" vim:filetype=vim:foldmethod=marker:tabstop=8:shiftwidth=8:softtabstop=8:noexpandtab:
