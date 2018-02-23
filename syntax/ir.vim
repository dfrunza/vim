if exists("b:current_syntax")
  finish
endif

syn case match

syn match   ir_stmt_nr "\s\?[0-9]\+:"
syn match   ir_proc_label "[_a-zA-Z][_a-zA-Z0-9]*:"
syn match   ir_label   "L_[_a-zA-Z0-9]*:"
syn keyword ir_statement goto if param call return nop
syn keyword ir_statement and or not mod itof itoc itob ftoi ctoi btoi
syn match   ir_expr_operator "&\|!\||\|\~\|=\|==\|<\|<=\|>\|>=\|+\|-\|*\|/\|^"
syn region	ir_string		start=+L\="+ skip=+\\\\\|\\"+ end=+"+ extend
syn match	  ir_string   "L\='[^\\]'"

hi ir_proc_label  guifg=Black guibg=LightCyan
hi ir_label       guifg=Black guibg=LightCyan

hi def link ir_stmt_nr       LineNr
hi def link ir_statement     Statement
hi def link ir_expr_operator Operator
hi def link ir_string        String
hi def link ir_special       Special

let b:current_syntax = "ir"
