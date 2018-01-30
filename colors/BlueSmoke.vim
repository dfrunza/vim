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
"Orange BG: #FEF1E0, #FFF1E5
"Cyan FG: (lighter) #0D7681, (darker) #0A5E67
"hi Normal		 guifg=Grey10 guibg=White
hi Normal		 guifg=Black guibg=White

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
"#FFF4CE
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

" Syntax highlighting

"Cold hue: #607d8b, #858E8F
"Warm hue: Grey50
hi Comment         guifg=Green4
hi String          guifg=Green4
hi Constant        guifg=Red4
hi Operator        guifg=Red4
hi SyntaxChar      guifg=Cyan4 gui=None

" github #BA1D5D
hi Statement       guifg=Blue3 gui=Bold
hi StorageClass    guifg=Blue3 gui=Bold
hi Identifier      guifg=Magenta4
hi Function        guifg=Magenta4
hi Keyword         guifg=Blue3

hi csClassOrStruct guifg=Blue3
hi Type            guifg=Blue3
hi PreProc         guifg=Magenta4

"Orange3
hi Special         guifg=Magenta4

" vim: sw=2
