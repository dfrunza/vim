" Vim color file

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "BlueSmoke"

" Prospective colors
" SlateBlue, DeepSkyBlue, BlueViolet, LightCyan

" Normal should come first
"Blue BG: #F8F8FF
"Cyan FG: (lighter) #0D7681, (darker) #0A5E67
"Pencil BG: #F1F1F1
hi Normal	      guifg=Grey15 guibg=White 

"Cold hue: #607d8b, #858E8F
"Warm hue: Grey50
hi Comment         guifg=Green4

hi String          guifg=Green4
hi Character       guifg=Green4
hi Constant        guifg=Red4
hi Operator        guifg=Red4
hi SyntaxChar      guifg=Cyan4

hi Statement       guifg=Blue3 gui=none
hi StorageClass    guifg=Blue3
hi Keyword         guifg=Blue3

hi Identifier      guifg=Black

" Github: #BA1D5D, #6E49BC
hi Function        guifg=#5C3CA2

" Pencil: #008EC4 
hi Type            guifg=#0080B0 gui=none
hi PreProc         guifg=Magenta4

" printf() formatting specifiers
hi Special         guifg=Orange3


hi Cursor       guifg=White	guibg=Red
hi lCursor      guifg=NONE guibg=Cyan

"#338FFF
hi Visual       guifg=White guibg=DeepSkyBlue
hi VisualNOS    gui=underline


hi Folded       guifg=#808080 guibg=#ECECEC gui=none

hi StatusLineNC	guifg=Grey75 guibg=NavyBlue gui=reverse,underline
hi VertSplit    guifg=Grey75 guibg=NavyBlue
hi StatusLine   guifg=NavyBlue guibg=Grey75 gui=underline

hi LineNr       guifg=#959595 guibg=#ECECEC
hi CursorLine   guibg=#FFF4CE

hi DiffAdd       guibg=LightBlue
hi DiffChange    guibg=LightMagenta
hi DiffDelete    gui=none guifg=Black guibg=LightCyan
hi DiffText      gui=bold guibg=Red
hi Directory     guifg=Blue
hi ErrorMsg      guibg=White guifg=DarkRed	   
hi Error         guibg=White guifg=DarkRed	   
hi FoldColumn    guibg=Grey guifg=DarkBlue
hi IncSearch     gui=reverse
hi ModeMsg       gui=bold
hi MoreMsg       gui=bold guifg=SeaGreen
hi NonText       gui=bold guifg=gray guibg=white
hi Pmenu         guibg=LightBlue
hi PmenuSel      guifg=White guibg=DarkBlue
hi Question      gui=bold guifg=SeaGreen
hi Search        guibg=Yellow guifg=NONE
hi SpecialKey    guifg=Blue
hi Title         gui=bold guifg=Magenta
hi WarningMsg    guifg=Red
hi WildMenu      guibg=Yellow guifg=Black

" vim: sw=2
