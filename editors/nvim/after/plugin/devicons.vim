scriptencoding utf-8

" =============================================================================
"  === DevIcons ===
" =============================================================================
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_denite = 0
let g:webdevicons_enable_deoplete = 1
" let g:webdevicons_enable_vimfiler=0
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
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Makefile']        = ''
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

