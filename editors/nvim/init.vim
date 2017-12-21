"  ________   ___      ___ ___  ___ _________   ________  ________
" |\   ___  \|\  \    /  /|\  \|\   _ \  _   \|\   __  \|\   ____\
" \ \  \\ \  \ \  \  /  / | \  \ \  \\\__\ \  \ \  \|\  \ \  \___|
"  \ \  \\ \  \ \  \/  / / \ \  \ \  \\|__| \  \ \   _  _\ \  \
"   \ \  \\ \  \ \    / /   \ \  \ \  \    \ \  \ \  \\  \\ \  \____
"    \ \__\\ \__\ \__/ /     \ \__\ \__\    \ \__\ \__\\ _\\ \_______\
"     \|__| \|__|\|__|/       \|__|\|__|     \|__|\|__|\|__|\|_______|
"
"
scriptencoding utf-8
if !has('nvim')
  finish
endif
"
" ==============================================================================
"  Plugins
" ==============================================================================
"
let g:dein_repo = 'https://github.com/Shougo/dein.vim.git'
let g:dein_dir = '~/.config/nvim/dein/repos/github.com/Shougo/dein.vim'

if empty(glob(g:dein_dir))
  exec 'silent !mkdir -p '.g:dein_dir
  exec '!git clone '.g:dein_repo.' '.g:dein_dir
endif
exec 'set runtimepath+='.g:dein_dir


call dein#begin(expand('~/.config/nvim/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('haya14busa/dein-command.vim')

" UI:
call dein#add('junegunn/vim-peekaboo')
" call dein#add('airblade/vim-gitgutter')
call dein#add('Shougo/vimfiler.vim')
call dein#add('romgrk/vimfiler-prompt')
call dein#add('ryanoasis/vim-devicons')
" call dein#add('taohex/lightline-buffer')
call dein#add('mgee/lightline-bufferline')
" call dein#add('thalesmello/nvim-better-operator-message')
call dein#add('kshenoy/vim-signature')
" call dein#add('tomtom/quickfixsigns_vim')
" call dein#add('jeetsukumaran/vim-markology')
" dhruvasagar/vim-markify
" call dein#add('CharlesGueunet/quickmenu.vim')
" call dein#add('ap/vim-buftabline')
" call dein#add('bling/vim-bufferline')
" call dein#add('zhaocai/GoldenView.Vim')
" call dein#add('powerman/vim-plugin-AnsiEsc')


" Make Vim Sexy:
" call dein#add('jszakmeister/vim-togglecursor')
call dein#add('nickeb96/vitality.vim')
call dein#add('blueyed/vim-diminactive')
call dein#add('itchyny/vim-cursorword')
call dein#add('xtal8/traces.vim')
" call dein#add('itchyny/vim-parenmatch')
" call dein#add('yuttie/comfortable-motion.vim')
" call dein#add('junegunn/rainbow_parentheses.vim')
" call dein#add('machakann/vim-highlightedundo')
" call dein#add('thaerkh/vim-indentguides')

" call dein#add('joshdick/onedark.vim')
call dein#add('morhetz/gruvbox')
call dein#add('romainl/Apprentice')
" call dein#add('mhartington/oceanic-next')
" call dein#add('altercation/vim-colors-solarized')
" call dein#add('mswift42/vim-themes')
" call dein#add('chriskempson/base16-vim')
" call dein#add('rafi/awesome-vim-colorschemes')
" call dein#add('itchyny/landscape.vim')
" call dein#add('junegunn/seoul256.vim')
call dein#add('KKPMW/moonshine-vim')
call dein#add('rhysd/vim-color-spring-night')
call dein#add('liuchengxu/space-vim-dark')
call dein#add('tyrannicaltoucan/vim-deep-space')
call dein#add('tyrannicaltoucan/vim-quantum')



