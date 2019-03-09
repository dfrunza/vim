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

syn match bnfNonTerminal "\<\a\w*\>"
syn match bnfSeparator "::=" contained
syn match bnfSeparator "->" contained
syn region bnfComment start="/\*" end="\*/"
syn match	EscapedChars	display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
syn region bnfQuoted start="'" end="'" contains=EscapedChars
"syn match bnfTerminal "^.*$" contains=bnfNonTerminal,bnfProduction,bnfSeparator,bnfComment,bnfLiteral,bnfQuoted

hi link bnfNonTerminal	 Identifier
hi link bnfSeparator     Operator
hi link bnfTerminal      Statement
hi link bnfComment       Comment
hi link bnfQuoted        String
hi link EscapedChars     Special
