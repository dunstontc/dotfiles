" " Vim color file
" " darktooth
"
" " Created by Jason Milkins (https://github.com/emacsfodder/emacs-theme-darktooth)
" " The MIT License (MIT)
" "
" " Copyright (c) 2015 Jason Milkins
" "
" " Permission is hereby granted, free of charge, to any person obtaining a copy of
" " this software and associated documentation files (the "Software"), to deal in
" " the Software without restriction, including without limitation the rights to
" " use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
" " the Software, and to permit persons to whom the Software is furnished to do so,
" " subject to the following conditions:
" "
" " The above copyright notice and this permission notice shall be included in all
" " copies or substantial portions of the Software.
" "
" " THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" " IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
" " FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
" " COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
" " IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
" " CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
"
" " Ported to vim by Martin Haesler with ThemeCreator (https://github.com/mswift42/themecreator)
"
" hi clear
"
" if exists("syntax on")
" syntax reset
" endif
"
" set t_Co=256
" let g:colors_name = "darktooth"
"
"
" " Define reusable colorvariables.
" let s:bg="#282828"
" let s:fg="#fdf4c1"
" let s:fg2="#e9e0b2"
" let s:fg3="#d5cda2"
" let s:fg4="#c0b993"
" let s:bg2="#393939"
" let s:bg3="#4a4a4a"
" let s:bg4="#5c5c5c"
" let s:keyword="#dd6f48"
" let s:builtin="#fe8019"
" let s:const= "#bbaa97"
" let s:comment="#7c6f64"
" let s:func="#a89984"
" let s:str="#528b8b"
" " let s:num="#d3869b"
" let s:num="#00A7AF"
" let s:type="#66999d"
" let s:var="#83a598"
" let s:warning="#ff6523"
" let s:warning2="#ff2370"
" " " {{{ Colors
" "   let s:bg       = [ '#282828', '' ]
" "   let s:fg       = [ '#fdf4c1', '' ]
" "   let s:fg2      = [ '#e9e0b2', '' ]
" "   let s:fg3      = [ '#d5cda2', '' ]
" "   let s:fg4      = [ '#c0b993', '' ]
" "   let s:bg2      = [ '#393939', '' ]
" "   let s:bg3      = [ '#4a4a4a', '' ]
" "   let s:bg4      = [ '#5c5c5c', '' ]
" "   let s:keyword  = [ '#dd6f48', '' ]
" "   let s:builtin  = [ '#fe8019', '' ]
" "   let s:const    = [ '#bbaa97', '' ]
" "   let s:comment  = [ '#7c6f64', '' ]
" "   let s:func     = [ '#a89984', '' ]
" "   let s:str      = [ '#528b8b', '' ]
" "   let s:num      = [ '#d3869b', '' ]
" "   let s:num      = [ '#00A7AF', '' ]
" "   let s:type     = [ '#66999d', '' ]
" "   let s:var      = [ '#83a598', '' ]
" "   let s:warning  = [ '#ff6523', '' ]
" "   let s:warning2 = [ '#ff2370', '' ]
" "   let s:none     = ['NONE', 'NONE' ]
" " " }}}
"
"
" " {{{ Highlight function
" " Thanks Mark :)
" " https://github.com/mhartington/oceanic-next
" function! <sid>hi(group, fg, bg, attr, attrsp)
"   " fg, bg, attr, attrsp
"   if !empty(a:fg)
"     exec "hi " . a:group . " guifg=" .  a:fg[0]
"     exec "hi " . a:group . " ctermfg=" . a:fg[1]
"   endif
"   if !empty(a:bg)
"     exec "hi " . a:group . " guibg=" .  a:bg[0]
"     exec "hi " . a:group . " ctermbg=" . a:bg[1]
"   endif
"   if a:attr != ""
"     exec "hi " . a:group . " gui=" .   a:attr
"     exec "hi " . a:group . " cterm=" . a:attr
"   endif
"   if !empty(a:attrsp)
"     exec "hi " . a:group . " guisp=" . a:attrsp[0]
"   endif
" endfunction
" " }}}
" " {{{ call <sid>:hi(group, fg, bg, gui, guisp)
" exe 'hi Normal guifg='s:fg' guibg='s:bg
" exe 'hi Cursor guifg='s:bg' guibg='s:fg
" exe 'hi Cursorline  guibg='s:bg2
" exe 'hi CursorColumn  guibg='s:bg2
" exe 'hi ColorColumn  guibg='s:bg2
" exe 'hi LineNr guifg='s:fg2' guibg='s:bg2
" exe 'hi VertSplit guifg='s:fg3' guibg='s:bg3
" exe 'hi MatchParen guifg='s:warning2'  gui=underline'
" exe 'hi StatusLine guifg='s:fg2' guibg='s:bg3' gui=bold'
" exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
" exe 'hi PmenuSel  guibg='s:bg3
" exe 'hi IncSearch guifg='s:bg' guibg='s:keyword
" exe 'hi Search   gui=underline'
" exe 'hi Directory guifg='s:const
" exe 'hi Folded guifg='s:fg4' guibg='s:bg
"
" exe 'hi Boolean guifg='s:const
" exe 'hi Character guifg='s:const
" exe 'hi Comment guifg='s:comment'  gui=italic'
" exe 'hi Conditional guifg='s:keyword
" exe 'hi Constant guifg='s:const
" exe 'hi Define guifg='s:keyword
" exe 'hi DiffAdd guifg=#f8f8f8 guibg=#46830c gui=bold'
" exe 'hi DiffDelete guifg=#ff0000'
" exe 'hi DiffChange guifg='s:fg' guibg='s:var
" exe 'hi DiffText guifg='s:fg' guibg='s:builtin' gui=bold'
" exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg2' gui=bold'
" exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2
" exe 'hi Float guifg='s:const
" exe 'hi Function guifg='s:func
" exe 'hi Identifier guifg='s:type'  gui=italic'
" exe 'hi Keyword guifg='s:keyword'  gui=bold'
" exe 'hi Label guifg='s:var
" exe 'hi NonText guifg='s:bg4' guibg='s:bg2
" " exe 'hi Number guifg='s:num
" exe 'hi Number guifg='s:const
" exe 'hi Operater guifg='s:keyword
" exe 'hi PreProc guifg='s:keyword
" exe 'hi Special guifg='s:fg
" exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2
" exe 'hi Statement guifg='s:keyword
" exe 'hi StorageClass guifg='s:type'  gui=italic'
" exe 'hi String guifg='s:str
" exe 'hi Tag guifg='s:keyword
" exe 'hi Title guifg='s:fg'  gui=bold'
" exe 'hi Todo guifg='s:fg2'  guibg=None gui=bold'
" exe 'hi Type guifg='s:type
" exe 'hi Underlined          gui=underline'
"
" " Ruby:
" exe 'hi rubyAttribute guifg='s:builtin
" exe 'hi rubyLocalVariableOrMethod guifg='s:var
" exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
" exe 'hi rubyInstanceVariable guifg='s:var
" exe 'hi rubyKeyword guifg='s:keyword
" exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
" exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
" exe 'hi rubyClass guifg='s:keyword' gui=bold'
" exe 'hi rubyNumber guifg='s:const
"
" " Python:
" exe 'hi pythonBuiltinFunc guifg='s:builtin
"
" " Go:
" exe 'hi goBuiltins guifg='s:builtin
"
" " Javascript:
" exe 'hi jsBuiltins guifg='s:builtin
" exe 'hi jsFunction guifg='s:keyword' gui=bold'
" exe 'hi jsGlobalObjects guifg='s:type
" exe 'hi jsAssignmentExps guifg='s:var
"
" " Html:
" exe 'hi htmlLink guifg='s:var' gui=underline'
" exe 'hi htmlStatement guifg='s:keyword
" exe 'hi htmlSpecialTagName guifg='s:keyword
"
" " Markdown:
" exe 'hi mkdCode guifg='s:builtin
"
" " Viml:
" " exec 'hi vimEcho guifg='s:
" " exec 'hi vimUserFunc guifg='s:
" " exec 'hi vimUsrCmd guifg='s:
" " exec 'hi vimFunction guifg='s:
" " exec 'hi vimFunctionError guifg='s:
" " exec 'hi vimContinue guifg='s:
" " exec 'hi vimNotFunc guifg='s:
" " exec 'hi vimCommand guifg='s:
" " exec 'hi vimCmdSep guifg='s:
" exec 'hi vimBracket guifg='s:comment
" " exec 'hi vimOperParen guifg='s:
" " exec 'hi vimParenSep guifg='s:
" " exec 'hi vimSetSep guifg='s:
" " exec 'hi vimOper guifg='s:
" " exec 'hi vimSep guifg='s:
" " exec 'hi vimOption guifg='s:
" " exec 'hi vimSet guifg='s:
" " exec 'hi vimLet guifg='s:
" exec 'hi vimMap guifg='s:func
" exec 'hi vimNotation guifg='s:keyword
" exec 'hi vimMapModKey guifg='s:keyword
" exec 'hi vimMapMod guifg='s:comment
" exec 'hi vimMapLhs guifg='s:var
" exec 'hi vimMapRhs guifg='s:num
" " }}}
"
" " =============================================================================
" "  === Original Color Values ===
" " =============================================================================
"   "
"   " (darktooth-dark0_hard      "#1D2021" "#1c1c1c")
"   " (darktooth-dark0           "#282828" "#262626")
"   " (darktooth-dark0_soft      "#32302F" "#303030")
"   " (darktooth-dark1           "#3C3836" "#3a3a3a")
"   " (darktooth-dark2           "#504945" "#4e4e4e")
"   " (darktooth-dark3           "#665C54" "#626262")
"   " (darktooth-dark4           "#7C6F64" "#767676")
"   "
"   " (darktooth-medium          "#928374" "#8a8a8a") ;; or 244
"   "
"   " (darktooth-light0_hard     "#FFFFC8" "#ffffdf")
"   " (darktooth-light0          "#FDF4C1" "#ffffaf")
"   " (darktooth-light0_soft     "#F4E8BA" "#ffff87")
"   " (darktooth-light1          "#EBDBB2" "#ffdfaf")
"   " (darktooth-light2          "#D5C4A1" "#bcbcbc")
"   " (darktooth-light3          "#BDAE93" "#a8a8a8")
"   " (darktooth-light4          "#A89984" "#949494")
"   "
"   " (darktooth-bright_red      "#FB4933" "#d75f5f")
"   " (darktooth-bright_green    "#B8BB26" "#afaf00")
"   " (darktooth-bright_yellow   "#FABD2F" "#ffaf00")
"   " (darktooth-bright_blue     "#83A598" "#87afaf")
"   " (darktooth-bright_purple   "#D3869B" "#d787af")
"   " (darktooth-bright_aqua     "#8EC07C" "#87af87")
"   " (darktooth-bright_orange   "#FE8019" "#ff8700")
"   " (darktooth-bright_cyan     "#3FD7E5" "#00d7ff")
"   "
"   " ;; neutral, no 256-color code, requested, nice work-around meanwhile
"   " (darktooth-neutral_red     "#FB4934" "#D75F5F")
"   " (darktooth-neutral_green   "#B8BB26" "#73AF00")
"   " (darktooth-neutral_yellow  "#FABD2F" "#FFAF00")
"   " (darktooth-neutral_blue    "#83A598" "#87AFAF")
"   " (darktooth-neutral_purple  "#D3869B" "#D787AF")
"   " (darktooth-neutral_aqua    "#8EC07C" "#87AF87")
"   " (darktooth-neutral_orange  "#FE8019" "#FF8700")
"   " (darktooth-neutral_cyan    "#17CCD5" "#17CCD5")
"   "
"   " (darktooth-faded_red       "#9D0006" "#870000")
"   " (darktooth-faded_green     "#79740E" "#878700")
"   " (darktooth-faded_yellow    "#B57614" "#af8700")
"   " (darktooth-faded_blue      "#076678" "#005f87")
"   " (darktooth-faded_purple    "#8F3F71" "#875f87")
"   " (darktooth-faded_aqua      "#427B58" "#5f8787")
"   " (darktooth-faded_orange    "#AF3A03" "#af5f00")
"   " (darktooth-faded_cyan      "#00A7AF" "#00afaf")
"   "
"   " (darktooth-muted_red       "#901A1E" "#870000")
"   " (darktooth-muted_green     "#556C21" "#878700")
"   " (darktooth-muted_yellow    "#A87933" "#af8700")
"   " (darktooth-muted_blue      "#1B5C6B" "#005f87")
"   " (darktooth-muted_purple    "#82526E" "#875f87")
"   " (darktooth-muted_aqua      "#506E59" "#5f8787")
"   " (darktooth-muted_orange    "#A24921" "#af5f00")
"   " (darktooth-muted_cyan      "#18A7AF" "#00afaf")
"   "
"   " (darktooth-dark_red        "#421E1E" "#5f0000")
"   " (darktooth-dark_green      "#232B0F" "#005f00")
"   " (darktooth-dark_yellow     "#4D3B27" "#5f5f00")
"   " (darktooth-dark_blue       "#2B3C44" "#00005f")
"   " (darktooth-dark_purple     "#4E3D45" "#5f00af")
"   " (darktooth-dark_aqua       "#36473A" "#005f5f")
"   " (darktooth-dark_orange     "#613620" "#af5f00")
"   " (darktooth-dark_cyan       "#205161" "#005f87")
"   "
"   " (darktooth-mid_red         "#3F1B1B" "#5f0000")
"   " (darktooth-mid_green       "#1F321C" "#005f00")
"   " (darktooth-mid_yellow      "#4C3A25" "#5f5f00")
"   " (darktooth-mid_blue        "#30434C" "#00005f")
"   " (darktooth-mid_purple      "#4C3B43" "#5f00af")
"   " (darktooth-mid_aqua        "#394C3D" "#005f5f")
"   " (darktooth-mid_orange      "#603000" "#af5f00")
"   " (darktooth-mid_cyan        "#005560" "#005f87")
"   "
"   " (darktooth-delimiter-one   "#5C7E81" "#5f8787")
"   " (darktooth-delimiter-two   "#837486" "#875f5f")
"   " (darktooth-delimiter-three "#9C6F68" "#af5f5f")
"   " (darktooth-delimiter-four  "#7B665C" "#5f5f5f")
"   "
"   " ;; 24 bit has tints from light0 and terminal cycles through
"   " ;; the 4 darktooth-delimiter colors
"   " (darktooth-identifiers-1   "#E5D5C5" "#ffdfaf")
"   " (darktooth-identifiers-2   "#DFE5C5" "#dfdfaf")
"   " (darktooth-identifiers-3   "#D5E5C5" "#dfe5c5")
"   " (darktooth-identifiers-4   "#CAE5C5" "#ffd7af")
"   " (darktooth-identifiers-5   "#C5E5CA" "#dfdf87")
"   " (darktooth-identifiers-6   "#C5E5D5" "#dfdfdf")
"   " (darktooth-identifiers-7   "#C5E5DF" "#afdfdf")
"   " (darktooth-identifiers-8   "#C5DFE5" "#dfdfff")
"   " (darktooth-identifiers-9   "#C5D5E5" "#afdfff")
"   " (darktooth-identifiers-10  "#C5CAE5" "#dfafff")
"   " (darktooth-identifiers-11  "#CAC5E5" "#afafff")
"   " (darktooth-identifiers-12  "#D5C5E5" "#dfafaf")
"   " (darktooth-identifiers-13  "#DFC5E5" "#dfc5e5")
"   " (darktooth-identifiers-14  "#E5C5DF" "#ffafaf")
"   " (darktooth-identifiers-15  "#E5C5D5" "#dfdfff")
"   "
"   " (darktooth-white           "#FFFFFF" "white")
"   " (darktooth-black           "#000000" "black")
"   " (darktooth-sienna          "#DD6F48" "sienna")
"   " (darktooth-darkslategray4  "#528B8B" "DarkSlateGray4")
"   " (darktooth-lightblue4      "#66999D" "LightBlue4")
"   " (darktooth-burlywood4      "#BBAA97" "burlywood4")
"   " (darktooth-aquamarine4     "#83A598" "aquamarine4")
"   " (darktooth-turquoise4      "#61ACBB" "turquoise4"))
