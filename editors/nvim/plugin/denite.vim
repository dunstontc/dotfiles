" ==============================================================================
"   Denite
" ==============================================================================

call denite#custom#option('default', {
  \ 'prompt':                  '❯ ',
  \ 'auto_accel':              v:true,
  \ 'auto_preview':            v:false,
  \ 'auto_resize':             v:true,
  \ 'cursor_shape':            v:true,
  \ 'cursor_wrap':             v:true,
  \ 'reversed':                v:true,
  \ 'statusline':              v:false,
  \ 'updatetime':              1,
  \ 'scroll':                  1,
  \ 'source_names':            '',
  \ 'prompt_highlight':        'helpSpecial',
  \ 'highlight_matched_char':  'Search',
  \ 'highlight_matched_range': 'CursorLine',
  \ 'highlight_mode_normal':   'deniteModeNormal',
  \ 'highlight_mode_insert':   'deniteModeInsert',
  \ 'highlight_preview_line':  'String',
  \ })

  " \ 'cursorline':              v:true,
  " \ 'auto_highlight':          v:true,
  " \ 'winheight':              10,
" \ 'source_names':           'long',

" buffer source
call denite#custom#var(
  \ 'buffer',
  \ 'date_format', '%m-%d-%Y %H:%M:%S')


if executable('ag')
  " The Silver Searcher
  call denite#custom#var('file_rec', 'command',
       \ ['ag', '-U', '--hidden', '--follow', '--nocolor', '--nogroup', '-g', ''])

  " Setup ignore patterns in your .agignore file!
  " https://github.com/ggreer/the_silver_searcher/wiki/Advanced-Usage
  call denite#custom#var('grep', 'command', ['ag'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#var('grep', 'default_opts',
       \ [ '--skip-vcs-ignores', '--vimgrep', '--smart-case', '--hidden' ])
endif


" ==============================================================================


call denite#custom#map('insert', '<Esc>',  '<denite:enter_mode:normal>',           'noremap')
call denite#custom#map('insert', '<C-q>',  '<denite:enter_mode:normal>',           'noremap')
call denite#custom#map('insert', '𐌘',      '<denite:enter_mode:normal>',           'noremap')
call denite#custom#map('insert', '<C-v>',  '<denite:do_action:vsplit>',            'noremap')
call denite#custom#map('insert', '<C-x>',  '<denite:do_action:split>',             'noremap')
call denite#custom#map('insert', '<C-p>',  '<denite:move_to_next_line>',           'noremap')
call denite#custom#map('insert', '<C-n>',  '<denite:move_to_previous_line>',       'noremap')
call denite#custom#map('insert', '<C-h>',  '<denite:delete_word_before_caret>',    'noremap') " TODO: See if this works, remove if not.
call denite#custom#map('insert', '<C-a>',  '<denite:move_caret_to_one_word_left>', 'noremap')
" call denite#custom#map('insert', '<M-left>',   '<denite:move_caret_to_one_word_left>', 'noremap')
" call denite#custom#map('insert', '<M-right>',  '<denite:move_caret_to_end_of_word>', 'noremap')
" call denite#custom#map('insert', '<>',  '<denite:>', 'noremap')

" call denite#custom#map('insert', '<ScrollWheelUp>',    '<denite:move_to_next_line>',     'noremap')
" call denite#custom#map('insert', '<ScrollWheelDown>',  '<denite:move_to_previous_line>', 'noremap')

call denite#custom#map('normal', '<Esc>',  '<NOP>',                          'noremap')
call denite#custom#map('normal', '<C-q>',  '<NOP>',                          'noremap')
call denite#custom#map('normal', '𐌘',      '<NOP>',                          'noremap')
call denite#custom#map('normal', 'n',      '<NOP>',                          'noremap')
call denite#custom#map('normal', 'a',      '<denite:do_action:add>',         'noremap')
call denite#custom#map('normal', 'd',      '<denite:do_action:delete>',      'noremap')
call denite#custom#map('normal', 'r',      '<denite:do_action:reset>',       'noremap')
call denite#custom#map('normal', '<C-v>',  '<denite:do_action:vsplit>',      'noremap')
call denite#custom#map('normal', '<C-x>',  '<denite:do_action:split>',       'noremap')


