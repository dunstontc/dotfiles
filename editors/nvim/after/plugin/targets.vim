let g:targets_aiAI       = 'aiAI'  " 'beBE'
let g:targets_nl         = '()b {}B [] <>'
let g:targets_pairs      = '" '' `'
let g:targets_quotes     = ', . ; : + - = ~ _ * # / | \ & $'
let g:targets_separators = ', . ; : + - = ~ _ * # / | \ & $'
let g:targets_tagTrigger = 't'
let g:targets_argOpening = '[({[]'
let g:targets_argClosing = '[]})]'
let g:targets_argSeparator  = ','
" let g:targets_jumpRanges = 'cr cb cB lc ac Ac lr rr ll lb ar ab lB Ar aB Ab AB rb al rB Al bb aa bB Aa BB AA' ~
let g:targets_jumpRanges = 'rr rb rB bb bB BB ll al Al aa Aa AA'

""
" @setting(targets_seekRanges)
" Defines a priority ordered, space separated list of range types
" which can be used to customize seeking behavior.

" let g:targets_seekRanges = 'rr rb rB bb bB BB ll al Al aa Aa AA'
" -- Prefer multiline targets around cursor over distant targets within cursor line:
" let g:targets_seekRanges = 'cr cb cB lc ac Ac lr lb ar ab lB Ar aB Ab AB rr ll rb al rB Al bb aa bB Aa BB AA'
" -- Never seek backwards:
" let g:targets_seekRanges = 'cr cb cB lc ac Ac lr rr lb ar ab lB Ar aB Ab AB rb rB bb bB BB'
" -- Only seek if next/last targets touch current line:
" let g:targets_seekRanges = 'cr cb cB lc ac Ac lr rr ll lb ar ab lB Ar aB Ab AB rb rB al Al'
" -- Only consider targets fully visible on screen:
" let g:targets_seekRanges = 'cr cb cB lc ac Ac lr lb ar ab rr rb bb ll al aa'
" -- Only consider targets around cursor:
" let g:targets_seekRanges = 'cr cb cB lc ac Ac lr lb ar ab lB Ar aB Ab AB'
" -- Only consider targets fully contained in current line:
" let g:targets_seekRanges = 'cr cb cB lc ac Ac lr rr ll'
