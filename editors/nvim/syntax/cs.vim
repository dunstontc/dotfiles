" ==============================================================================
" Vim syntax file
" Language:	C#
" Maintainer:	OmniSharp & Anduin Withers <awithers@anduin.com>
" Former Maintainer:	Johannes Zellner <johannes@zellner.org>
" Last Change:	2018-01-16
" Filenames:	*.cs
" REFERENCES:
" [1] ECMA TC39: C# Language Specification (WD13Oct01.doc)
" Changes:
" - added csNoise
" - added csDocComment
" - added String Interpolation
" ==============================================================================


if exists("b:current_syntax")
    finish
endif

let s:cs_cpo_save = &cpo
set cpo&vim

" Fold Message Function {{{
func! SummaryFolds()
    let firstLine = getline(v:foldstart)
    if firstLine =~ "<summary>"
	let line = getline(v:foldstart + 1)
	let sub = substitute(line, '\s*\/\/\/ ', '', 'g')
	return "+--" . " Summary: " . sub
    elseif firstLine =~ "# region"
	let sub = substitute(firstLine, '\s*\# region ', '', 'g')
	return "+-- Region: " . sub
    else
	return "+-- " . firstLine
    endif
endfunc

augroup cs_folds
    autocmd!
    autocmd BufEnter *.cs setlocal foldtext=SummaryFolds()
augroup END
" }}}

" Operators: {{{
" syn match csOperAccess "[a-zA-Z_]\."
syn match csNamespaceAliasQualifier "::"
" +
" -
" *
" /
syn match csOperRemainder "%"
syn match csOperUnaryBinary "&"
syn match csOperOr "|"
syn match csOperExclusiveOr "\^"
syn match csOperBang "!"
" ~ (Also In Finalizers)
" syn match csOper "~"
" syn match csOper "="
" syn match csOper "<"
" syn match csOper ">"
syn match csOperConditional	"?:"
syn match csOperIncrement	"++"
syn match csOperDecrement	"--"
syn match csOperConditionalAnd	"&&"
syn match csOperConditionalOr	"||"
syn match csOperLeftShift	"<<"
syn match csOperRightShift	">>"
syn match csOperEquality	"=="
syn match csOperInequality	"!="
syn match csOperLessOrEqual	"<="
syn match csOperGreaterOrEqual	">="
syn match csAssignAddition	"+="
syn match csAssignSubtraction	"-="
syn match csAssignBinaryMultiply "*="
syn match csAssignDivision	"\/="
syn match csAssignRemainder	"%="
syn match csAssignAnd		"&="
syn match csAssignOr		"|="
syn match csAssignExclusiveOr	"\^="
syn match csAssignLeftShift	"<<="
syn match csAssignRightShift	">>="
syn match csOperDereferencing	"->"
syn match csOperNullCoalescing	"??"
syn match csOperLambda		"=>"

syn cluster csOperatorGroup	contains=csOperLambda,csOperNullCoalescing,csOperDereferencing,csAssignRightShift,csAssignLeftShift,csAssignExclusiveOr,csAssignOr,csAssignAnd,csAssignRemainder,csAssignDivision,csAssignBinaryMultiply,csAssignSubtraction,csAssignAddition,csOperGreaterOrEqual,csOperLessOrEqual,csOperInequality,csOperEquality,csOperRightShift,csOperLeftShift,csOperConditionalOr,csOperConditionalAnd,csOperDecrement,csOperIncrement,csOperConditional,csOperBang,csOperExclusiveOr,csOperOr,csOperUnaryBinary,csOperRemainder


syn match csOperator	"&&"
syn match csOperator	"||"
syn match csOperator	"=="
syn match csOperator	"++"
syn match csOperator	"--"
syn match csOperator	"\(\S\)\@<=\."
syn match csOperator	"\v\s(-|*|\=|\+|\<|\>)\="
syn match csOperator	"\v\s(-|*|\=|\+|\%|\?|\/|\<|\>)\s"
syn match csOperator	+::+
" }}}

" Keywords: {{{

" Type:
syn keyword csType			bool byte char decimal double float int long object sbyte short string T uint ulong ushort var void dynamic

" Storage:
syn keyword csStorage			delegate enum interface namespace struct var
syn keyword csStorage			public private

syn keyword csRepeat			break continue do for foreach goto return while in
syn keyword csConditional		else if switch
syn keyword csLabel			case default
syn keyword csUsing			using

" user labels (see [1] 8.6 Statements)
" syn match   csLabel			display +^\s*\I\i*\s*:\([^:]\)\@=+

