" ==============================================================================
" Vim syntax file
" Language:     Markdown
" Maintainer:   Clay Dunston <dunstontc@gmail.com>
" Filenames:    *.md
" Last Change:  2018-01-17
" Thanks:   Tim Pope <vimNOSPAM@tpope.org> (vim-markdown, VIM License)
" Thanks:   Ben Williams <benw@plasticboy.com> (BenWilliams, MIT License)
" ==============================================================================

" if exists("b:current_syntax")
"   finish
" endif

" if !exists('main_syntax')
"   let main_syntax = 'markdown'
" endif

runtime! syntax/html.vim
" unlet! b:current_syntax

syn match markdownListMarker	/^\s*\%([-*+]\|\d\+\.\)\ze\s\+/
syn match markdownLineBreak	" \{2,\}$"
syn region markdownStrike	start="\%(\~\~\)"	end="\%(\~\~\)"

syn cluster markdownMarkup	contains=markdownBold,markdownItalic,markdownStrike,markdownCode

syn region markdownBlockquote   start=/^\s*>/                   end=/$/ contains=@Spell

" hi def markdownStrike		term=strikethrough cterm=strikethrough gui=strikethrough
" hi def markdownStrike		term=underline cterm=underline gui=underline

" syn region markdownItalic	matchgroup=markdownItalic start="\%(\*\|_\)"    end="\%(\*\|_\)"
" syn region markdownBold		matchgroup=markdownBold start="\%(\*\*\|__\)"    end="\%(\*\*\|__\)"
" syn region markdownBoldItalic	matchgroup=markdownBoldItalic start="\%(\*\*\*\|___\)"    end="\%(\*\*\*\|___\)"


highlight default link markdownStrike		Comment
highlight default link markdownBlockquote	Comment
highlight default link markdownItalic		htmlItalic
highlight default link markdownBold		htmlBold
" highlight default link markdownBoldItalic

let b:current_syntax = "markdown"


