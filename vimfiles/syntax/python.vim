" Vim syntax file
" Language:	Python

syntax clear

syn keyword pythonConstant	False None True
syn keyword pythonStatement	from import as assert break continue del exec global
syn keyword pythonStatement	lambda nonlocal pass print return with yield
syn keyword pythonStatement	class def 
syn keyword pythonStatement	object
syn keyword pythonConditional   elif else if
syn keyword pythonRepeat	for while
syn keyword pythonException	except finally raise try
syn keyword pythonTodo		FIXME NOTE NOTES TODO XXX contained
syn match   pythonComment   "#.*$" contains=pythonTodo,@Spell


hi def link pythonConstant    Constant
hi def link pythonStatement   Statement
hi def link pythonConditional Conditional
hi def link pythonRepeat      Repeat
hi def link pythonOperator	Operator
hi def link pythonException	Exception
hi def link pythonDecorator	Define
hi def link pythonFunction	Function
hi def link pythonComment	Comment
hi def link pythonTodo		Todo
hi def link pythonString	String
hi def link pythonRawString	String
hi def link pythonEscape	Special


let b:current_syntax = "python"

