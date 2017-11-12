let g:github_dashboard = {}

let g:github_dashboard = { 'username': 'you', 'password': $GITHUB_TOKEN }

" Dashboard window position
" - Options: tab, top, bottom, above, below, left, right
" - Default: tab
let g:github_dashboard['position'] = 'tab'

" Disable Emoji output
" - Default: only enable on terminal Vim on Mac
let g:github_dashboard['emoji'] = 1

" Customize emoji (see http://www.emoji-cheat-sheet.com)
let g:github_dashboard['emoji_map'] = {
\   'user_dashboard': 'blush',
\   'user_activity':  'smile',
\   'repo_activity':  'laughing',
\   'ForkEvent':      'fork_and_knife'
\ }

" Command to open link URLs
" - Default: auto-detect
" let g:github_dashboard['open_command'] = 'open'

" API timeout in seconds
" - Default: 10, 20
let g:github_dashboard['api_open_timeout'] = 10
let g:github_dashboard['api_read_timeout'] = 20

" Do not set statusline
" - Then you can customize your own statusline with github_dashboard#status()
let g:github_dashboard['statusline'] = 0

" GitHub Enterprise
" let g:github_dashboard['api_endpoint'] = 'http://github.mycorp.com/api/v3'
" let g:github_dashboard['web_endpoint'] = 'http://github.mycorp.com'
