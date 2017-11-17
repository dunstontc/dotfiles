" =============================================================================
"  === Startify ===
" =============================================================================
" Center our header
function! s:filter_header(lines) abort
    let l:longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
    let l:centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 1) - (l:longest_line / 3)) . v:val')
    return l:centered_lines
endfunction
let g:startify_custom_header = s:filter_header(startify#fortune#cowsay())
" let g:startify_custom_header = s:filter_header(fortune())

" Start numbering from 10
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')

" Number of recent files shown
let g:startify_files_number = 10
" Show <empty buffer> and <quit>.
let g:startify_enable_special = 0

let g:startify_change_to_dir          = 0
let g:startify_change_to_vcs_root     = 0
let g:startify_fortune_use_unicode    = 1
let g:startify_use_env                = 1
let g:startify_session_autoload       = 0
let g:startify_session_persistence    = 0
let g:startify_update_oldfiles        = 1
" Open NERDTree along with Startify
" autocmd VimEnter *
"       \   if !argc()
"       \ |   Startify
"       \ |   NERDTree
"       \ |   wincmd w
"       \ | endif

let g:startify_bookmarks = [
        \ { '01': '~/.dotfiles' },
        \ { '02': '~/.dotfiles/shell/bash/.bashrc' },
        \ { '03': '~/.dotfiles/shell/bash/.inputrc' },
        \ { '04': '~/.dotfiles/shell/zsh/.zshrc' },
        \ ]

" Reload last session (for use with Tmux)
" set -g @resurrect-processes '"vim->vim +SLoad"'
let g:startify_list_order = [
        \ ['      __                                      ',
        \  '     /  )        /                    /       ',
        \  '    /--<  __ __ /_  ______  __.  __  /_  _    ',
        \  '   /___/_(_)(_)/ <_/ / / <_(_/|_/ (_/ <_/_)_  ' ],
        \ 'bookmarks',
        \ ['     _ __                   ',
        \  '    ` )  )               _/_',
        \  '     /--` _  _. _  ____  /  ',
        \  '    /  \_</_(__</_/ / <_<__ ' ],
        \ 'files',
        \ ['   These are my sessions:'],
        \ 'sessions',
        \ ['   These are my commands:'],
        \ 'commands',
        \ ]

let g:startify_custom_footer =
  \ ['','','','','','','']


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



" =============================================================================
"  === DevIcons ===
" =============================================================================
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_denite = 1
let g:webdevicons_enable_deoplete = 1
" let g:webdevicons_enable_nerdtree = 1
let g:DevIconsEnableFoldersOpenClose = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 0
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed

"  Folders
"       
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['node_modules'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.dotfiles'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Applications'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['iCloud Drive'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Google Drive'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Creative Cloud Drive'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Desktop'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Projects'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Documents'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Music'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Movies'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Pictures'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Downloads'] = ''



"   Extensions
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['bash']       = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['cson']       = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['coffee']     = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['el']         = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['fish']       = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html']       = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js']         = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json']       = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['less']       = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md']         = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md']         = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['org']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['otf']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['projectile'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['snippets']   = ' '
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ttf']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vimrc']      = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vue']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['woff']       = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yaml']       = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yml']        = ''

"   Exact names
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['DS_Store']      = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.ds_store']         = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['readme.md']         = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.npmrc']            = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['gulpfile.js']       = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.vimrc']            = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['init.vim']          = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.bashrc']           = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.zshrc']            = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.tmux.conf']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitignore']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitkeep']          = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitconfig']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['archey']            = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['hugo']              = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['terminal-notifier'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['casperjs']          = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['phantomjs']         = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.aliases']          = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.env']              = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.exports']          = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.functions']        = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.path']             = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.profile']          = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.editorconfig']     = ''
