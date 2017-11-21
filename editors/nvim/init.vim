"  ________   ___      ___ ___  ___ _________   ________  ________
" |\   ___  \|\  \    /  /|\  \|\   _ \  _   \|\   __  \|\   ____\
" \ \  \\ \  \ \  \  /  / | \  \ \  \\\__\ \  \ \  \|\  \ \  \___|
"  \ \  \\ \  \ \  \/  / / \ \  \ \  \\|__| \  \ \   _  _\ \  \
"   \ \  \\ \  \ \    / /   \ \  \ \  \    \ \  \ \  \\  \\ \  \____
"    \ \__\\ \__\ \__/ /     \ \__\ \__\    \ \__\ \__\\ _\\ \_______\
"     \|__| \|__|\|__|/       \|__|\|__|     \|__|\|__|\|__|\|_______|
"

if !has('nvim')
  finish
endif
" =============================================================================
"  Plugins
" =============================================================================
"
let g:dein_repo = 'https://github.com/Shougo/dein.vim.git'
let g:dein_dir = '~/.config/nvim/dein/repos/github.com/Shougo/dein.vim'

if empty(glob(g:dein_dir))
  exec 'silent !mkdir -p '.g:dein_dir
  exec '!git clone '.g:dein_repo.' '.g:dein_dir
endif
exec 'set runtimepath^='.g:dein_dir


call dein#begin(expand('~/.config/nvim/dein'))
call dein#add('Shougo/dein.vim')

" 🖥  UI
" call dein#add('mhinz/vim-startify')
call dein#add('junegunn/vim-peekaboo')
" call dein#add('airblade/vim-gitgutter')
call dein#add('Shougo/vimfiler.vim')
call dein#add('romgrk/vimfiler-prompt')
call dein#add('ryanoasis/vim-devicons')
call dein#add('thalesmello/nvim-better-operator-message')
" call dein#add('jeetsukumaran/vim-markology')
" call dein#add('CharlesGueunet/quickmenu.vim')
" call dein#add('dhruvasagar/vim-zoom')
" call dein#add('bling/vim-bufferline')


" 🎨  Make Vim Sexy
call dein#add('blueyed/vim-diminactive')
call dein#add('itchyny/vim-cursorword')
call dein#add('itchyny/vim-parenmatch')
" call dein#add('junegunn/rainbow_parentheses.vim')
" call dein#add('jszakmeister/vim-togglecursor')
" call dein#add('machakann/vim-highlightedundo')
" call dein#add('thaerkh/vim-indentguides')

call dein#add('morhetz/gruvbox')
call dein#add('romainl/Apprentice')
" call dein#add('dunstontc/vim-code-dark')
" call dein#add('joshdick/onedark.vim')
" call dein#add('mswift42/vim-themes')
" call dein#add('chriskempson/base16-vim')
" call dein#add('rafi/awesome-vim-colorschemes')
call dein#add('itchyny/landscape.vim')
" call dein#add('junegunn/seoul256.vim')
call dein#add('nanotech/jellybeans.vim')
call dein#add('reedes/vim-colors-pencil')
call dein#add('rhysd/vim-color-splatoon')
call dein#add('liuchengxu/space-vim-dark')
call dein#add('rhysd/vim-color-spring-night')
" call dein#add('tyrannicaltoucan/vim-deep-space')