" Language Support:
" call dein#add('autozimu/LanguageClient-neovim', {'do': ':UpdateRemotePlugins' })
call dein#add('xu-cheng/brew.vim')
call dein#add('octol/vim-cpp-enhanced-highlight', {'lazy':1, 'on_ft': ['cpp']})
call dein#add('hail2u/vim-css3-syntax',           {'lazy':1, 'on_ft': ['css'                   ]})
call dein#add('kchmck/vim-coffee-script',         {'lazy':1, 'on_ft': ['coff', 'coffee', 'cson']})
call dein#add('rhysd/vim-crystal',                {'lazy':1, 'on_ft': ['crystal', 'cr'         ]})
call dein#add('tpope/vim-haml',                   {'lazy':1, 'on_ft': ['haml'                  ]})
call dein#add('othree/html5.vim',                 {'lazy':1, 'on_ft': ['html'                  ]})
" call dein#add('elzr/vim-json',                    {'lazy':1, 'on_ft': ['json'                  ]})
" call dein#add('othree/yajs.vim',                  {'lazy':1, 'on_ft': ['js', 'jsx', 'javascript']})
call dein#add('heavenshell/vim-jsdoc',            {'lazy':1, 'on_ft': ['js', 'jsx', 'javascript']})
call dein#add('pangloss/vim-javascript',          {'lazy':1, 'on_ft': ['js', 'jsx', 'javascript']})
call dein#add('HerringtonDarkholme/yats.vim',     {'lazy':1, 'on_ft': ['ts', 'tsx', 'typescript']})
" call dein#add('othree/javascript-libraries-syntax.vim')
call dein#add('posva/vim-vue',                    {'lazy':1, 'on_ft': ['vue'  ]})
call dein#add('lepture/vim-jinja',                {'lazy':1, 'on_ft': ['jinja']})
" call dein#add('fatih/vim-go',                   {'lazy':1, 'on_ft': ['go'   ]})
call dein#add('lervag/vimtex',                    {'lazy':1, 'on_ft': ['tex'  ]})
call dein#add('groenewege/vim-less',              {'lazy':1, 'on_ft': ['less' ]})
call dein#add('tbastos/vim-lua',                  {'lazy':1, 'on_ft': ['lua'  ]})
call dein#add('leafo/moonscript-vim',             {'lazy':1, 'on_ft': ['moon' ]})
" call dein#add('tpope/vim-markdown',               {'lazy':1, 'on_ft': ['md', 'markdown']})
call dein#add('plasticboy/vim-markdown',          {'lazy':1, 'on_ft': ['md', 'markdown']})
call dein#add('jceb/vim-orgmode',                 {'lazy':1, 'on_ft': ['org'           ]})
" call dein#add('vim-pandoc/vim-pandoc')
" call dein#add('vim-pandoc/vim-pandoc-syntax',     {'lazy':1, 'on_ft': ['md', 'md.pandoc', 'pandoc']})
call dein#add('vim-perl/vim-perl',                {'lazy':1, 'on_ft': ['pearl'         ]})
" call dein#add('python-mode/python-mode',          {'lazy':1, 'on_ft': ['py', 'python'  ]})
" call dein#add('davidhalter/jedi-vim',             {'lazy':1, 'on_ft': ['py', 'python'  ]})
call dein#add('hynek/vim-python-pep8-indent',     {'lazy':1, 'on_ft': ['py', 'python'  ]})
" call dein#add('Vimjas/vim-python-pep8-indent',  {'lazy':1, 'on_ft': ['py','python']}) " ???
call dein#add('/Users/clay/.ghq/github.com/dunstontc/vim-pydocstring', {'lazy':1, 'on_ft': ['python']})
call dein#add('vim-ruby/vim-ruby',                {'lazy':1, 'on_ft': ['ruby', 'rb' ]})
call dein#add('rust-lang/rust.vim',               {'lazy':1, 'on_ft': ['rust', 'rs' ]})
" call dein#add('rbtnn/powershell.vim')
call dein#add('cespare/vim-toml',                 {'lazy':1, 'on_ft': ['toml', 'tml']})
call dein#add('jpalardy/vim-slime',               {'lazy':1, 'on_ft': ['lisp', 'el' ]})
call dein#add('rhysd/vim-wasm',                   {'lazy':1, 'on_ft': ['wast'       ]})
call dein#add('chrisbra/csv.vim',                 {'lazy':1, 'on_ft': ['csv', 'tsv' ]})
call dein#add('tmux-plugins/vim-tmux',            {'lazy':1, 'on_ft': ['tmux'       ]})
" call dein#add('kballard/vim-fish',                {'lazy':1, 'on_ft': ['fish']})
" call dein#add('aliva/vim-fish',                   {'lazy':1, 'on_ft': ['fish']})
call dein#add('dag/vim-fish',                     {'lazy':1, 'on_ft': ['fish'       ]})
call dein#add('chrisbra/vim-zsh',                 {'lazy':1, 'on_ft': ['zsh'        ]})
call dein#add('zplug/vim-zplug',                  {'lazy':1, 'on_ft': ['zsh'        ]})
" call dein#add('PotatoesMaster/i3-vim-syntax')



