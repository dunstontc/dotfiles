" ==============================================================================
" Vim Syntax File
" Language: Razor, cshtml
" From OrangeT/vim-csharp
" ==============================================================================

if v:version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'cshtml'
endif

syn include @aspnetAddCS syntax/cs.vim
unlet b:current_syntax

syn include @html syntax/html.vim
unlet b:current_syntax

runtime! syntax/html.vim
unlet b:current_syntax

syn cluster htmlPreProc add=razorBlock,razorLine

syn match razorLine +@[a-zA-Z0-9_\(\)\.]\++ contains=@aspnetAddCS,razorMixedBlock
syn region razorBlock start=+@{+ end=+}+ contains=@aspnetAddCS,@html

syn region razorMixedBlock start="{" end="}" contains=@aspnetAddCS,@html

syn region razorComment start="@\* " end="\*@ "


" Links: {{{
" hi def link razorLine Conditional
hi link razorComment Comment
""}}}

let b:current_syntax = 'cshtml'
