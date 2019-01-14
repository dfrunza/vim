" Vim syntax file
" Language:         BNF
" Maintainer:       Michael Brailsford
" Last Change:      March 22, 2002

" Quit when a syntax file was already loaded	{{{
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif
"}}}

syn match bnfNonTerminal "<\a\w*>" contained
syn region bnfProduction start="^\s*<\a\w*>" end="::="me=e-3 contained
syn match bnfOperator "|\|(\|)\|{\|}\|\[\|\]\|*" contained
syn match bnfSeparator "::=" contained
syn match bnfSeparator "->" contained
syn region bnfComment start="/\*" end="\*/" contained
"syn region bnfQuoted start="\"" end="\"" contains=bnfNonTerminal,bnfProduction,bnfOperator,bnfSeparator,bnfLiteral,bnfTerminalRangeDelim,bnfTerminalRange
syn match	EscapedChars	display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
syn region bnfQuoted start="'" end="'" contains=EscapedChars
"syn match bnfLiteral #"[ \w]*"# contained
syn match bnfTerminal "^.*$" contains=bnfNonTerminal,bnfProduction,bnfOperator,bnfSeparator,bnfComment,bnfLiteral,bnfTerminalRangeDelim,bnfTerminalRange,bnfQuoted,bnfOperator
syn region bnfTerminalRange matchgroup=bnfTerminalRangeDelim start=#\[# end=#\]# contains=bnfNonTerminal

hi link bnfNonTerminal	 Identifier
hi link bnfProduction    BnfProduction
"hi bnfOperator ctermfg=1 gui=bold guifg=red
hi link bnfOperator      Operator
hi link bnfSeparator     Operator
hi link bnfTerminal      Statement
hi link bnfComment       Comment
hi link bnfTerminalRangeDelim Operator
hi link bnfTerminalRange String
hi link bnfQuoted        String
hi link EscapedChars     Special
"hi link bnfLiteral 	 	String