" Linting: ✔
call dein#add('w0rp/ale')
call dein#add('sbdchd/neoformat')
call dein#add('ternjs/tern_for_vim', {'lazy':1, 'on_ft': ['js', 'jsx', 'javascript']})
" call dein#add('craigemery/vim-autotag')
" call dein#add('inkarkat/vim-SpellCheck')
" call dein#add('bronson/vim-trailing-whitespace')
" call dein#add('reedes/vim-wordy')
" call dein#add('reedes/vim-lexical')


" Text Objects: ⌨
call dein#add('kana/vim-textobj-user')
call dein#add('kana/vim-textobj-line')
call dein#add('kana/vim-textobj-fold')
" call dein#add('kana/vim-textobj-function')
" call dein#add('haya14busa/vim-textobj-function-syntax')
" call dein#add('haya14busa/vim-edgemotion')
" call dein#add('kana/vim-textobj-syntax')
call dein#add('glts/vim-textobj-comment')
call dein#add('Konfekt/vim-textobj-entire')
call dein#add('michaeljsmith/vim-indent-object')
call dein#add('Julian/vim-textobj-variable-segment')
call dein#add('Julian/vim-textobj-brace')
" call dein#add('junegunn/vim-after-object')
" call dein#add('thinca/vim-textobj-between')
" call dein#add('paulhybryant/vim-textobj-path')
" call dein#add('jceb/vim-textobj-uri')
" call dein#add('beloglazov/vim-textobj-quotes')
" call dein#add('vimtaku/vim-textobj-keyvalue')
" call dein#add('reedes/vim-textobj-sentence')
" call dein#add('saaguero/vim-textobj-pastedtext')
" call dein#add('fvictorio/vim-textobj-backticks')
" call dein#add('rhysd/vim-textobj-anyblock')
" call dein#add('christoomey/vim-textobj-codeblock')

" call dein#add('kana/vim-operator-user')
" call dein#add('rhysd/vim-operator-surround')
" call dein#add('kana/vim-operator-replace')


" Utilities: ⚙
call dein#add('tpope/vim-rsi')
" call dein#add('tpope/vim-tbone')
call dein#add('tpope/vim-eunuch')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-abolish')
call dein#add('Rykka/colorv.vim')
" call dein#add('tpope/vim-projectionist')
call dein#add('tpope/vim-speeddating')
" call dein#add('tpope/vim-commentary')
call dein#add('tomtom/tcomment_vim')
" call dein#add('tyru/caw.vim')
call dein#add('airblade/vim-rooter')
" call dein#add('moll/vim-bbye')
call dein#add('mhinz/vim-sayonara')
call dein#add('ervandew/supertab')
call dein#add('airblade/vim-matchquote')
call dein#add('justinmk/vim-sneak')
" call dein#add('rhysd/clever-f.vim')
call dein#add('pbrisbin/vim-mkdir')
" call dein#add('thalesmello/tabfold')
call dein#add('Raimondi/delimitMate')
call dein#add('sgur/vim-editorconfig')
call dein#add('junegunn/vim-easy-align')
call dein#add('farmergreg/vim-lastplace')
call dein#add('dohsimpson/vim-macroeditor') " TODO: learn how to edit macros in split buffer
" call dein#add('supercrabtree/vim-resurrect')
call dein#add('AndrewRadev/splitjoin.vim')
call dein#add('AndrewRadev/switch.vim', {'lazy': 1, 'on_cmd':'Switch'})
" call dein#add('terryma/vim-multiple-cursors')
" call dein#add('airblade/vim-matchquote')
" call dein#add('thinca/vim-qfreplace')
" call dein#add('romainl/vim-qf') TODO: Look into quickfix list management
" call dein#add('romainl/vim-qlist')
" call dein#add('romainl/vim-quicklist')
" call dein#add('MattesGroeger/vim-bookmarks')
call dein#add('dkarter/bullets.vim', {'lazy':1, 'on_ft': ['gitcommit', 'markdown', 'rst', 'scratch', 'text', 'text', 'yaml']})
call dein#add('terryma/vim-expand-region')
call dein#add('christoomey/vim-tmux-navigator')
" call dein#add('dhruvasagar/vim-zoom')
" call dein#add('simeji/winresizer')
" call dein#add('wesQ3/vim-windowswap')
call dein#add('ludovicchabant/vim-gutentags')
call dein#add('Shougo/context_filetype.vim')
" call dein#add('Shougo/neossh.vim')
call dein#add('Shougo/echodoc.vim')
call dein#add('Shougo/vimproc.vim', { 'build' : 'make' })
call dein#add('Shougo/vinarise.vim')


