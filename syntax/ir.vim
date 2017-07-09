" Vim syntax file

" For version 5.x: Clear all syntax items
" For version 6.0 and later: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case match

syn match decNumber		"[0-9]\d*"
syn keyword irTodo		contained TODO
syn match irComment		"[#;!|].*" contains=irTodo

syn keyword irDirective push pushf pop load store alloc dup
syn keyword irDirective print printnl
syn keyword irDirective add sub mul div addf subf mulf divf mod incr decr and or not neg negf
syn keyword irDirective cmpeq cmpneq cmplss cmpgrt float_to_int int_to_float
syn keyword irDirective jumpz jumpnz goto halt noop label call return enter leave
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

  HiLink decNumber	Constant

  "HiLink irIdentifier	Identifier
  "HiLink irType        Type
endif

delcommand HiLink

let b:current_syntax = "ir"

" vim: ts=8
