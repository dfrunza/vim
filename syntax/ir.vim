" Vim syntax file

" For version 5.x: Clear all syntax items
" For version 6.0 and later: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

" Various #'s as defined by GAS ref manual sec 3.6.2.1
" Technically, the first decNumber def is actually octal,
" since the value of 0-7 octal is the same as 0-7 decimal,
" I (Kevin) prefer to map it as decimal:
syn match decNumber		"0\+[1-7]\=[\t\n$,; ]"
syn match decNumber		"[1-9]\d*"

syn keyword irTodo		contained TODO

syn match irComment		"[#;!|].*" contains=irTodo

syn case match

syn keyword irDirective push pop load store add sub alloc label call return jumpz jumpnz goto halt
syn keyword irRegister fp sp ip

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_ir_syn_inits")
  if version < 508
    let did_ir_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  "HiLink irSection	Special
  "HiLink irLabel       Label
  HiLink irComment	Comment
  HiLink irTodo         Todo
  HiLink irDirective	Statement
  HiLink irRegister     Special

  "HiLink irInclude	Include
  "HiLink irCond        PreCondit
  "HiLink irMacro       Macro

  HiLink decNumber	Number

  "HiLink irIdentifier	Identifier
  "HiLink irType        Type
endif

delcommand HiLink

let b:current_syntax = "ir"

" vim: ts=8