" 📜   Language Support
" call dein#add('autozimu/LanguageClient-neovim')
call dein#add('hail2u/vim-css3-syntax',       {'lazy':1, 'on_ft': ['css']})
call dein#add('kchmck/vim-coffee-script',     {'lazy':1, 'on_ft': ['coff', 'coffee', 'cson']})
call dein#add('rhysd/vim-crystal',            {'lazy':1, 'on_ft': ['crystal', 'cr']})
call dein#add('tpope/vim-haml',               {'lazy':1, 'on_ft': ['haml']})
call dein#add('othree/html5.vim',             {'lazy':1, 'on_ft': ['html']})
" call dein#add('elzr/vim-json',                {'lazy':1, 'on_ft': ['json']})
call dein#add('Quramy/vison',                 {'lazy':1, 'on_ft': ['json']})
" call dein#add('othree/yajs.vim')
call dein#add('fatih/vim-go',                 {'lazy':1, 'on_ft': ['go']})
call dein#add('heavenshell/vim-jsdoc',        {'lazy':1, 'on_ft': ['js', 'jsx', 'javascript']})
call dein#add('pangloss/vim-javascript',      {'lazy':1, 'on_ft': ['js', 'jsx', 'javascript']})
" call dein#add('othree/javascript-libraries-syntax.vim')
call dein#add('posva/vim-vue',                {'lazy':1, 'on_ft': ['vue']})
call dein#add('lervag/vimtex',                {'lazy':1, 'on_ft': ['tex']})
call dein#add('groenewege/vim-less',          {'lazy':1, 'on_ft': ['less']})
call dein#add('tbastos/vim-lua',              {'lazy':1, 'on_ft': ['lua']})
call dein#add('leafo/moonscript-vim',         {'lazy':1, 'on_ft': ['moon']})
" call dein#add('tpope/vim-markdown',           {'lazy':1, 'on_ft': ['md', 'markdown']})
call dein#add('plasticboy/vim-markdown',      {'lazy':1, 'on_ft': ['md', 'markdown']})
call dein#add('jceb/vim-orgmode',             {'lazy':1, 'on_ft': ['org']})
" call dein#add('python-mode/python-mode',      {'lazy':1, 'on_ft': ['py', 'python']})
call dein#add('vim-python/python-syntax',     {'lazy':1, 'on_ft': ['python']})
call dein#add('hynek/vim-python-pep8-indent', {'lazy':1, 'on_ft': ['py', 'python']})
call dein#add('davidhalter/jedi-vim',         {'lazy':1, 'on_ft': ['py', 'python']})
call dein#add('vim-ruby/vim-ruby',            {'lazy':1, 'on_ft': ['ruby', 'rb']})
call dein#add('rust-lang/rust.vim',           {'lazy':1, 'on_ft': ['rust', 'rs']})
" call dein#add('rbtnn/powershell.vim')
call dein#add('cespare/vim-toml',             {'lazy':1, 'on_ft': ['toml', 'tml']})
call dein#add('jpalardy/vim-slime',           {'lazy':1, 'on_ft': ['lisp', 'el']})
call dein#add('rhysd/vim-wasm',               {'lazy':1, 'on_ft': ['wast']})
call dein#add('chrisbra/csv.vim',             {'lazy':1, 'on_ft': ['csv', 'tsv']})
call dein#add('tmux-plugins/vim-tmux')
" call dein#add('kballard/vim-fish',        {'lazy':1, 'on_ft': ['fish']})
" call dein#add('aliva/vim-fish',               {'lazy':1, 'on_ft': ['fish']})
call dein#add('dag/vim-fish',                 {'lazy':1, 'on_ft': ['fish']})
call dein#add('chrisbra/vim-zsh',             {'lazy':1, 'on_ft': ['zsh']})
call dein#add('zplug/vim-zplug',              {'lazy':1, 'on_ft': ['zsh']})
call dein#add('freitass/todo.txt-vim')
call dein#add('vim-jp/syntax-vim-ex',         {'lazy':1, 'on_ft': ['vim']})



" ✔ Linting+
call dein#add('w0rp/ale')
" call dein#add('inkarkat/vim-SpellCheck')
" call dein#add('bronson/vim-trailing-whitespace')
" call dein#add('reedes/vim-wordy')
" call dein#add('ludovicchabant/vim-gutentags')
" call dein#add('xolox/vim-easytags')
" call dein#add('sbdchd/neoformat')



" ⚙   Utilities
call dein#add('tpope/vim-rsi')
call dein#add('tpope/vim-eunuch')
call dein#add('tpope/vim-repeat')
" call dein#add('tpope/vim-tbone')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-surround')
" call dein#add('tpope/vim-speeddating')
call dein#add('ervandew/supertab')
call dein#add('justinmk/vim-sneak')
" call dein#add('rhysd/clever-f.vim')
call dein#add('pbrisbin/vim-mkdir')
call dein#add('tomtom/tcomment_vim')
call dein#add('thalesmello/tabfold')
call dein#add('Raimondi/delimitMate')
call dein#add('sgur/vim-editorconfig')
call dein#add('junegunn/vim-easy-align')
call dein#add('farmergreg/vim-lastplace')
call dein#add('dhruvasagar/vim-table-mode')   " TODO: make lazy
" call dein#add('supercrabtree/vim-resurrect')
" call dein#add('terryma/vim-multiple-cursors')
" call dein#add('airblade/vim-matchquote')
" call dein#add('romainl/vim-qf')
" call dein#add('romainl/vim-qlist')
" call dein#add('romainl/vim-quicklist')
call dein#add('terryma/vim-expand-region')
" call dein#add('wesQ3/vim-windowswap')
" call dein#add('MattesGroeger/vim-bookmarks')
call dein#add('christoomey/vim-tmux-navigator')


