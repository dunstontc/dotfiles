if !exists(':Startify')
  finish
endif

" =============================================================================
"  === Startify ===
" =============================================================================
" " Center our header
function! s:filter_header(lines) abort
    let l:longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
    let l:centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 1) - (l:longest_line / 2)) . v:val')
    return l:centered_lines
endfunction
" let g:startify_custom_header = s:filter_header(startify#fortune#cowsay())
" let g:startify_custom_header = s:filter_header(map(split(system('fortune | cowthink '), '\n'), '"   ". v:val') + ['',''])
" let g:startify_custom_header = map(split(system('fortune | cowthink '), '\n'), '"   ". v:val') + ['','']
let g:startify_custom_header = map(split(system('fortune '), '\n'), '"   ". v:val') + ['','']


" Start numbering from 10
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
" Number of recent files shown
let g:startify_files_number = 10
" Show <empty buffer> and <quit>.
let g:startify_enable_special = 0

let g:startify_session_dir = '~/.config/nvim/sessions'

let g:startify_change_to_dir          = 0
let g:startify_change_to_vcs_root     = 0
let g:startify_fortune_use_unicode    = 1
" let g:startify_use_env                = 1
" let g:startify_session_autoload       = 0
" let g:startify_session_persistence    = 0
" let g:startify_update_oldfiles        = 1



" Reload last session (for use with Tmux)
" set -g @resurrect-processes '"vim->vim +SLoad"'
let g:startify_list_order = [
  \ ['      __                                      ',
  \  '     /  )        /                    /       ',
  \  '    /--<  __ __ /_  ______  __.  __  /_  _    ',
  \  '   /___/_(_)(_)/ <_/ / / <_(_/|_/ (_/ <_/_)_  ' ],
  \ 'bookmarks',
  \ ['                                              ',
  \ '        ____                                 __      ',
  \ '       /\  _`\                              /\ \__   ',
  \ '       \ \ \L\ \     __    ___     __    ___\ \  _\  ',
  \ '        \ \    /   / __ \ / ___\ / __ \/  _  \ \ \/  ',
  \ '         \ \ \\ \ /\  __//\ \__//\  __//\ \/\ \ \ \_ ',
  \ '          \ \_\ \_\ \____\ \____\ \____\ \_\ \_\ \__\',
  \ '           \/_/\/ /\/____/\/____/\/____/\/_/\/_/\/__/',
  \ '                                                     ',
  \ '                                                     '],
  \ 'files',
  \ ['   These are my sessions:'],
  \ 'sessions',
  \ ['   These are my commands:'],
  \ 'commands',
  \ ]
let g:startify_custom_footer =
  \ [' ',' ',' ','','','','']

"   ______                 _
"  / _____)               (_)
" ( (____  _____  ___  ___ _  ___  ____   ___
"  \____ \| ___ |/___)/___) |/ _ \|  _ \ /___)
"  _____) ) ____|___ |___ | | |_| | | | |___ |
" (______/|_____|___/(___/|_|\___/|_| |_(___/
"