" " KEY MAPPINGS
" let s:insert_mode_mappings = [
"       \  ['jk', '<denite:enter_mode:normal>', 'noremap'],
"       \ ['<Tab>', '<denite:move_to_next_line>', 'noremap'],
"       \ ['<S-tab>', '<denite:move_to_previous_line>', 'noremap'],
"       \  ['<Esc>', '<denite:enter_mode:normal>', 'noremap'],
"       \  ['<C-N>', '<denite:assign_next_matched_text>', 'noremap'],
"       \  ['<C-P>', '<denite:assign_previous_matched_text>', 'noremap'],
"       \  ['<Up>', '<denite:assign_previous_text>', 'noremap'],
"       \  ['<Down>', '<denite:assign_next_text>', 'noremap'],
"       \  ['<C-Y>', '<denite:redraw>', 'noremap'],
"       \ ]
"
" let s:normal_mode_mappings = [
"       \   ["'", '<denite:toggle_select_down>', 'noremap'],
"       \   ['<C-n>', '<denite:jump_to_next_source>', 'noremap'],
"       \   ['<C-p>', '<denite:jump_to_previous_source>', 'noremap'],
"       \   ['gg', '<denite:move_to_first_line>', 'noremap'],
"       \   ['st', '<denite:do_action:tabopen>', 'noremap'],
"       \   ['sg', '<denite:do_action:vsplit>', 'noremap'],
"       \   ['sv', '<denite:do_action:split>', 'noremap'],
"       \   ['q', '<denite:quit>', 'noremap'],
"       \   ['r', '<denite:redraw>', 'noremap'],
"       \ ]


" nnoremap <C-p> :<C-u>Denite file_rec<CR>
" nnoremap <leader>s :<C-u>Denite buffer<CR>
" nnoremap <leader>8 :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
" nnoremap <leader>/ :<C-u>Denite grep:. -mode=normal<CR>
" nnoremap <leader>/ :<C-u>DeniteBufferDir grep:. -mode=normal<CR>


" ==============================================================================
" === denite-extra  ===
" ==============================================================================
" nnoremap <leader>o :<C-u>Denite location_list -mode=normal -no-empty<CR>
" nnoremap <leader>hs :<C-u>Denite history:search -mode=normal<CR>
" nnoremap <leader>hc :<C-u>Denite history:cmd -mode=normal<CR>
call denite#custom#var('commands', 'config', '~/commands.json')


" ==============================================================================
"  vim-denite-sessions
" ==============================================================================
call denite#custom#var('session', 'path', '~/.config/nvim/sessions')
" call denite#custom#var('session', 'path', '~/.vim-sessions')


" ==============================================================================
"  denite-z
" ==============================================================================
call denite#custom#var('z', 'order', 'frecent')

call denite#custom#source('z', 'sorters', ['sorter_z'])

command! -nargs=+ -complete=command Z
      \ call denite#start([{'name': 'z', 'args': [<q-args>]}])


" ==============================================================================
"  === rafi/vim-denite-task ===
" ==============================================================================

call denite#custom#var('task', 'taskrc', '~/.taskrc')
call denite#custom#var('task', 'data_dir', '~/.task')
call denite#custom#var('task', 'format', '{id:3.3} | {priority:1.1} | {project:15.15} | {description:40.40} | {entry} | {due}')
call denite#custom#var('task', 'date_format', '%y-%m-%d %H:%M')
" call denite#custom#var('task', 'label_width', 17)


" ==============================================================================
"  Custom Menus
" ==============================================================================

let s:menus = {}

let s:menus.config = { 'description': ' Neovim Settings' }
let s:menus.config.command_candidates = [
  \ ['Menu -- Denite',        'Denite menu:Denite'],
  \ [' Snippets/',           'VimFiler -explorer ~/.dotfiles/editors/nvim/snipz'],
  \ [' after/plugin/',       'VimFiler -explorer ~/.dotfiles/editors/nvim/after/plugin'],
  \ [' ftplugin/',           'VimFiler -explorer ~/.dotfiles/editors/nvim/ftplugin'],
  \ ]
