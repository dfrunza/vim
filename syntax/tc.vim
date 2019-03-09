" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword tcKeyword   proc var return if while
syn region tcDoubleQuotedString start="\"" end="\""
syn region tcSingleQuotedString start="'" end="'"
syn region tcComment start="/\*" end="\*/"
syn match	tcNumber "\d\+\(u\=l\{0,2}\|ll\=u\)\>"

hi link tcDoubleQuotedString String
hi link tcKeyword Keyword
hi link tcComment Comment
hi link tcNumber Constant