" Unite:
call dein#add('Shougo/unite.vim')
" call dein#add('Shougo/unite-outline')
" call dein#add('Shougo/unite-session')
" call dein#add('tsukkee/unite-tag')
" call dein#add('itchyny/unite-auto-open')
" call dein#add('itchyny/unite-preview')
" call dein#add('blindFS/unite-workflow')
" call dein#add('lambdalisue/vim-gista-unite', {
"     \ 'depends':   'vim-gista',
"     \ 'on_source': 'unite.vim',
"     \})
" call dein#add('tacroe/unite-mark')
" call dein#add('noyuno/unite-latexsymbols')
" call dein#add('kelvinst/unite-menus')
" call dein#add('osyo-manga/unite-option')


" Denite:
call dein#add('~/.ghq/github.com/dunstontc/denite.nvim')
call dein#add('~/.ghq/github.com/dunstontc/neomru.vim')
" call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neoyank.vim')
call dein#add('Jagua/vim-denite-ghq')
call dein#add('rafi/vim-denite-z')
call dein#add('rafi/vim-denite-task')
call dein#add('rafi/vim-denite-session')
call dein#add('chemzqm/denite-git')
call dein#add('chemzqm/vim-easygit')
call dein#add('chemzqm/unite-location')
call dein#add('iyuuya/denite-ale')
" call dein#add('kmnk/gitn')
" call dein#add('mhartington/denite-neomake')
" call dein#add('5t111111/denite-rails')
call dein#add('iamcco/file-manager.vim')
call dein#add('notomo/denite-autocmd')
call dein#add('bennyyip/denite-github-stars')
call dein#add('yyotti/denite-marks')
call dein#add('blankname/denite_fzf_matcher')




" Completion:
call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
call dein#add('Shougo/neco-vim')
call dein#add('Shougo/neco-syntax')
call dein#add('Shougo/neoinclude.vim')
" call dein#add('Shougo/deoppet.nvim')
" call dein#add('Shougo/neosnippet.vim')
call dein#add('tenfyzhong/CompleteParameter.vim')
" call dein#add('mattn/emmet-vim')
call dein#add('SirVer/ultisnips')
" call dein#add('ujihisa/neco-look')
call dein#add('wellle/tmux-complete.vim')
call dein#add('zchee/deoplete-jedi',           { 'lazy':1, 'on_ft': ['py', 'python'            ]})
call dein#add('zchee/deoplete-zsh',            { 'lazy':1, 'on_ft': ['zsh'                     ]})
call dein#add('ponko2/deoplete-fish',          { 'lazy':1, 'on_ft': ['fish'                    ]})
call dein#add('carlitux/deoplete-ternjs',      { 'lazy':1, 'on_ft': ['js', 'jsx', 'javascript' ]})
call dein#add('sebastianmarkow/deoplete-rust', { 'lazy':1, 'on_ft': ['rs', 'rust'              ]})
call dein#add('zchee/deoplete-clang',          { 'lazy':1, 'on_ft': ['c', 'cpp', 'h', 'hpp'    ]})
" call dein#add('tweekmonster/deoplete-clang2',  { 'lazy':1, 'on_ft': ['c', 'cpp', 'h', 'hpp'    ]})
call dein#add('padawan-php/deoplete-padawan',  { 'lazy':1, 'on_ft': 'php',                      })
" call dein#add('1995eaton/vim-better-javascript-completion')
" call dein#add('mopp/googlesuggest-source.vim')
" call dein#add('mattn/googlesuggest-complete-vim')


