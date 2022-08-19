" Vim syntax file
" Language:	C


syn keyword	cStatement	goto break return continue asm sizeof struct void char int float double
syn keyword	cLabel		case default
syn keyword	cConditional	if else switch
syn keyword	cRepeat		while for do
syn keyword	cTodo		contained TODO FIXME XXX

" It's easy to accidentally add a space after a backslash that was intended
" for line continuation.  Some compilers allow it, which makes it
" unpredictable and should be avoided.
syn match	cBadContinuation contained "\\\s\+$"

"integer number, or floating point number without a dot and with "f".
syn case ignore
syn match	cNumbers	display transparent "\<\d\|\.\d" contains=cNumber,cFloat,cOctalError,cOctal
" Same, but without octal error (for comments)
syn match	cNumbersCom	display contained transparent "\<\d\|\.\d" contains=cNumber,cFloat,cOctal
syn match	cNumber		display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
"hex number
syn match	cNumber		display contained "0x\x\+\(u\=l\{0,2}\|ll\=u\)\>"
" Flag the first zero of an octal number as something special
syn match	cOctal		display contained "0\o\+\(u\=l\{0,2}\|ll\=u\)\>" contains=cOctalZero
syn match	cOctalZero	display contained "\<0"
syn match	cFloat		display contained "\d\+f"
"floating point number, with dot, optional exponent
syn match	cFloat		display contained "\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\="
"floating point number, starting with a dot, optional exponent
syn match	cFloat		display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match	cFloat		display contained "\d\+e[-+]\=\d\+[fl]\=\>"

syn region	cCommentL	start="//" skip="\\$" end="$" keepend contains=@cCommentGroup,cSpaceError,@Spell
syn region	cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cSpaceError,@Spell extend
syn match	cCommentError	display "\*/"
syn match	cCommentStartError display "/\*"me=e-1 contained


" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link cCommentL           cComment
hi def link cCommentStart       cComment
hi def link cLabel              Label
hi def link cConditional        Conditional
hi def link cRepeat             Repeat
hi def link cNumber             Number
hi def link cOctal              Number
hi def link cFloat              Float
hi def link cOctalError         cError
hi def link cCommentError       cError
hi def link cCommentStartError  cError
hi def link cSpaceError         cError
hi def link cError              Error
hi def link cStatement          Statement
hi def link cType               Type
hi def link cComment            Comment
hi def link cTodo               Todo
hi def link cBadContinuation    Error


let b:current_syntax = "c"

