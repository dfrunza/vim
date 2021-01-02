" Vim color file

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "vc6"

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:HL(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui  : "NONE")
endfunction

" Grey text color: #808080
let s:fg          = "Black"
let s:bg          = "White"
let s:border_bg   = "Grey85"
let s:border_fg   = "Black"


" Normal should come first
call s:HL("Normal",       {"bg": s:bg,      "fg": s:fg})
call s:HL("NonText",      {"bg": s:bg,      "fg": s:fg})
call s:HL("Statement",    {"bg": s:bg,      "fg": "Blue4"})
call s:HL("Keyword",      {"bg": s:bg,      "fg": "Blue4"})
call s:HL("StorageClass", {"bg": s:bg,      "fg": "Blue4"})
call s:HL("Identifier",   {"bg": s:bg,      "fg": s:fg})
call s:HL("Variable",     {"bg": s:bg,      "fg": s:fg})
call s:HL("Operator",     {"bg": s:bg,      "fg": "#007d7d"})
call s:HL("SyntaxChar",   {"bg": s:bg,      "fg": s:fg})
call s:HL("Directory",    {"bg": s:bg,      "fg": "#000080"})
call s:HL("Function",     {"bg": s:bg,      "fg": "Cyan4"})
call s:HL("Type",         {"bg": s:bg,      "fg": "#396ac2"})
call s:HL("pythonClassTag", {"bg": s:bg,      "fg": "#396ac2"})
call s:HL("PreProc",      {"bg": s:bg,      "fg": "#660099"})
call s:HL("Search",       {"bg": "Yellow",  "fg": s:fg})
call s:HL("IncSearch",    {"bg": "Yellow",  "fg": s:fg, "gui": "reverse"})
call s:HL("Comment",      {"bg": s:bg,      "fg": "#808080"})
call s:HL("String",       {"bg": s:bg,      "fg": "#008000", "gui": "bold"})
call s:HL("Constant",     {"bg": s:bg,      "fg": "#771111"})
call s:HL("Special",      {"bg": s:bg,      "fg": "#660099"})
call s:HL("SpecialKey",   {"bg": s:bg,      "fg": "#660099"})
call s:HL("Visual",       {"bg": "#b6d6fd",  "fg": "NONE"})
call s:HL("ErrorMsg",     {"bg": "Red",   "fg": "Yellow", "gui": "bold"})
call s:HL("Error",        {"bg": "Red",   "fg": "Yellow", "gui": "bold"})
call s:HL("WarningMsg",   {"bg": "Red", "fg": "NavyBlue"})
call s:HL("MatchParen",   {"bg": "Cyan",    "fg": s:fg})
call s:HL("LineNr",       {"bg": s:bg,      "fg": "#808080"})
call s:HL("StatusLineNC", {"bg": s:border_bg,   "fg": s:border_fg, "gui": "underline"})
call s:HL("StatusLine",   {"bg": s:border_bg, "fg": s:border_fg, "gui": "underline"})
call s:HL("VertSplit",    {"bg": s:border_bg,   "fg": s:border_fg})
call s:HL("Title",        {"bg": s:bg,          "fg": "#660099"})
call s:HL("Pmenu",        {"bg": s:border_bg,   "fg": "#191970"})
call s:HL("PmenuSel",     {"bg": "SlateBlue",   "fg": s:bg})
call s:HL("CursorLine",   {"bg": "#fff4ce"})
call s:HL("Cursor",       {"bg": "Red",  "fg": s:bg, "gui": "bold"})
call s:HL("Folded",       {"bg": s:bg, "fg": "#808080"})
call s:HL("TagbarSignature", {"bg": s:bg,   "fg": "#008080"})
call s:HL("TagListTagScope", {"bg": s:bg,   "fg": "#008080"})
call s:HL("PythonSelf",      {"bg": s:bg,   "fg": "#94558d"})
call s:HL("BnfProduction",   {"bg": s:bg,   "fg": "#000080"})


"=========================================================================


hi DiffAdd       guibg=LightBlue
hi DiffChange    guibg=LightMagenta
hi DiffDelete    gui=None guifg=Blue guibg=LightCyan
hi DiffText      gui=None guibg=Red
hi FoldColumn    guibg=Grey guifg=DarkBlue
hi ModeMsg       gui=None
hi MoreMsg       gui=None guifg=SeaGreen
hi Question      gui=None guifg=SeaGreen
hi WildMenu      guibg=Yellow guifg=Black

" vim: sw=2
