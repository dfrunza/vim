" Vim syntax file
" Language:	HOC

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif


syn case ignore
syn sync lines=250

syn keyword hocBoolean      true false
syn keyword hocConditional  if else
"syn keyword hocConstant	null
syn keyword hocLabel        case goto return break
syn keyword hocKeyword      proc struct module import var type of
syn keyword hocType         array bool char int float void


syn keyword hocTodo contained	TODO FIXME XXX DEBUG NOTE


" String
syn region  hocString matchgroup=hocString start=+'+ end=+'+ contains=hocStringEscape
syn region  hocString matchgroup=hocString start=+"+ end=+"+ contains=hocStringEscapeGPC

syn match   hocStringEscape		contained "\\'"
syn match   hocStringEscapeGPC	contained '\\"'


" syn match   hocIdentifier		"\<[a-zA-Z_][a-zA-Z0-9_]*\>"

syn match   hocSymbolOperator      "[+\-/*=~]"
syn match   hocSymbolOperator      "!\|=\|&\||\|<\|>"
syn match   hocSymbolOperator      "\.\|;\|:"
syn match   hocSymbolOperator       "[\^.]"

syn match  hocNumber		"-\=\<\d\+\>"
syn match  hocFloat		"-\=\<\d\+\.\d\+\>"
syn match  hocFloat		"-\=\<\d\+\.\d\+[eE]-\=\d\+\>"
syn match  hocHexNumber	"\$[0-9a-fA-F]\+\>"

if exists("hoc_no_tabs")
syn match hocShowTab "\t"
endif

syn region hocComment	start="/\*"  end="\*/" contains=hocTodo,hocSpaceError
syn region hocComment	start="//"  end="\n" contains=hocTodo,hocSpaceError


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_hoc_syn_inits")
if version < 508
let did_hoc_syn_inits = 1
command -nargs=+ HiLink hi link <args>
else
command -nargs=+ HiLink hi def link <args>
endif

HiLink hocBoolean       Boolean
HiLink hocComment       Comment
HiLink hocConditional	  Conditional
HiLink hocConstant      Constant
HiLink hocFloat         Float
HiLink hocNumber        Number
HiLink hocOperator      Operator
HiLink hocSpaceError    Error
HiLink hocStatement     Statement
HiLink hocString        String
HiLink hocStringEscape  Special
HiLink hocStringEscapeGPC	Special
HiLink hocStringError   Error
HiLink hocSymbolOperator  Operator
HiLink hocTodo          Todo
HiLink hocType          Type
HiLink hocError         Error
HiLink hocShowTab       Error
HiLink hocLabel         Label
HiLink hocKeyword       Statement

delcommand HiLink
endif


let b:current_syntax = "hoc"

