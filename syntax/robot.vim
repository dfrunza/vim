"=============================================================================
" File:         after/syntax/robot.vim
" Author:       Michael Foukarakis
" Butcher:      Dumitru Frunza
"------------------------------------------------------------------------
" Description:
"       Syntax file for Robot test framework files.
"=============================================================================
let s:cpo_save=&cpo
set cpo&vim

"------------------------------------------------------------------------
" Matches
"------------------------------------------------------------------------
syn match robotNumber               display "\<\d\+\>"
syn match robotEllipsis             display "\.\.\."
" Special (escaped) character as defined in Robot's syntax.
syn match robotSpecial              display "\\\(\${.*}\|\\\|#\|[n|r|t]\)\|\\"
syn match robotVariable             "\(\$\|@\|&\){.\{-}}"
" Operators
syn match robotOperator             "==\|=\|\*\*\*"
syn match robotCommonSet            "\[*\(Documentation\|Arguments\|Tags\|Template\|Timeout\|Return\)\]*"
syn match robotSettings             "\(Settings\|Documentation\|Keywords\|Test Setup\|Test Teardown\|Test Cases\|Force Tags\|Resource\|Variables\|Library\)"

"------------------------------------------------------------------------
" Regions
"------------------------------------------------------------------------
" Single-line comments. Are there multi-line comments?
syn region robotComment     display start="#" excludenl end="$"
"syn region robotComment     display start="\[*\(Documentation\|\.\.\.\)\]*" contains=robotCommonSet,robotSettings,robotEllipsis excludenl end="$"
syn region robotTags        display start="\[*\(Tags\|Force Tags\)\]*" contains=robotCommonSet,robotSettings excludenl end="$"
syn region robotString      start="\"\|\'" excludenl end="\"\|\'"

"------------------------------------------------------------------------
" Links
"------------------------------------------------------------------------
hi def link robotTags               Special
hi def link robotVariable           Variable
hi def link robotSettings           Keyword
hi def link robotComment            Comment
hi def link robotEllipsis           String
hi def link robotImport             Include
hi def link robotSpecial            Special
hi def link robotString             String
hi def link robotNumber             Number
hi def link robotOperator           Operator
hi def link robotCommonSet          Keyword

let b:current_syntax = "robot"
"------------------------------------------------------------------------
let &cpo=s:cpo_save
" vim700: set fdm=marker:
