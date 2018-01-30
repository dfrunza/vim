if exists("b:current_syntax")
  finish
endif

syn case match

syn match ir_stmt_nr "\s\+[0-9]\+:"
syn match ir_label   "\(L_\)[0-9]\+\(:\|$\)"
syn match ir_label   "[_a-z]\+:"
syn keyword ir_statement goto if param call return nop
syn match ir_expr_operator "&\|!\||\|\~\|=\|==\|<\|<=\|>\|>=\|+\|-\|*\|/\|^"
syn keyword ir_expr_operator and or not mod itof itoc itob ftoi ctoi btoi 

hi link ir_stmt_nr LineNr
hi link ir_label DiffDelete
hi link ir_statement Statement
hi link ir_expr_operator Operator

let b:current_syntax = "ir"
