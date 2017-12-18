" " ==============================================================================
" " File:        todo.txt.vim
" " Description: Todo.txt syntax settings
" " Additional:  Clay Dunston <dunstontc@gmail.com>
" " Author:      Leandro Freitas <freitass@gmail.com>
" " License:     Vim license
" " Website:     http://github.com/freitass/todo.txt-vim
" " Version:     0.3.1
" " ==============================================================================
"
" if exists("b:current_syntax")
"     finish
" endif
"
" syntax  match  TodoComment    '^#\s.\+$'
" syntax  match  TodoDone       '^[xX]\s.\+$'
" syntax  match  TodoPriorityA  '^([aA])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityB  '^([bB])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityC  '^([cC])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityD  '^([dD])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityE  '^([eE])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityF  '^([fF])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityG  '^([gG])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityH  '^([hH])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityI  '^([iI])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityJ  '^([jJ])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityK  '^([kK])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityL  '^([lL])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityM  '^([mM])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityN  '^([nN])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityO  '^([oO])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityP  '^([pP])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityQ  '^([qQ])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityR  '^([rR])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityS  '^([sS])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityT  '^([tT])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityU  '^([uU])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityV  '^([vV])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityW  '^([wW])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityX  '^([xX])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityY  '^([yY])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
" syntax  match  TodoPriorityZ  '^([zZ])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoExtra,TodoString,OverDueDate
"
" syntax  match  TodoDate       '\d\{2,4\}-\d\{2\}-\d\{2\}'         contained
" " syntax  match  TodoDate       '\(\d|\)-\d\{2\}-\d\{2\}'         contained
" syntax  match  TodoProject    '\(^\|\W\)+[^[:blank:]]\+'        contained
" syntax  match  TodoContext    '\(^\|\W\)@[^[:blank:]]\+'        contained
" " syntax  match  TodoExtra      '\(due\|t\|rec\|id\|link\)\:\S*\ze' contained
" syntax  match  TodoExtra      '\(due\|t\|rec\|id\|link\)\:\S*'  contained
" syntax  match  TodoString     '`\(.*\)`'                        contained
"
" " Other priority colours might be defined by the user
" highlight  default  link  TodoDone       Comment
" highlight  default  link  TodoPriorityA  Constant
" highlight  default  link  TodoPriorityB  Statement
" highlight  default  link  TodoPriorityC  Identifier
" highlight  default  link  TodoDate       PreProc
" highlight  default  link  TodoProject    Special
" highlight  default  link  TodoContext    Special
" highlight  default  link  TodoExtra      Special
" highlight  default  link  TodoString     String
"
" let b:current_syntax = "todo"