" Text Objects
call dein#add('kana/vim-textobj-user')
call dein#add('kana/vim-textobj-line')
call dein#add('kana/vim-textobj-fold')
" call dein#add('kana/vim-textobj-syntax')
call dein#add('glts/vim-textobj-comment')
call dein#add('Konfekt/vim-textobj-entire')
call dein#add('michaeljsmith/vim-indent-object')
call dein#add('Julian/vim-textobj-variable-segment')
" call dein#add('junegunn/vim-after-object')
" call dein#add('paulhybryant/vim-textobj-path')
" call dein#add('beloglazov/vim-textobj-quotes')
" call dein#add('vimtaku/vim-textobj-keyvalue')
" call dein#add('reedes/vim-textobj-sentence')
" call dein#add('Julian/vim-textobj-brace')
" call dein#add('jceb/vim-textobj-uri')
" call dein#add('saihoooooooo/vim-textobj-space')
" call dein#add('saaguero/vim-textobj-pastedtext')
" call dein#add('fvictorio/vim-textobj-backticks')
" call dein#add('thinca/vim-textobj-between')
" call dein#add('rhysd/vim-textobj-anyblock')
" call dein#add('christoomey/vim-textobj-codeblock')

" call dein#add('kana/vim-operator-user')
" call dein#add('rhysd/vim-operator-surround')
" call dein#add('kana/vim-operator-replace')



" 🐉
call dein#add('Shougo/context_filetype.vim')
call dein#add('Shougo/junkfile.vim')
" call dein#add('Shougo/neossh.vim')
" call dein#add('Shougo/echodoc.vim')
call dein#add('Shougo/vimproc.vim', { 'build' : 'make' })
      " \ 'on_source': ['unite.vim', 'vimshell.vim']})
" call dein#add('Shougo/unite-outline')
" call dein#add('Shougo/unite-session')
" call dein#add('tsukkee/unite-tag')
" call dein#add('tsukkee/unite-help')
" call dein#add('blindFS/unite-workflow')
" call dein#add('itchyny/unite-auto-open')
" call dein#add('ujihisa/unite-colorscheme')
" call dein#add('rstacruz/vim-fastunite')
" call dein#add('lambdalisue/vim-gista-unite', {
"     \ 'depends':   'vim-gista',
"     \ 'on_source': 'unite.vim',
"     \})
" call dein#add('itchyny/unite-preview')
" call dein#add('iamcco/file-manager.vim')
" call dein#add('tacroe/unite-mark')
" call dein#add('noyuno/unite-latexsymbols')
" call dein#add('kelvinst/unite-menus')
" call dein#add('raw1z/unite-projects')
" call dein#add('osyo-manga/unite-option')

call dein#add('Shougo/unite.vim')
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neoyank.vim')
call dein#add('rafi/vim-denite-z')
call dein#add('rafi/vim-denite-task')
call dein#add('rafi/vim-denite-session')
call dein#add('chemzqm/denite-extra')
call dein#add('chemzqm/denite-git')
call dein#add('chemzqm/vim-easygit')
call dein#add('chemzqm/unite-location')



" 💬  Completion
" call dein#add('mattn/emmet-vim')
call dein#add('Shougo/deoplete.nvim',      { 'do': ':UpdateRemotePlugins' })
call dein#add('Shougo/neco-vim')
call dein#add('Shougo/neco-syntax')
call dein#add('SirVer/ultisnips')
call dein#add('zchee/deoplete-jedi',       { 'lazy':1, 'on_ft': ['py', 'python'            ]})
call dein#add('zchee/deoplete-zsh',        { 'lazy':1, 'on_ft': ['zsh'                     ]})
call dein#add('ponko2/deoplete-fish',      { 'lazy':1, 'on_ft': ['fish'                    ]})
call dein#add('carlitux/deoplete-ternjs',  { 'lazy':1, 'on_ft': ['js', 'jsx', 'javascript' ]})
" call dein#add('tweekmonster/deoplete-clang2')
call dein#add('wellle/tmux-complete.vim')
" call dein#add('ternjs/tern_for_vim')
" call dein#add('1995eaton/vim-better-javascript-completion')
" call dein#add('mopp/googlesuggest-source.vim')
" call dein#add('mattn/googlesuggest-complete-vim')