let s:menus.config.file_candidates = [
  \ [' init.vim',              '~/.dotfiles/editors/nvim/init.vim'],
  \ [' Settings',              '~/.dotfiles/editors/nvim/plugin/settings.vim'],
  \ [' Plugin Settings',       '~/.dotfiles/editors/nvim/plugin/plugins.vim'],
  \ [' Mappings',              '~/.dotfiles/editors/nvim/plugin/mappings.vim'],
  \ [' Filetypes',             '~/.dotfiles/editors/nvim/filetype.vim'],
  \ [' Theme - DarkPlus',      '~/Projects/vim/vim-code-dark/colors/codedark.vim'],
  \ [' Denite',                '~/.dotfiles/editors/nvim/plugin/denite.vim'],
  \ [' Lightline',             '~/.dotfiles/editors/nvim/plugin/lightline.vim'],
  \ [' Lightline Theme',       '~/.dotfiles/editors/nvim/autoload/lightline/DarkPlus.vim'],
  \ [' Statusline - Handmade', '~/.dotfiles/editors/nvim/plugin/statline.vim'],
  \ [' Completion',            '~/.dotfiles/editors/nvim/plugin/completion.vim'],
  \ [' Autocommands',          '~/.dotfiles/editors/nvim/plugin/autocmnds.vim'],
  \ [' Commands',              '~/.dotfiles/editors/nvim/plugin/commands.vim'],
  \ ['λ Functions',             '~/.dotfiles/editors/nvim/autoload/functions.vim'],
  \ [' Cheatsheet',            '~/.dotfiles/editors/nvim/doc/cheat40.txt'],
  \ ]

" ==============================================================================

let s:menus.dotfiles = { 'description': ' Edit $HOME/.dotfiles' }
let s:menus.dotfiles.file_candidates = [
  \ [' .zshrc',              '~/.dotfiles/shell/zsh/.zshrc'],
  \ [' prompt.zsh',          '~/.dotfiles/shell/zsh/prompt.zsh'],
  \ [' .bashrc',             '~/.dotfiles/shell/bash/.bashrc'],
  \ [' .inputrc',            '~/.dotfiles/shell/bash/.inputrc'],
  \ [' config.fish',         '~/.dotfiles/shell/fish/config.fish'],
  \ [' .aliases',            '~/.dotfiles/shell/.aliases'],
  \ [' .exports',            '~/.dotfiles/shell/.exports'],
  \ [' .functions',          '~/.dotfiles/shell/.functions'],
  \ [' .path',               '~/.dotfiles/shell/.path'],
  \ [' .highlight',          '~/.dotfiles/shell/.highlight'],
  \ [' Vim8',                '~/.dotfiles/editors/vim/.vimrc'],
  \ [' init.el',             '~/.dotfiles/editors/emacs/init.el'],
  \ [' .tmux.conf',          '~/.dotfiles/config/tmux/.tmux.conf'],
  \ [' .hyper.js',           '~/.dotfiles/config/.hyper.js'],
  \ [' Kitty',               '~/.dotfiles/config/kitty/kitty.conf'],
  \ [' Alacritty',           '~/.dotfiles/config/alacritty.yml'],
  \ [' Hammerspoon',         '~/.dotfiles/config/hammerspoon/init.lua'],
  \ [' Taskwarrior',         '~/.dotfiles/misc/.taskrc'],
  \ ['dark-plus.yml',         '~/.dotfiles/misc/dark-plus.yml'],
  \ [' files.yaml',          '~/.dotfiles/config/lscolors/files.yaml'],
  \ [' file_aliases.yaml',   '~/.dotfiles/config/lscolors/file_aliases.yaml'],
  \ [' folders.yaml',        '~/.dotfiles/config/lscolors/folders.yaml'],
  \ [' folder_aliases.yaml', '~/.dotfiles/config/lscolors/folder_aliases.yaml'],
  \ [' Projects',            '~/Projects/projects.json'],
  \ ['vifmrc',                '~/.dotfiles/config/vifm/vifmrc'],
  \ ['dark-plus.vifm',        '~/.dotfiles/config/vifm/colors/dark-plus.vifm'],
  \ [' .editorconfig',       '~/.dotfiles/.editorconfig'],
  \ ]

" ==============================================================================

let s:menus.FZF = { 'description': 'FZF Actions' }
let s:menus.FZF.command_candidates = [
  \ ['Git files (git status)',             'GFiles?'],
  \ ['Open Buffers',                       'Buffers'],
  \ ['Color Schemes',                      'Colors'],
  \ ['Marks',                              'Marks'],
  \ ['Windows',                            'Windows'],
  \ ['v:oldfiles & Open Buffers',          'History'],
  \ ['Command History:',                   'History:'],
  \ ['Search History/',                    'History/'],
  \ ['Snippets (Ultisnips)',               'Snippets'],
  \ ['Git Commits',                        'Commits'],
  \ ['Git commits for the current buffer', 'BCommits'],
  \ ['Commands',                           'Commands'],
  \ ['Normal Mode Mappings',               'Maps'],
  \ ['Helptags [1]',                       'Helptags'],
  \ ['File types',                         'Filetypes'],
  \ ]
  " \ ['Locate PATTERN',                     '`Locate` command output'],
" \ ['Files (similar to :FZF)',            'Files [PATH]'],
" \ ['Git Giles (git ls-files)',           'GFiles [OPTS]'],
" \ ['',                                   'Ag [PATTERN]'],
" \ ['',                                   'Lines [QUERY]'],
" \ ['',                                   'BLines [QUERY]'],
" \ ['',                                   'Tags [QUERY]'],
" \ ['',                                   'BTags [QUERY]'],

" ==============================================================================

let s:menus.Denite = { 'description': ' Denite Commands' }
let s:menus.Denite.command_candidates = [
  \ [' ALE',                  'Denite ale'],
  \ [' Buffers',              'Denite buffer'],
  \ [' Changes',              'Denite change'],
  \ [' Colorschemes',         'Denite colorscheme'],
  \ [' Autocommands',         'Denite autocmd'],
  \ [' User Commands',        'Denite commands'],
  \ [' Vim Commands',         'Denite command'],
  \ [' Command History',      'Denite command_history -default-action=edit_and_execute'],
  \ [' Dein',                 'Denite dein'],
  \ [' Deol',                 'Denite deol'],
  \ [' Filetypes',            'Denite filetype'],
  \ [' JS Func',              'Denite func'],
  \ [' GHQ',                  'Denite ghq'],
  \ [' Grep',                 'Denite grep'],
  \ [' Help',                 'Denite help'],
  \ [' History',              'Denite history'],
  \ [' Jumplist',             'Denite jump'],
  \ [' Junkfiles',            'Denite junkfile'],
  \ [' Lines',                "Denite Denite -buffer-name=search%`bufnr('%')` line<CR>"],
  \ [' Location List',        'Denite location_list'],
  \ [' Marks',                'Denite marks'],
  \ [' Mappings',             'Denite mappings'],
  \ [' Mappings/Verbose',     'Denite mappings_verbose'],
  \ [' NeoMRU Directories',   'Denite directory_mru'],
  \ [' NeoMRU Files',         'Denite file_mru'],
  \ [' Neoyank',              'Denite neoyank'],
  \ [' Node',                 'Denite node'],
  \ [' Outline',              'Denite outline'],
  \ [' Project',              'Denite project'],
  \ [' Projectile/projects',  'Denite projectile'],
  \ [' Projectile/bookmarks', 'Denite bookmark'],
  \ [' Quickfix List',        'Denite quickfix'],
  \ [' Recent Directories',   'Denite directory_rec'],
  \ [' Recent Files',         'Denite file_rec'],
  \ [' Registers',            'Denite register'],
  \ [' Sample',               'Denite sample'],
  \ [' Sessions',             'Denite session'],
  \ [' Symbols',              'Denite workspaceSymbol'],
  \ [' Tags',                 'Denite tag'],
  \ [' Taskwarrior',          'Denite task'],
  \ [' Todos',                'Denite todos'],
  \ [' Unite',                'Denite unite'],
  \ [' Z (Jump Around)',      'Denite z'],
  \ [' Menu -- FZF',          'Denite menu:FZF'],
  \ [' Menu -- Config',       'Denite menu:config'],
  \ [' Menu -- .dotfiles',    'Denite menu:dotfiles'],
  \ [' Menu -- Fugitive',     'Denite menu:git'],
  \ ]

" ==============================================================================

