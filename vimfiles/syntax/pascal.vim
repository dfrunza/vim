" Vim syntax file
" Language:	Pascal


syn case ignore
syn sync lines=250

syn keyword pascalBoolean	true false
syn keyword pascalConditional	if else then
syn keyword pascalConstant	nil maxint
syn keyword pascalLabel		case goto label
syn keyword pascalRepeat	do for do repeat while to until
syn keyword pascalStatement	procedure function and div downto in mod not of or packed with
syn keyword pascalStatement	program begin end const var type interface implementation uses unit
syn keyword pascalStruct	record
syn keyword pascalType		array boolean char integer file pointer real set
syn keyword pascalType		string text variant
syn match  pascalNumber		"-\=\<\d\+\>"
syn match  pascalFloat		"-\=\<\d\+\.\d\+\>"
syn match  pascalFloat		"-\=\<\d\+\.\d\+[eE]-\=\d\+\>"
syn match  pascalHexNumber	"\$[0-9a-fA-F]\+\>"
syn region pascalComment	start="(\*\|{"  end="\*)\|}" contains=pascalTodo,pascalSpaceError


hi def link pascalBoolean       Boolean
hi def link pascalComment       Comment
hi def link pascalConditional   Conditional
hi def link pascalConstant      Constant
hi def link pascalFloat         Float
hi def link pascalLabel         Label
hi def link pascalNumber        Number
hi def link pascalRepeat        Repeat
hi def link pascalStatement     Statement
hi def link pascalStruct        Statement
hi def link pascalTodo          Todo
hi def link pascalType          Statement


let b:current_syntax = "pascal"