" Misc:
" call dein#add('equalsraf/neovim-gui-shim')
" call dein#add('lambdalisue/vim-gista', {
"     \ 'on_cmd': 'Gista',
"     \})
call dein#add('mattn/webapi-vim')
call dein#add('tbabej/taskwiki')
" call dein#add('vim-chat/vim-chat')
" call dein#add('vimwiki/vimwiki')
" call dein#add('pocket7878/curses-vim')
" call dein#add('powerman/vim-plugin-viewdoc')
" call dein#add('chemzqm/todoapp.vim')
" call dein#add('vifm/neovim-vifm')


" Search And Replace:
call dein#add('osyo-manga/vim-anzu')
" call dein#add('junegunn/vim-slash')
" call dein#add('thalesmello/vim-slasher')
" call dein#add('haya14busa/is.vim')
" call dein#add('haya14busa/incsearch.vim')
" call dein#add('haya14busa/incsearch-easymotion.vim')
" call dein#add('haya14busa/vim-asterisk')
" call dein#add('nelstrom/vim-visual-star-search')
" call dein#add('henrik/vim-indexed-search')
" call dein#add('pelodelfuego/vim-swoop',        { 'lazy': 1, 'on_source': 'swoop'})
" call dein#add('brooth/far.vim')




" Dev:
" call dein#add('neomake/neomake')
call dein#add('mhinz/vim-lookup')
" call dein#add('Rykka/colorv.vim')
" call dein#add('inkarkat/vim-ingo-library')
" call dein#add('tpope/vim-scriptease')
" call dein#add('sjl/vitality.vim')
" call dein#add('tweekmonster/helpful.vim')
" call dein#add('tweekmonster/nvim-api-viewer')
" call dein#add('tweekmonster/startuptime.vim')
" call dein#add('tweekmonster/exception.vim')
" call dein#add('tyru/eskk.vim')
" call dein#add('tjdevries/standard.vim')
" call dein#add('tomtom/tlib_vim')
" call dein#add('othree/vim-autocomplpop')




" Lazy:
call dein#add('itchyny/dictionary.vim')
call dein#add('heavenshell/vim-slack')
call dein#add('ciaranm/securemodelines',       { 'lazy': 1, 'on_event' : 'BufRead'                    })
call dein#add('tyru/capture.vim',              { 'lazy': 1, 'on_cmd'   : 'Capture'                    })
call dein#add('thinca/vim-scouter',            { 'lazy': 1, 'on_cmd'   : ['Scouter', 'ScouterVerbose']})
call dein#add('thinca/vim-prettyprint',        { 'lazy': 1, 'on_cmd'   : ['PrettyPrint', 'PP'        ]})
call dein#add('chrisbra/Colorizer',            { 'lazy': 1, 'on_cmd'   : 'ColorToggle'                })
call dein#add('dhruvasagar/vim-table-mode',    { 'lazy': 1, 'on_cmd'   : 'tablemode#Toggle()'         })
call dein#add('Shougo/deol.nvim',              { 'lazy': 1, 'on_cmd'   : 'Deol'                       })
call dein#add('Shougo/junkfile.vim')
call dein#add('majutsushi/tagbar',             { 'lazy': 1, 'on_cmd'   : 'TagbarToggle'               })
call dein#add('mbbill/undotree',               { 'lazy': 1, 'on_cmd'   : 'UndoTreeToggle'             })
call dein#add('jreybert/vimagit', {
      \ 'lazy'  : 1,
      \ 'on_cmd': 'Magit',
      \})
" call dein#add('sjl/gundo.vim')
" call dein#add('vmchale/vim-twitter')
call dein#add('itchyny/calendar.vim',          { 'lazy': 1, 'on_cmd'   : 'Calendar'                   })
call dein#add('itchyny/screensaver.vim',       { 'lazy': 1, 'on_cmd'   : 'ScreenSaver'                })
call dein#add('metakirby5/codi.vim',           { 'lazy': 1, 'on_cmd'   : 'Codi'                       })
call dein#add('ryanss/vim-hackernews',         { 'lazy': 1, 'on_cmd'   : 'HackerNews'                 })
call dein#add('junegunn/vim-github-dashboard', { 'lazy': 1, 'on_cmd'   : ['GHDashboard', 'GHActivity']})
call dein#add('guns/xterm-color-table.vim',    { 'lazy': 1, 'on_cmd'   : 'XtermColorTable'            })


" FZF:
call dein#add('/usr/local/opt/fzf')
call dein#add('~/Projects/Vim/forks/fzf.vim')
call dein#add('pbogut/fzf-mru.vim')
call dein#add('justinhoward/fzf-neoyank')
" call dein#add('BurningEther/fzf-proj.vim')
" call dein#add('c-brenn/fuzzy-projectionist.vim')


" Local Or Forked:
call dein#add('~/Projects/vim/vim-code-dark')
call dein#add('~/Projects/Vim/forks/lightline.vim')
call dein#add('/Users/clay/.ghq/github.com/dunstontc/lightline.vim')
call dein#add('/Users/clay/.ghq/github.com/lucc/nvimpager')
call dein#add('~/Projects/Vim/me/tcd')
" call dein#add('~/Projects/Vim/forks/webcomplete.vim')
" call dein#add('~/.ghq/github.com/dunstontc/webcomplete.vim')
call dein#add('~/.ghq/github.com/dunstontc/vison',           {'lazy':1, 'on_ft': ['json'        ]})
call dein#add('~/.ghq/github.com/dunstontc/syntax-vim-ex',   {'lazy':1, 'on_ft': 'vim'           })
call dein#add('~/.ghq/github.com/dunstontc/python-syntax',   {'lazy':1, 'on_ft': ['py', 'python']})
call dein#add('~/.ghq/github.com/dunstontc/vim-startify')
call dein#add('~/.ghq/github.com/dunstontc/denite-extra')
" call dein#add('~/.ghq/github.com/dunstontc/tagbar-markdown', {'lazy':1, 'on_ft': 'markdown'      }) " TODO: Learn PHP?
" call dein#add('~/Projects/Vim/Denite/denite_fzf_matcher')
" call dein#add('~/Projects/Vim/Denite/nvim-denite-sample')
call dein#add('~/Projects/Vim/Denite/me/denite-mappings-source')
call dein#add('~/Projects/Vim/me/projectile.nvim')
" call dein#add('lervag/wiki')
" call dein#add('$HOME/Projects/forks/wiki')
call dein#add('dunstontc/vim-taskwarrior')
call dein#add('dunstontc/vim-cheat40', { 'lazy': 1, 'on_cmd':'Cheat40Open'})
" call dein#add('$HOME/Projects/Vim/me/tcd')
" call dein#add('~/Projects/Vim/forks/vim-sidemenu')
" call dein#add('$HOME/Projects/Vim/forks/vim-hud')

call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax on
set nocompatible           " Not compatible with vi


" ==============================================================================
"  === vim-jedi ===
" ==============================================================================
let g:python_highlight_all=1
let g:jedi#auto_initialization=1
let g:jedi#auto_vim_configuration=0
" let g:jedi#use_splits_not_buffers='left'
let g:jedi#popup_on_dot=1
let g:jedi#popup_select_first=0
let g:jedi#show_call_signatures=0
let g:jedi#completions_enabled=0
let g:jedi#auto_close_doc=0

" let g:jedi#goto_command = '<leader>d'
" let g:jedi#goto_assignments_command = '<leader>g'
" let g:jedi#goto_definitions_command = ''
" let g:jedi#documentation_command = '<S-Z>'
let g:jedi#documentation_command = '<C-p>'
" let g:jedi#usages_command = '<leader>n'
" let g:jedi#completions_command = '<C-Space>'
" let g:jedi#rename_command = '<leader>r'
"
" let g:jedi#goto_command = ''
" let g:jedi#goto_assignments_command = ''
" let g:jedi#goto_definitions_command = ''
" let g:jedi#documentation_command = ''
" let g:jedi#usages_command = ''
" let g:jedi#completions_command = ''
" let g:jedi#rename_command = ''

let g:python_highlight_all=1
