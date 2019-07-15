if !exists(':Calendar')
  finish
endif

" =============================================================================
"  === calendar.vim ===
" =============================================================================
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

let g:calendar_locale='en/us'
let g:calendar_first_day='sunday'
let g:calendar_date_separator='/'
let g:calendar_date_month_name=1
let g:calendar_date_full_month_name=1
let g:calendar_week_number=1
let g:calendar_task=1
let g:calendar_cyclic_view=0

let g:calendar_updatetime=200
let g:calendar_yank_deleting=1
let g:calendar_task_delete=0
" let g:calendar_cache_directory= ~/.cache/calendar.vim

let g:calendar_debug=0

" let g:calendar_event_start_time=
let g:calendar_event_start_time_minwidth=16
let g:calendar_clock_12hour=1
let g:calendar_frame='unicode_round'
" let g:calendar_message_prefix="[calendar] "
let g:calendar_view='month'
let g:calendar_views=['year', 'month', 'week', 'day_4', 'day', 'clock']
	" 'year', 'month', 'week', 'weekday',
			" 'day_7', 'day_6', 'day_5', 'day_4',
			" 'day_3', 'day_2', 'day_1', 'day',
			" 'clock', 'event', 'agenda'


" Problem 10:					*calendar-problem-10*
	" Authorization to Google fails again and again.

		" Remove the cache directory and reauthorize to Google. >
		" rm -rf ~/.cache/calendar.vim/google/

" augroup calendar-mappings
"   autocmd!
"
"   " diamond cursor
"   autocmd FileType calendar nmap <buffer> i <Plug>(calendar_up)
"   autocmd FileType calendar nmap <buffer> j <Plug>(calendar_left)
"   autocmd FileType calendar nmap <buffer> k <Plug>(calendar_down)
"   autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)
"
"   " swap v and V
"   autocmd FileType calendar nmap <buffer> V <Plug>(calendar_visual)
"   autocmd FileType calendar nmap <buffer> v <Plug>(calendar_visual_line)
"
"   " unmap <C-n>, <C-p> for other plugins
"   autocmd FileType calendar nunmap <buffer> <C-n>
"   autocmd FileType calendar nunmap <buffer> <C-p>
" augroup END