" 🛴 Misc 1
" call dein#add('equalsraf/neovim-gui-shim')
" call dein#add('lambdalisue/vim-gista', {
"     \ 'on_cmd': 'Gista',
"     \})
call dein#add('mattn/webapi-vim')
call dein#add('tbabej/taskwiki')
" call dein#add('vimwiki/vimwiki')
call dein#add('thinca/vim-scouter')
" call dein#add('chemzqm/todoapp.vim')
" call dein#add('fadein/vim-FIGlet')
" call dein#add('Shougo/vimshell.vim')
" call dein#add('kassio/neoterm')
" call dein#add('vifm/neovim-vifm')


" 🔬 Search & Replace
" call dein#add('wincent/loupe')
call dein#add('osyo-manga/vim-anzu')
" call dein#add('junegunn/vim-slash')
" call dein#add('thalesmello/vim-slasher')
" call dein#add('pelodelfuego/vim-swoop')
" call dein#add('haya14busa/incsearch.vim')
" call dein#add('haya14busa/incsearch-easymotion.vim')
" call dein#add('haya14busa/vim-asterisk')
" call dein#add('nelstrom/vim-visual-star-search')
" call dein#add('henrik/vim-indexed-search')



" 🔬  Dev
" call dein#add('neomake/neomake')
" call dein#add('dahu/vimple')
" call dein#add('inkarkat/vim-ingo-library')
" call dein#add('tpope/vim-scriptease')
" call dein#add('tweekmonster/helpful.vim')
call dein#add('tweekmonster/startuptime.vim')
" call dein#add('cyansprite/Extract')
" call dein#add('tyru/eskk.vim')
" call dein#add('othree/vim-autocomplpop')




" 🛴 Lazy
" call dein#add('ryanss/vim-hackernews')
" call dein#add('vmchale/vim-twitter')
" call dein#add('junegunn/vim-github-dashboard')
call dein#add('ciaranm/securemodelines',    { 'lazy': 1, 'on_event' : 'BufRead'         })
call dein#add('tyru/capture.vim',           { 'lazy': 1, 'on_cmd'   : 'Capture'         })
call dein#add('Shougo/deol.nvim',           { 'lazy': 1, 'on_cmd'   : 'Deol'            })
call dein#add('pelodelfuego/vim-swoop',     { 'lazy': 1, 'on_source': 'swoop'           })
" call dein#add('sjl/gundo.vim')
call dein#add('mbbill/undotree',            { 'lazy': 1, 'on_cmd'   : 'UndoTreeToggle'  })
call dein#add('majutsushi/tagbar',          { 'lazy': 1, 'on_cmd'   : 'Tagbar'          })
call dein#add('itchyny/calendar.vim',       { 'lazy': 1, 'on_cmd'   : 'Calendar'        })
call dein#add('metakirby5/codi.vim',        { 'lazy': 1, 'on_cmd'   : 'Codi'            })
call dein#add('chrisbra/Colorizer',         { 'lazy': 1, 'on_cmd'   : 'ColorToggle'     })
call dein#add('guns/xterm-color-table.vim', { 'lazy': 1, 'on_cmd'   : 'XtermColorTable' })
call dein#add('itchyny/screensaver.vim',    { 'lazy': 1, 'on_cmd'   : 'ScreenSaver'     })



" Local / Forked
call dein#add('dunstontc/vim-cheat40',      { 'lazy': 1, 'on_cmd'   : 'Cheat40Open'     })
call dein#add('dunstontc/vim-taskwarrior')
" call dein#add('dunstontc/vim-code-dark')
call dein#add('$HOME/Projects/vim/vim-code-dark')
call dein#add('$HOME/Projects/Vim/tcd')
call dein#add('/Users/clay/Projects/Vim/forks/lightline.vim')
" call dein#add('$HOME/Projects/Vim/forks/vim-hud')
" call dein#add('~/Projects/Vim/forks/vim-sidemenu')

call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax on
set nocompatible           " Not compatible with vi