" ==============================================================================
" " tpope/markdown {{{1

" " Fenced Languages: {{{2
" if !exists('g:markdown_fenced_languages')
"   let g:markdown_fenced_languages = []
" endif
" let s:done_include = {}
" for s:type in map(copy(g:markdown_fenced_languages),'matchstr(v:val,"[^=]*$")')
"   if has_key(s:done_include, matchstr(s:type,'[^.]*'))
"     continue
"   endif
"   if s:type =~ '\.'
"     let b:{matchstr(s:type,'[^.]*')}_subtype = matchstr(s:type,'\.\zs.*')
"   endif
"   exe 'syn include @markdownHighlight'.substitute(s:type,'\.','','g').' syntax/'.matchstr(s:type,'[^.]*').'.vim'
"   unlet! b:current_syntax
"   let s:done_include[matchstr(s:type,'[^.]*')] = 1
" endfor
" unlet! s:type
" unlet! s:done_include
" " }}}

" General: {{{
" if !exists('g:markdown_minlines')
"   let g:markdown_minlines = 50
" endif
" execute 'syn sync minlines=' . g:markdown_minlines
"
" syn case ignore
"
" syn match markdownValid '[<>]\c[a-z/$!]\@!'
" syn match markdownValid '&\%(#\=\w*;\)\@!'
"
" syn match markdownLineStart "^[<@]\@!" nextgroup=@markdownBlock,htmlSpecialChar
"
" syn cluster markdownBlock contains=markdownH1,markdownH2,markdownH3,markdownH4,markdownH5,markdownH6,markdownBlockquote,markdownListMarker,markdownOrderedListMarker,markdownCodeBlock,markdownRule
" syn cluster markdownInline contains=markdownLineBreak,markdownLinkText,markdownItalic,markdownBold,markdownCode,markdownEscape,@htmlTop,markdownError
"
" syn match markdownH1 "^.\+\n=\+$" contained contains=@markdownInline,markdownHeadingRule,markdownAutomaticLink
" syn match markdownH2 "^.\+\n-\+$" contained contains=@markdownInline,markdownHeadingRule,markdownAutomaticLink
"
" syn match markdownHeadingRule "^[=-]\+$" contained
"
" syn region markdownH1 matchgroup=markdownH1Delimiter start="##\@!"      end="#*\s*$" keepend oneline contains=@markdownInline,markdownAutomaticLink contained
" syn region markdownH2 matchgroup=markdownH2Delimiter start="###\@!"     end="#*\s*$" keepend oneline contains=@markdownInline,markdownAutomaticLink contained
" syn region markdownH3 matchgroup=markdownH3Delimiter start="####\@!"    end="#*\s*$" keepend oneline contains=@markdownInline,markdownAutomaticLink contained
" syn region markdownH4 matchgroup=markdownH4Delimiter start="#####\@!"   end="#*\s*$" keepend oneline contains=@markdownInline,markdownAutomaticLink contained
" syn region markdownH5 matchgroup=markdownH5Delimiter start="######\@!"  end="#*\s*$" keepend oneline contains=@markdownInline,markdownAutomaticLink contained
" syn region markdownH6 matchgroup=markdownH6Delimiter start="#######\@!" end="#*\s*$" keepend oneline contains=@markdownInline,markdownAutomaticLink contained
"
" syn match markdownBlockquote ">\%(\s\|$\)" contained nextgroup=@markdownBlock
"
" syn region markdownCodeBlock start="    \|\t" end="$" contained
"
" " TODO: real nesting
" syn match markdownListMarker "\%(\t\| \{0,4\}\)[-*+]\%(\s\+\S\)\@=" contained
" syn match markdownOrderedListMarker "\%(\t\| \{0,4}\)\<\d\+\.\%(\s\+\S\)\@=" contained
"
" syn match markdownRule "\* *\* *\*[ *]*$" contained
" syn match markdownRule "- *- *-[ -]*$" contained
"
" syn match markdownLineBreak " \{2,\}$"
"
" syn region markdownIdDeclaration matchgroup=markdownLinkDelimiter start="^ \{0,3\}!\=\[" end="\]:" oneline keepend nextgroup=markdownUrl skipwhite
" syn match markdownUrl "\S\+" nextgroup=markdownUrlTitle skipwhite contained
" syn region markdownUrl matchgroup=markdownUrlDelimiter start="<" end=">" oneline keepend nextgroup=markdownUrlTitle skipwhite contained
" syn region markdownUrlTitle matchgroup=markdownUrlTitleDelimiter start=+"+ end=+"+ keepend contained
" syn region markdownUrlTitle matchgroup=markdownUrlTitleDelimiter start=+'+ end=+'+ keepend contained
" syn region markdownUrlTitle matchgroup=markdownUrlTitleDelimiter start=+(+ end=+)+ keepend contained
"
" syn region markdownLinkText matchgroup=markdownLinkTextDelimiter start="!\=\[\%(\_[^]]*]\%( \=[[(]\)\)\@=" end="\]\%( \=[[(]\)\@=" nextgroup=markdownLink,markdownId skipwhite contains=@markdownInline,markdownLineStart
" syn region markdownLink matchgroup=markdownLinkDelimiter start="(" end=")" contains=markdownUrl keepend contained
" syn region markdownId matchgroup=markdownIdDelimiter start="\[" end="\]" keepend contained
" syn region markdownAutomaticLink matchgroup=markdownUrlDelimiter start="<\%(\w\+:\|[[:alnum:]_+-]\+@\)\@=" end=">" keepend oneline
"
" syn region markdownCode matchgroup=markdownCodeDelimiter start="`" end="`" keepend contains=markdownLineStart
" syn region markdownCode matchgroup=markdownCodeDelimiter start="`` \=" end=" \=``" keepend contains=markdownLineStart
" syn region markdownCode matchgroup=markdownCodeDelimiter start="^\s*````*.*$" end="^\s*````*\ze\s*$" keepend
"
" syn match markdownFootnote "\[^[^\]]\+\]"
" syn match markdownFootnoteDefinition "^\[^[^\]]\+\]:"
"
" syn match markdownEscape "\\[][\\`*_{}()<>#+.!-]"
" syn match markdownError "\w\@<=_\w\@="
" }}}

" " Conceal: {{{2
" let s:concealends = ''
" if has('conceal') && get(g:, 'markdown_syntax_conceal', 1) == 1
"   let s:concealends = ' concealends'
" endif
" exe 'syn region markdownItalic matchgroup=markdownItalicDelimiter start="\S\@<=\*\|\*\S\@=" end="\S\@<=\*\|\*\S\@=" keepend contains=markdownLineStart,@Spell' . s:concealends
" exe 'syn region markdownItalic matchgroup=markdownItalicDelimiter start="\S\@<=_\|_\S\@=" end="\S\@<=_\|_\S\@=" keepend contains=markdownLineStart,@Spell' . s:concealends
" exe 'syn region markdownBold matchgroup=markdownBoldDelimiter start="\S\@<=\*\*\|\*\*\S\@=" end="\S\@<=\*\*\|\*\*\S\@=" keepend contains=markdownLineStart,markdownItalic,@Spell' . s:concealends
" exe 'syn region markdownBold matchgroup=markdownBoldDelimiter start="\S\@<=__\|__\S\@=" end="\S\@<=__\|__\S\@=" keepend contains=markdownLineStart,markdownItalic,@Spell' . s:concealends
" exe 'syn region markdownBoldItalic matchgroup=markdownBoldItalicDelimiter start="\S\@<=\*\*\*\|\*\*\*\S\@=" end="\S\@<=\*\*\*\|\*\*\*\S\@=" keepend contains=markdownLineStart,@Spell' . s:concealends
" exe 'syn region markdownBoldItalic matchgroup=markdownBoldItalicDelimiter start="\S\@<=___\|___\S\@=" end="\S\@<=___\|___\S\@=" keepend contains=markdownLineStart,@Spell' . s:concealends
"
" if main_syntax ==# 'markdown'
"   let s:done_include = {}
"   for s:type in g:markdown_fenced_languages
"     if has_key(s:done_include, matchstr(s:type,'[^.]*'))
"       continue
"     endif
"     exe 'syn region markdownHighlight'.substitute(matchstr(s:type,'[^=]*$'),'\..*','','').' matchgroup=markdownCodeDelimiter start="^\s*````*\s*'.matchstr(s:type,'[^=]*').'\S\@!.*$" end="^\s*````*\ze\s*$" keepend contains=@markdownHighlight'.substitute(matchstr(s:type,'[^=]*$'),'\.','','g')
"     let s:done_include[matchstr(s:type,'[^.]*')] = 1
"   endfor
"   unlet! s:type
"   unlet! s:done_include
" endif
" " }}}

" " Link Definitions: {{{2
" hi def link markdownH1                    htmlH1
" hi def link markdownH2                    htmlH2
" hi def link markdownH3                    htmlH3
" hi def link markdownH4                    htmlH4
" hi def link markdownH5                    htmlH5
" hi def link markdownH6                    htmlH6
" hi def link markdownHeadingRule           markdownRule
" hi def link markdownH1Delimiter           markdownHeadingDelimiter
" hi def link markdownH2Delimiter           markdownHeadingDelimiter
" hi def link markdownH3Delimiter           markdownHeadingDelimiter
" hi def link markdownH4Delimiter           markdownHeadingDelimiter
" hi def link markdownH5Delimiter           markdownHeadingDelimiter
" hi def link markdownH6Delimiter           markdownHeadingDelimiter
" hi def link markdownHeadingDelimiter      Delimiter
" hi def link markdownOrderedListMarker     markdownListMarker
" hi def link markdownListMarker            htmlTagName
" hi def link markdownBlockquote            Comment
" hi def link markdownRule                  PreProc
"
" hi def link markdownFootnote              Typedef
" hi def link markdownFootnoteDefinition    Typedef
"
" hi def link markdownLinkText              htmlLink
" hi def link markdownIdDeclaration         Typedef
" hi def link markdownId                    Type
" hi def link markdownAutomaticLink         markdownUrl
" hi def link markdownUrl                   Float
" hi def link markdownUrlTitle              String
" hi def link markdownIdDelimiter           markdownLinkDelimiter
" hi def link markdownUrlDelimiter          htmlTag
" hi def link markdownUrlTitleDelimiter     Delimiter
"
" hi def link markdownItalic                htmlItalic
" hi def link markdownItalicDelimiter       markdownItalic
" hi def link markdownBold                  htmlBold
" hi def link markdownBoldDelimiter         markdownBold
" hi def link markdownBoldItalic            htmlBoldItalic
" hi def link markdownBoldItalicDelimiter   markdownBoldItalic
" hi def link markdownCodeDelimiter         Delimiter
"
" hi def link markdownEscape                Special
" hi def link markdownError                 Error
" " }}}
"

" if main_syntax ==# 'markdown'
"   unlet main_syntax
" endif
"
" " vim:set sw=2:
" " }}}

" ==============================================================================
" === plasticboy/vim-markdown {{{
" let s:conceal = ''
" let s:concealends = ''
" if has('conceal') && get(g:, 'vim_markdown_conceal', 1)
"   let s:conceal = ' conceal'
"   let s:concealends = ' concealends'
" endif
"
" " additions to HTML groups {{{
"
" if get(g:, 'vim_markdown_emphasis_multiline', 1)
"     let s:oneline = ''
" else
"     let s:oneline = ' oneline'
" endif
" syn region mkdItalic matchgroup=mkdItalic start="\%(\*\|_\)"    end="\%(\*\|_\)"
" syn region mkdBold matchgroup=mkdBold start="\%(\*\*\|__\)"    end="\%(\*\*\|__\)"
" syn region mkdBoldItalic matchgroup=mkdBoldItalic start="\%(\*\*\*\|___\)"    end="\%(\*\*\*\|___\)"
" execute 'syn region htmlItalic matchgroup=mkdItalic start="\%(^\|\s\)\zs\*\ze[^\\\*\t ]\%(\%([^*]\|\\\*\|\n\)*[^\\\*\t ]\)\?\*\_W" end="[^\\\*\t ]\zs\*\ze\_W" keepend contains=@Spell' . s:oneline . s:concealends
" execute 'syn region htmlItalic matchgroup=mkdItalic start="\%(^\|\s\)\zs_\ze[^\\_\t ]" end="[^\\_\t ]\zs_\ze\_W" keepend contains=@Spell' . s:oneline . s:concealends
" execute 'syn region htmlBold matchgroup=mkdBold start="\%(^\|\s\)\zs\*\*\ze\S" end="\S\zs\*\*" keepend contains=@Spell' . s:oneline . s:concealends
" execute 'syn region htmlBold matchgroup=mkdBold start="\%(^\|\s\)\zs__\ze\S" end="\S\zs__" keepend contains=@Spell' . s:oneline . s:concealends
" execute 'syn region htmlBoldItalic matchgroup=mkdBoldItalic start="\%(^\|\s\)\zs\*\*\*\ze\S" end="\S\zs\*\*\*" keepend contains=@Spell' . s:oneline . s:concealends
" execute 'syn region htmlBoldItalic matchgroup=mkdBoldItalic start="\%(^\|\s\)\zs___\ze\S" end="\S\zs___" keepend contains=@Spell' . s:oneline . s:concealends
" " }}}
"
" " URLs: {{{
" " [link](URL) | [link][id] | [link][] | ![image](URL)
" syn region mkdFootnotes matchgroup=mkdDelimiter start="\[^"    end="\]"
" execute 'syn region mkdID matchgroup=mkdDelimiter    start="\["    end="\]" contained oneline' . s:conceal
" execute 'syn region mkdURL matchgroup=mkdDelimiter   start="("     end=")"  contained oneline' . s:conceal
" execute 'syn region mkdLink matchgroup=mkdDelimiter  start="\\\@<!!\?\[\ze[^]\n]*\n\?[^]\n]*\][[(]" end="\]" contains=@mkdNonListItem,@Spell nextgroup=mkdURL,mkdID skipwhite' . s:concealends
"
" " Autolink without angle brackets.
" " mkd  inline links:      protocol     optional  user:pass@  sub/domain                    .com, .co.uk, etc         optional port   path/querystring/hash fragment
" "                         ------------ _____________________ ----------------------------- _________________________ ----------------- __
" syn match   mkdInlineURL /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z0-9][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/
"
" " Autolink with parenthesis.
" syn region  mkdInlineURL matchgroup=mkdDelimiter start="(\(https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z0-9][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*)\)\@=" end=")"
"
" " Autolink with angle brackets.
" syn region mkdInlineURL matchgroup=mkdDelimiter start="\\\@<!<\ze[a-z][a-z0-9,.-]\{1,22}:\/\/[^> ]*>" end=">"
" " }}}
"
" " Link definitions: [id]: URL (Optional Title) {{{
" syn region mkdLinkDef matchgroup=mkdDelimiter   start="^ \{,3}\zs\[\^\@!" end="]:" oneline nextgroup=mkdLinkDefTarget skipwhite
" syn region mkdLinkDefTarget start="<\?\zs\S" excludenl end="\ze[>[:space:]\n]"   contained nextgroup=mkdLinkTitle,mkdLinkDef skipwhite skipnl oneline
" syn region mkdLinkTitle matchgroup=mkdDelimiter start=+"+     end=+"+  contained
" syn region mkdLinkTitle matchgroup=mkdDelimiter start=+'+     end=+'+  contained
" syn region mkdLinkTitle matchgroup=mkdDelimiter start=+(+     end=+)+  contained
" " }}}
"
" "define Markdown groups {{{
" syn match  mkdLineBreak    /  \+$/
" syn region mkdBlockquote   start=/^\s*>/                   end=/$/ contains=mkdLink,mkdInlineURL,mkdLineBreak,@Spell
" syn region mkdCode         start=/\(\([^\\]\|^\)\\\)\@<!`/ end=/\(\([^\\]\|^\)\\\)\@<!`/
" syn region mkdCode         start=/\s*``[^`]*/              end=/[^`]*``\s*/
" syn region mkdCode         start=/^\s*\z(`\{3,}\)[^`]*$/   end=/^\s*\z1`*\s*$/
" syn region mkdCode         start=/\s*\~\~[^\~]*/           end=/[^\~]*\~\~\s*/
" syn region mkdCode         start=/^\s*\z(\~\{3,}\)\s*[0-9A-Za-z_+-]*\s*$/         end=/^\s*\z1\~*\s*$/
" syn region mkdCode         start="<pre[^>]*\\\@<!>"        end="</pre>"
" syn region mkdCode         start="<code[^>]*\\\@<!>"       end="</code>"
" syn region mkdFootnote     start="\[^"                     end="\]"
" syn match  mkdCode         /^\s*\n\(\(\s\{8,}[^ ]\|\t\t\+[^\t]\).*\n\)\+/
" syn match  mkdCode         /\%^\(\(\s\{4,}[^ ]\|\t\+[^\t]\).*\n\)\+/
" syn match  mkdCode         /^\s*\n\(\(\s\{4,}[^ ]\|\t\+[^\t]\).*\n\)\+/ contained
" syn match  mkdListItem     /^\s*\%([-*+]\|\d\+\.\)\ze\s\+/ contained
" syn region mkdListItemLine start="^\s*\%([-*+]\|\d\+\.\)\s\+" end="$" oneline contains=@mkdNonListItem,mkdListItem,@Spell
" syn region mkdNonListItemBlock start="\(\%^\(\s*\([-*+]\|\d\+\.\)\s\+\)\@!\|\n\(\_^\_$\|\s\{4,}[^ ]\|\t+[^\t]\)\@!\)" end="^\(\s*\([-*+]\|\d\+\.\)\s\+\)\@=" contains=@mkdNonListItem,@Spell
" syn match  mkdRule         /^\s*\*\s\{0,1}\*\s\{0,1}\*\(\*\|\s\)*$/
" syn match  mkdRule         /^\s*-\s\{0,1}-\s\{0,1}-\(-\|\s\)*$/
" syn match  mkdRule         /^\s*_\s\{0,1}_\s\{0,1}_\(_\|\s\)*$/
" " }}}
"
" " Frontmatter: {{{
" if get(g:, 'vim_markdown_frontmatter', 0)
"   syn include @yamlTop syntax/yaml.vim
"   syn region Comment matchgroup=mkdDelimiter start="\%^---$" end="^---$" contains=@yamlTop keepend
"   unlet! b:current_syntax
" endif
"
" if get(g:, 'vim_markdown_toml_frontmatter', 0)
"   try
"     syn include @tomlTop syntax/toml.vim
"     syn region Comment matchgroup=mkdDelimiter start="\%^+++$" end="^+++$" transparent contains=@tomlTop keepend
"     unlet! b:current_syntax
"   catch /E484/
"     syn region Comment matchgroup=mkdDelimiter start="\%^+++$" end="^+++$"
"   endtry
" endif
"
" if get(g:, 'vim_markdown_json_frontmatter', 0)
"   try
"     syn include @jsonTop syntax/json.vim
"     syn region Comment matchgroup=mkdDelimiter start="\%^{$" end="^}$" contains=@jsonTop keepend
"     unlet! b:current_syntax
"   catch /E484/
"     syn region Comment matchgroup=mkdDelimiter start="\%^{$" end="^}$"
"   endtry
" endif
" " }}}
"
" " if get(g:, 'vim_markdown_math', 0)
" "   syn include @tex syntax/tex.vim
" "   syn region mkdMath start="\\\@<!\$" end="\$" skip="\\\$" contains=@tex keepend
" "   syn region mkdMath start="\\\@<!\$\$" end="\$\$" skip="\\\$" contains=@tex keepend
" " endif
"
" syn cluster mkdNonListItem contains=@htmlTop,htmlItalic,htmlBold,htmlBoldItalic,mkdFootnotes,mkdInlineURL,mkdLink,mkdLinkDef,mkdLineBreak,mkdBlockquote,mkdCode,mkdRule,htmlH1,htmlH2,htmlH3,htmlH4,htmlH5,htmlH6,mkdMath
"
" "highlighting for Markdown groups
" HtmlHiLink mkdString        String
" HtmlHiLink mkdCode          String
" HtmlHiLink mkdCodeStart     String
" HtmlHiLink mkdCodeEnd       String
" HtmlHiLink mkdFootnote      Comment
" HtmlHiLink mkdBlockquote    Comment
" HtmlHiLink mkdListItem      Identifier
" HtmlHiLink mkdRule          Identifier
" HtmlHiLink mkdLineBreak     Visual
" HtmlHiLink mkdFootnotes     htmlLink
" HtmlHiLink mkdLink          htmlLink
" HtmlHiLink mkdURL           htmlString
" HtmlHiLink mkdInlineURL     htmlLink
" HtmlHiLink mkdID            Identifier
" HtmlHiLink mkdLinkDef       mkdID
" HtmlHiLink mkdLinkDefTarget mkdURL
" HtmlHiLink mkdLinkTitle     htmlString
" HtmlHiLink mkdDelimiter     Delimiter
"
"
" delcommand HtmlHiLink
" " vim: ts=8
" }}}