" Thanks Mike -- https://github.com/mhartington/dotfiles
let s:menus.Fugitive = { 'description' : ' Fugitive interface' }
let s:menus.Fugitive.command_candidates = [
  \ ['git status',              'Gstatus'],
  \ ['git diff',                'Gvdiff'],
  \ ['git commit',              'Gcommit'],
  \ ['git stage/add',           'Gwrite'],
  \ ['git checkout',            'Gread'],
  \ ['git rm',                  'Gremove'],
  \ ['git cd',                  'Gcd'],
  \ ['git push',                'exe "Git! push " input("remote/branch: ")'],
  \ ['git pull',                'exe "Git! pull " input("remote/branch: ")'],
  \ ['git pull rebase',         'exe "Git! pull --rebase " input("branch: ")'],
  \ ['git checkout branch',     'exe "Git! checkout " input("branch: ")'],
  \ ['git fetch',               'Gfetch'],
  \ ['git merge',               'Gmerge'],
  \ ['git browse',              'Gbrowse'],
  \ ['git head',                'Gedit HEAD^'],
  \ ['git parent',              'edit %:h'],
  \ ['git log commit buffers',  'Glog --'],
  \ ['git log current file',    'Glog -- %'],
  \ ['git log last n commits',  'exe "Glog -" input("num: ")'],
  \ ['git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
  \ ['git log until date',      'exe "Glog --until=" input("day: ")'],
  \ ['git log grep commits',    'exe "Glog --grep= " input("string: ")'],
  \ ['git log pickaxe',         'exe "Glog -S" input("string: ")'],
  \ ['git index',               'exe "Gedit " input("branchname\:filename: ")'],
  \ ['git mv',                  'exe "Gmove " input("destination: ")'],
  \ ['git grep',                'exe "Ggrep " input("string: ")'],
  \ ['git prompt',              'exe "Git! " input("command: ")'],
  \ ]


" ==============================================================================

call denite#custom#var('menu', 'menus', s:menus)
" enable unite menu compatibility
" call denite#custom#var('menu', 'unite_source_menu_compatibility', 1)


" ==============================================================================
"  unite-location
" ==============================================================================

" nnoremap <silent> <space>p  :<C-u>Denite -resume<CR>
" nnoremap <silent> <space>j  :call execute('Denite -resume -select=+'.v:count1.' -immediately')<CR>
" nnoremap <silent> <space>k  :call execute('Denite -resume -select=-'.v:count1.' -immediately')<CR>
" nnoremap <silent> <space>q  :<C-u>Denite -mode=normal -auto-resize quickfix<CR>
" nnoremap <silent> <space>l  :<C-u>Denite -mode=normal -auto-resize location_list<CR>


" ==============================================================================
"  === neoyank ===
" ==============================================================================

let g:neoyank#limit=100
" let g:neoyank#file=~/.cache/neoyank/history_yank
" let g:neoyank#save_registers=['"']


" ==============================================================================
"   Unite
" ==============================================================================
" call unite#filters#matcher_default#use(['matcher_fzf'])
" call unite#filters#sorter_default#use(['sorter_rank'])
" let g:unite_source_history_yank_enable = 1
call unite#custom#profile('default', 'context', {
      \  'safe': 1,
      \  'start_insert': 1,
      \  'ignorecase' : 1,
      \  'update_time': 1,
      \  'direction': 'rightbelow',
      \  'max_candidates': 100,
      \  'auto_resize': 1,
      \  'hide_icon': 0,
      \  'candidate-icon': ' ',
      \  'marked_icon': '✓',
      \  'prompt' : '❯❯ '
      \})
" call unite#custom#profile('default', 'context', {
"       \   'safe': 1,
"       \   'start_insert': 0,
"       \   'ignorecase' : 1,
"       \   'short_source_names': 0,
"       \   'update_time': 200,
"       \   'direction': 'rightbelow',
"       \   'winwidth': 0,
"       \   'winheight': 15,
"       \   'max_candidates': 100,
"       \   'no_auto_resize': 1,
"       \   'vertical_preview': 1,
"       \   'cursor_line_time': '0.10',
"       \   'hide_icon': 0,
"       \   'candidate-icon': ' ',
"       \   'marked_icon': '✓',
"       \   'prompt' : '❯❯ '
"       \ })
" nnoremap <C-p> :Unite file_rec/async<cr>
" nnoremap <space>/ :Unite grep:.<cr>

" let g:unite_source_file_rec_max_depth = 6
" let g:unite_source_grep_default_opts =
"       \ '-i --vimgrep --hidden --ignore ' .
"       \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
" let g:unite_source_grep_recursive_opt = ''
"
" call unite#custom#profile('file_rec/async', 'context', {
"       \   'start_insert' : 1,
"       \   'quit'         : 1,
"       \   'split'        : 1,
"       \   'keep_focus'   : 1,
"       \   'winheight'    : 20,
"       \ })

" ==============================================================================
"  === vim-bookmarks ===
" ==============================================================================

call unite#custom#profile('source/vim_bookmarks', 'context', {
  \   'winheight': 13,
  \   'direction': 'botright',
  \   'start_insert': 1,
  \   'keep_focus': 1,
  \   'no_quit': 1,
  \ })

