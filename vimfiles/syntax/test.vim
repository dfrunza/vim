" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword tcKeyword   proc var return if else for while do record enum import and or not mod
syn match tcStringEscapeSequence contained "\\\"\|\\n"
syn region tcDoubleQuotedString start="\"" end="\"" contains=tcStringEscapeSequence
syn region tcSingleQuotedString start="'" end="'"
syn region tcComment start="/\*" end="\*/"
syn match	tcNumber "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
syn keyword tcConstant null true false

hi link tcDoubleQuotedString String
hi link tcKeyword Keyword
hi link tcComment Comment
hi link tcNumber Constant
hi link tcConstant Constant
