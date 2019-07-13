" ============================================================================
" Vim syntax file
" Language:	generic configure file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2018-02-23
" ============================================================================
" https://git-scm.com/docs/gitignore

" Quit when a (custom) syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

syn keyword	confTodo	contained TODO FIXME XXX
syn match	confComment	"^#.*" contains=confTodo
syn match	confComment	"\s#.*"ms=s+1 contains=confTodo
syn region	confString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region	confString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline

" syn region	confAny		start="\[" skip="\\\\\|\\]" end="\]" oneline contains=confBracket
syn region	confAny		start="\[" end="]" oneline contains=confBracket

" syn match	confPunctuation	contained "\["
" syn match	confPunctuation	"\]"
syn match	confPunctuation	"[\.\/]"

" syn match	confWildcard	"\*\*"
syn match	confWildcard	"\*"
syn match	confBang	"!"

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link confComment		Comment
hi def link confTodo		Todo
hi def link confString		String
hi def link confPunctuation	Boolean
hi def link confAny		String
hi def link confWildcard	Conditional
hi def link confBang		Conditional

let b:current_syntax = 'conf'

" vim: ts=8 sw=2