" syn keyword csModifier			abstract const extern internal override private protected public readonly sealed static virtual volatile
syn keyword csModifier			abstract const extern internal override protected readonly sealed static virtual volatile

syn keyword csConstant			false null true

syn keyword csException			try catch finally throw when


" TODO:
syn keyword csUnspecifiedStatement	as base checked event fixed get in is lock nameof operator out params ref set sizeof stackalloc this typeof unchecked unsafe

syn keyword csLinqKeyword               ascending by descending equals from group in into join let on orderby select where
" TODO:
syn keyword csUnsupportedStatement	add remove value
" TODO:
syn keyword csUnspecifiedKeyword	explicit implicit

syn keyword csAsyncKeyword		async await

" Contextual Keywords (Flow Control) {{{
syn match csContextualStatement	/\<yield[[:space:]\n]\+\(return\|break\)/me=s+5
syn match csContextualStatement	/\<partial[[:space:]\n]\+\(class\|struct\|interface\)/me=s+7
syn match csContextualStatement	/\<\(get\|set\)[[:space:]\n]*{/me=s+3
syn match csContextualStatement	/\<where\>[^:]\+:/me=s+5
" }}}
" }}}

" Comments {{{
"
" PROVIDES: @csCommentHook
"
" TODO: include strings ?
"
syn keyword csTodo		contained TODO FIXME XXX NOTE HACK
syn region  csDocComment	start="/\*"  end="\*/" contains=@csCommentHook,csTodo,@Spell
syn match   csComment		"//.*$" contains=@csCommentHook,csTodo,@Spell
" }}}

" xml markup inside '///' comments " {{{
syn cluster xmlRegionHook	add=csXmlCommentLeader
syn cluster xmlCdataHook	add=csXmlCommentLeader
syn cluster xmlStartTagHook	add=csXmlCommentLeader
syn keyword csXmlTag		contained Libraries Packages Types Excluded ExcludedTypeName ExcludedLibraryName
syn keyword csXmlTag		contained ExcludedBucketName TypeExcluded Type TypeKind TypeSignature AssemblyInfo
syn keyword csXmlTag		contained AssemblyName AssemblyPublicKey AssemblyVersion AssemblyCulture Base
syn keyword csXmlTag		contained BaseTypeName Interfaces Interface InterfaceName Attributes Attribute
syn keyword csXmlTag		contained AttributeName Members Member MemberSignature MemberType MemberValue
syn keyword csXmlTag		contained ReturnValue ReturnType Parameters Parameter MemberOfPackage
syn keyword csXmlTag		contained ThreadingSafetyStatement Docs devdoc example overload remarks returns summary
syn keyword csXmlTag		contained threadsafe value internalonly nodoc exception param permission platnote
syn keyword csXmlTag		contained seealso b c i pre sub sup block code note paramref see subscript superscript
syn keyword csXmlTag		contained list listheader item term description altcompliant altmember

syn cluster xmlTagHook add=csXmlTag

syn match   csXmlCommentLeader	+\/\/\/+    contained
syn match   csXmlComment	+\/\/\/.*$+ contains=csXmlCommentLeader,@csXml,@Spell
syntax include @csXml syntax/xml.vim
hi def link xmlRegion Comment
" }}}

" [1] 9.5 Pre-processing Directives: {{{
syn region	csPreCondit
    \ start="^\s*#\s*\(define\|undef\|if\|elif\|else\|endif\|line\|error\|warning\)"
    \ skip="\\$" end="$" contains=csComment keepend
syn region csRegion matchgroup=csPreCondit start="^\s*#\s*region.*$"
    \ end="^\s*#\s*endregion" transparent fold contains=TOP
syn region csSummary start="^\s*/// <summary" end="^\(\s*///\)\@!" transparent fold keepend
" }}}

" Type: {{{
syn region csClassType start="\(@\)\@<!class\>"hs=s+6 end="[:\n{]"he=e-1 contains=csClass
syn region csNewType start="\(@\)\@<!new\>"hs=s+4 end="[\(\<{\[]"he=e-1 contains=csNew contains=csNewType,csParen
syn region csIsType start="\v (is|as) "hs=s+4 end="\v[A-Za-z0-9]+" oneline contains=csIsAs
syn keyword csNew new contained
syn keyword csClass class contained
syn keyword csIsAs is as
" }}}

" Constants: {{{
syn match   csSpecialError	contained "\\."
syn match   csSpecialCharError	contained "[^']"
" [1] 9.4.4.4 Character Literals:
syn match   csSpecialChar	contained +\\["\\'0abfnrtvx]+
" Unicode Characters:
syn match   csUnicodeNumber	+\\\(u\x\{4}\|U\x\{8}\)+ contained contains=csUnicodeSpecifier
syn match   csUnicodeSpecifier	+\\[uU]+ contained
syn match   csCharacter		"'[^']*'" contains=csSpecialChar,csSpecialCharError
syn match   csCharacter		"'\\''" contains=csSpecialChar
syn match   csCharacter		"'[^\\]'"
syn match   csNumber		"\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match   csNumber		"\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match   csNumber		"\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match   csNumber		"\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"
" }}}

" Strings: {{{
syn region  csString		start=+"+  end=+"+ end=+$+ contains=csSpecialChar,csSpecialError,csUnicodeNumber,csInterpolation,@Spell

syn region  csVerbatimString	start=+@"+ end=+"+ skip=+""+ contains=csVerbatimSpec,@Spell
syn match   csVerbatimSpec	+@"+he=s+1 contained

syn region  csInterpolationString	start=+\$"+ end=+"+ 	contains=csInterpolation,csInterpolationDelim keepend oneline
syn match   csInterpolation		contained /\(\$".\+\)\@<={.*}/	containedin=csInterpolationString
syn match   csInterpolationBracket	contained "\({\|}\)"	containedin=csInterpolation
syn match   csInterpolationDelim	contained /"/		containedin=csInterpolationString
syn match   csInterpolationDelim	contained /\$\%(".\+"\)\@=/	containedin=csInterpolationString

" }}}

" TCD: {{{
syn match   csNoise		";"
syn match   csNoise		","
syn match   csParen		contained "\((\|)\)"
syn match   csSquare		"\(\[\|\]\)"
syn match   csCurly		"\({\|}\)"
syn cluster csPunctuation	contains=csNoise,csParen,csSquare,csCurly

syn match   csNamespace		"\(namespace\s\)\@<=\(\w\+\)"
syn match   csMethod		"\(\w\+\)\(()\)\@="
syn match   csMethodCall	"\(\s\|\.\)\@<=\([a-zA-Z_]\+\)\((.\{})\)\@="
syn keyword csGetSet		get set

syn match   csAngleBracket	"\(<\|>\)"
syn match   csInterfaceDeclaration "<\w\+>" containedin=ALL contains=csAngleBracket

" syn match  csParams	"\%((\).\+)"	 contains=ALLBUT,csSpecialCharError
syn match  csParams	"\(var\s\)\@<=\w\+"
" }}}

" The default highlighting {{{
hi def link csType			Type
hi def link csNamespace			Type
hi def link csNewType			Type
hi def link csClassType			Type
hi def link csIsType			Type
hi def link csStorage			StorageClass
hi def link csClass			StorageClass
hi def link csRepeat			Repeat
hi def link csConditional		Conditional
hi def link csLabel			Label
hi def link csUsing			Label
hi def link csModifier			StorageClass
hi def link csConstant			Constant
hi def link csException			Exception
hi def link csUnspecifiedStatement	Statement
hi def link csNew			Statement

hi def link csMethod			Function
hi def link csMethodCall		Function
hi def link csGetSet			Function

hi def link csParen			Delimiter
hi def link csOperatorGroup		Normal

hi def link csLinqWords			Statement
hi def link csUnsupportedStatement	Statement
hi def link csUnspecifiedKeyword	Keyword
hi def link csIsAs 			Keyword
hi def link csAsyncKeyword              Keyword
hi def link csContextualStatement	Statement
hi def link csOperatorError		Error
hi def link csInterfaceDeclaration      Type
hi def link csParams			Identifier

hi def link csTodo			Todo
hi def link csComment			Comment
hi def link csComment			SpecialComment

hi def link csSpecialError		Error
hi def link csSpecialCharError		Error
hi def link csString			String
" hi def link csInterpString		Constant
hi def link csInterpolationString	String
hi def link csInterplotionDelim		Constant
hi def link csInterpolationBracket	csInterplotionDelim
hi def link csInterplotion		Identifier
hi def link csVerbatimString		String
hi def link csVerbatimSpec		SpecialChar
hi def link csPreCondit			PreCondit
hi def link csCharacter			Character
hi def link csSpecialChar		SpecialChar
hi def link csNumber			Number
hi def link csUnicodeNumber		SpecialChar
hi def link csUnicodeSpecifier		SpecialChar

" xml markup
hi def link csXmlCommentLeader		Comment
hi def link csXmlComment		Comment
hi def link csXmlTag			Statement
" }}}

let b:current_syntax = 'cs'

let &cpo = s:cs_cpo_save
unlet s:cs_cpo_save

" vim:filetype=vim:foldmethod=marker:tabstop=8:noexpandtab:
