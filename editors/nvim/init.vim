"  ________   ___      ___ ___  ___ _________   ________  ________
" |\   ___  \|\  \    /  /|\  \|\   _ \  _   \|\   __  \|\   ____\
" \ \  \\ \  \ \  \  /  / | \  \ \  \\\__\ \  \ \  \|\  \ \  \___|
"  \ \  \\ \  \ \  \/  / / \ \  \ \  \\|__| \  \ \   _  _\ \  \
"   \ \  \\ \  \ \    / /   \ \  \ \  \    \ \  \ \  \\  \\ \  \____
"    \ \__\\ \__\ \__/ /     \ \__\ \__\    \ \__\ \__\\ _\\ \_______\
"     \|__| \|__|\|__|/       \|__|\|__|     \|__|\|__|\|__|\|_______|

scriptencoding utf-8
let g:uname = substitute(system('uname'), '\n', '', '')

" ==============================================================================
"  Plugins
" ==============================================================================

call plug#begin('~/.local/nvim/plugged')

  " === Theme/UI ===
  if g:uname == 'Darwin'
    Plug '/Users/clay/Projects/vim/vim-vscode-theme'
  else
    Plug 'dunstontc/vim-vscode-theme'
  endif
  Plug 'junegunn/vim-peekaboo'     " Show the contents of registers on a sidebar.
  Plug 'airblade/vim-gitgutter'    " Shows a git diff in the gutter (sign column) and stages/undoes hunks.
  " Plug 'ryanoasis/vim-devicons'    " Adds file type glyphs/icons to popular Vim plugins.
  " Plug 'itchyny/vim-cursorword'  " Underlines the word under the cursor.
  " Plug 'xtal8/traces.vim'        " Range, pattern and substitute preview for Vim.
  " Plug 'osyo-manga/vim-anzu'       " Vim search status (current/found).


  " === Language ===
  Plug 'justinmk/vim-syntax-extra',         {'for': ['c']}
  Plug 'kchmck/vim-coffee-script',          {'for': ['coff', 'coffee', 'cson']}
  Plug 'chrisbra/csv.vim',                  {'for': ['csv', 'tsv' ]}
  Plug 'ekalinin/Dockerfile.vim',           {'for': 'dockerfile'}
  Plug 'gutenye/json5.vim',                 {'for': 'json5'}
  Plug 'fatih/vim-go',                      {'for': 'go', 'do': ':GoUpdateBinaries'}
  Plug 'neovimhaskell/haskell-vim',         {'for': ['haskell', 'cabal']}
  Plug 'tpope/vim-markdown',                {'for': 'markdown'}
  Plug 'tyru/markdown-codehl-onthefly.vim', {'for': 'markdown'}
  Plug 'chr4/nginx.vim',                    {'for': 'nginx'}
  Plug 'joker1007/vim-ruby-heredoc-syntax', {'for': 'ruby'}
  Plug 'rust-lang/rust.vim',                {'for': 'rust'}
  Plug 'racer-rust/vim-racer',              {'for': 'rust'}
  Plug 'tmux-plugins/vim-tmux',             {'for': 'tmux'}
  Plug 'cespare/vim-toml',                  {'for': ['toml', 'tml']}
  Plug 'dunstontc/syntax-vim-ex',           {'for': 'vim'}
  Plug 'autozimu/LanguageClient-neovim',    {'branch': 'next', 'do': 'bash install.sh'}

  " === Linting ===
  Plug 'sbdchd/neoformat'                     " A (Neo)vim plugin for formatting code.
  Plug 'neomake/neomake'                      " Asynchronous linting and make framework for Neovim/Vim
  " Plug 'ternjs/tern_for_vim', {'for': ['javascript']}

  " === Lazy ===
  Plug 'ciaranm/securemodelines'                                  " A secure alternative to Vim modelines
  Plug 'Shougo/vinarise.vim',           {'on': 'Vinarise'}        " Hex editing
  Plug 'tweekmonster/startuptime.vim',  {'on': 'StartupTime'}     " Breakdown Vim's --startuptime output
  Plug 'tyru/capture.vim',              {'on': 'Capture'}         " Show Ex command output in a buffer
  Plug 'chrisbra/Colorizer',            {'on': 'ColorToggle'}     " Colors hex codes and color names
  Plug 'dhruvasagar/vim-table-mode',    {'on': 'TableModeToggle'} " Automatic table creator & formatter
  Plug 'majutsushi/tagbar',             {'on': 'TagbarToggle'}    " Provides an easy way to browse the tags of the current file and get an overview of its structure.
  Plug 'mbbill/undotree',               {'on': 'UndotreeToggle'}  " Undo history visualizer
  Plug 'guns/xterm-color-table.vim',    {'on': 'XtermColorTable'} " All 256 xterm colors with their RGB equivalents

  " === Text Objects ===
  Plug 'kana/vim-textobj-user'               " Create your own text objects.
  Plug 'kana/vim-textobj-line'               " Text objects for the current line.
  Plug 'kana/vim-textobj-entire'             " Text objects for the entire content of a buffer.
  Plug 'glts/vim-textobj-comment'            " Text objects for comments.
  Plug 'michaeljsmith/vim-indent-object'     " Text objects for levels of indentation.
  Plug 'Julian/vim-textobj-variable-segment' " Text objects for variable segments in PascalCase, camelCase, snake_case, or kebab-case.
  Plug 'beloglazov/vim-textobj-quotes'       " Text objects for the closest pairs of quotes of any type.
  Plug 'Julian/vim-textobj-brace'            " A text object for the closest inner () {} *or* []

  " === Editing ===
  Plug 'junegunn/vim-easy-align'   " A Vim alignment plugin
  " Plug 'tpope/vim-commentary'      " Comment stuff out.
  Plug 'tomtom/tcomment_vim'       " An extensible & universal comment vim-plugin that also handles embedded filetypes.
  Plug 'haya14busa/vim-edgemotion' " Move to the edge! (with J/K)
  Plug 'valloric/matchtagalways',   {'for': ['html', 'xml', 'gohtml']}            " Always highlights the enclosing html/xml tags.
  Plug 'AndrewRadev/splitjoin.vim' " Transition between multiline and single-line code.
  " Plug 'machakann/vim-swap'      " Reorder delimited items.
  " Plug 'AndrewRadev/switch.vim',    {'on': 'Switch'}                            " Switch segments of text with predefined replacements.
  Plug 'dkarter/bullets.vim',       {'for' : ['gitcommit', 'markdown', 'rst', 'scratch', 'text', 'text', 'yaml']} " Automated bullet lists

  " === Utilities ===
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'                    " Wrapper for using FZF in Vim.
  Plug 'tpope/vim-rsi'                       " Readline style insertion.
  Plug 'tpope/vim-repeat'                    " Enable repeating supported plugin maps with "."
  Plug 'tpope/vim-fugitive'                  " A Git wrapper so awesome, it should be illegal.
  Plug 'tpope/vim-surround'                  " Provides mappings to easily delete, change, and add surroundings in pairs.
  Plug 'tpope/vim-speeddating'               " Use CTRL-A/CTRL-X to increment dates, times, and more.
  Plug 'tpope/vim-endwise'                   " Helps to end certain structures automatically.
  Plug 'airblade/vim-rooter'                 " Changes Vim working directory to project root.
  Plug 'pbrisbin/vim-mkdir'                  " Automatically create any non-existent directories before writing the buffer.
  Plug 'kopischke/vim-stay'                  " Make Vim persist editing state without fuss.
  Plug 'mhinz/vim-sayonara'                  " Sane buffer/window deletion.
  Plug 'airblade/vim-matchquote'             " %-style motion for single / double quotation marks, backticks and pipe.
  Plug 'Raimondi/delimitMate'                " Provides insert mode auto-completion for quotes, parens, brackets, etc.
  Plug 'sgur/vim-editorconfig'               " Yet another EditorConfig plugin for vim written in vimscript only.
  Plug 'christoomey/vim-tmux-navigator'      " Seamless navigation between tmux panes and vim splits.
  " Plug 'ludovicchabant/vim-gutentags'        " A Vim plugin that manages your tag files.
  Plug 'Shougo/context_filetype.vim'         " Context filetype library for Vim script?
  Plug 'Shougo/echodoc.vim'                  " Print documents in echo area.
  " Plug 'mattn/webapi-vim'                    " An Interface to WEB APIs.
  Plug 'qpkorr/vim-renamer'                  " Bulk file renaming.

  " === Completion ===
  Plug 'SirVer/ultisnips'
  Plug 'ervandew/supertab' " Perform all your vim insert mode completions with Tab.
  Plug 'mattn/emmet-vim',               {'for': ['jsx', 'html', 'vue', 'gohtml' ]}
  Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'} " Asynchronous completion framework for neovim/Vim8
  Plug 'Shougo/neco-vim'
  Plug 'Shougo/neco-syntax'
  Plug 'Shougo/neoinclude.vim'
  " Plug 'wellle/tmux-complete.vim'
  Plug 'zchee/deoplete-go',             {'for': 'go', 'do':  'make'}
  " Plug 'ujihisa/neco-look'
  " Plug 'zchee/deoplete-clang',         {'for': ['c', 'cpp', 'objc', 'objcpp']}
  " Plug 'tweekmonster/deoplete-clang2', {'for': ['c', 'cpp', 'objc', 'objcpp']}
  " Plug 'Shougo/deoplete-clangx',        {'for': ['c', 'cpp', 'objc', 'objcpp']}
  " Plug 'Rip-Rip/clang_complete',        {'for': ['c', 'cpp', 'objc', 'objcpp']}
  " Plug 'zchee/deoplete-jedi',           {'for': 'python'}
  " Plug 'zchee/deoplete-zsh',            {'for': 'zsh'}
  " Plug 'ponko2/deoplete-fish',          {'for': 'fish'}
  " Plug 'sebastianmarkow/deoplete-rust', {'for': 'rust'}
  " Plug 'fishbullet/deoplete-ruby',      {'for': 'ruby'}
  " Plug 'uplus/deoplete-solargraph',     {'for': 'ruby'}
  " Plug 'padawan-php/deoplete-padawan',  {'for': 'php'}
  " Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
  " Plug 'carlitux/deoplete-ternjs',      {'for': ['jsx', 'javascript' ]}
  " Plug 'fcpg/vim-complimentary',        {'for': 'vim'}  " Improves the completion of VimL builtin functions, commands, variables and options.
  " Plug '1995eaton/vim-better-javascript-completion'

call plug#end()

" ==============================================================================
"  Other Settings
" ==============================================================================

filetype plugin indent on
syntax on
set nocompatible

" Python Settings
if g:uname == 'Darwin'
  let g:python3_host_prog  = '/usr/local/bin/python3'
endif

" ==============================================================================
" === Disable standard plugins ===
" ==============================================================================
let g:loaded_2html_plugin      = 'none'
let g:loaded_logiPat           = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_gzip              = 1
let g:loaded_man               = 1
let g:loaded_matchit           = 1
let g:loaded_matchparen        = 0
let g:loaded_netrwFileHandlers = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_rrhelper          = 1
let g:loaded_shada_plugin      = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_tarPlugin         = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_zipPlugin         = 1


" ==============================================================================
"  === fatih/vim-go === {{{
" ==============================================================================
" let g:go_auto_sameids = 0
" let g:go_snippet_engine = 'ultisnips'
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
let g:go_textobj_enabled = 1
let g:go_textobj_include_function_doc = 1
let g:go_textobj_include_variable = 1
" Use this option to auto |:GoMetaLinter| on save.
let g:go_metalinter_autosave = 0
let g:go_metalinter_enabled = []
let g:go_metalinter_autosave_enabled = []
" Use this option to auto |:GoFmt| on save.
" Default: 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = 'goimports'
let g:go_fmt_options = {}
" This experimental mode is superior to the current mode
" as it fully saves the undo history, so undo/redo doesn't break.
" Default: 0
let g:go_fmt_experimental = 1
" Use this option to disable showing a location list
" when |'g:go_fmt_command'| fails.
" Default: 0
let g:go_fmt_fail_silently = 1
" Use this option to run `godoc` on words under the cursor with |K|; this will
" normally run the `man` program, but for Go using `godoc` is more idiomatic.
" Default: 1
" let g:go_doc_keywordprg_enabled = 0
" Use this option to show the identifier information when completion is done.
" Defualt: 1
let g:go_echo_command_info = 1
" Use this option to show the identifier information when completion is done.
" By default it's enabled
let g:go_echo_go_info = 1

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_function_arguments = 0
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_space_tab_error = 1
" }}}
