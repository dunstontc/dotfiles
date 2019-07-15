scriptencoding utf-8

if !exists(':ALEInfo')
  finish
endi

" =============================================================================
"  === NERDtree ===
" =============================================================================

let g:NERDTreeChDirMode=2       " Always change the root directory
let g:NERDTreeMinimalUI=1       " Disable help text and bookmark title
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1      " Show hidden files in NERDTree
let g:NERDTreeSortHiddenFirst=1 " Show hidden files first
" let g:NERDTreeStatusline='%{ getcwd() }'
" let g:NERDTreeStatusline="%t"
let g:NERDTreeWinSize=35
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeIgnore=['\.git$','\.sass-cache$','\.idea','\.vscode','Icon?','\.DS_store']
" Close vim if only NERDtree is open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeMapJumpPrevSibling='<Nop>'
let g:NERDTreeMapJumpNextSibling='<Nop>'

" =============================================================================
" === Colors ===

"   Full Names
let g:NERDTreeFileExtensionHighlightFullName = 0
let g:NERDTreeExactMatchHighlightFullName = 0
let g:NERDTreePatternMatchHighlightFullName = 0

let g:NERDTreeHighlightFolders = 0                " Enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 0        " Highlights the folder name
" let g:NERDTreeLimitedSyntax = 1                   " Enable to help performance
" let g:NERDTreeSyntaxDisableDefaultExtensions = 1  " Start from Scratch

" #905532
" #3AFFDB
" #689FB6
" #44788E
" #834F79
" #834F79
" #AE403F
" #F5C06F
" #F09F17
" #D4843E
" #F16529
" #CB6F6F
" #EE6E73
" #8FAA54
" #31B53E
" #FFFFFF
" #FE405F
" #F54D27
let s:brown       = "905532"
let s:aqua        = "3AFFDB"
let s:blue        = "689FB6"
let s:darkBlue    = "44788E"
let s:purple      = "834F79"
let s:lightPurple = "834F79"
let s:red         = "AE403F"
let s:beige       = "F5C06F"
let s:yellow      = "F09F17"
let s:orange      = "D4843E"
let s:darkOrange  = "F16529"
let s:pink        = "CB6F6F"
let s:salmon      = "EE6E73"
let s:green       = "8FAA54"
let s:lightGreen  = "31B53E"
let s:white       = "FFFFFF"

let s:rspec_red   = 'fe405f'
let s:vim_green   = '90a959'
let s:git_orange  = 'f54d27'
let s:coffee_blue = '43547c'
let s:hidden_gray = '404040'

"#905532
"#3AFFDB
"#689FB6
"#44788E
"#834F79
"#834F79
"#AE403F
"#F5C06F
"#F09F17
"#D4843E
"#F16529
"#CB6F6F
"#EE6E73
"#8FAA54
"#31B53E
"#FFFFFF
"#FE405F
"#fe405f
"#90a959
"#f54d27
"#43547c
"#404040


let g:NERDTreeExtensionHighlightColor = {}                             " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue                  " sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['gitconfig'] = s:git_orange
let g:NERDTreeExtensionHighlightColor['coffee'] = s:coffee_blue
let g:NERDTreeExtensionHighlightColor['cson'] = s:coffee_blue
let g:NERDTreeExtensionHighlightColor['vimrc'] = s:vim_green
let g:NERDTreeExtensionHighlightColor['vim'] = s:vim_green
let g:NERDTreeExtensionHighlightColor['ds_store'] = s:hidden_gray

let g:NERDTreeExactMatchHighlightColor = {}                            " this line is needed to avoid error
" let g:NERDTreeExactMatchHighlightColor['.DS_Store'] = s:hidden_gray

" let g:NERDTreePatternMatchHighlightColor = {}                          " this line is needed to avoid error
" let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb



