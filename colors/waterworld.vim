" Vim color file

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "waterworld"

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:HL(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui  : "NONE")
endfunction


let s:search_2  = "#90e090"
let s:search_1  = "#edf779"
let s:search_0  = "#fff176"
let s:search    = s:search_2

let s:keyword_1 = "#b3e2f2"
let s:keyword_0 = "#7ec0ee"
let s:keyword   = s:keyword_1

let s:normal_0  = "#f8f8f2"
let s:normal    = s:normal_0

let s:bg_3      = "#2b3e50"
let s:bg_2      = "#202020"
let s:bg_1      = "#263238"
let s:bg        = s:bg_3

let s:comment_1 = "#95aeb9"
let s:comment_0 = "#829ca8"
let s:comment   = s:comment_1

let s:string_0  = "#78cf7a"
let s:string    = s:string_0

let s:special_1 = "#d7a0d7"
let s:special_0 = "#ca94ff"
let s:special   = s:special_1

let s:visual_1  = "#0f6cd5"
let s:visual_0  = "#3636c2"
let s:visual    = s:visual_0

let s:error     = "#e53935"
let s:warning_0 = "#ffc271"
let s:warning   = "Yellow2"

let s:border_bg = "Grey65"
let s:border_fg = "#191970"


" Normal should come first
call s:HL("Normal",       {"bg": s:bg,      "fg": s:normal})
call s:HL("NonText",      {"bg": s:bg,      "fg": s:normal})
call s:HL("Statement",    {"bg": s:bg,      "fg": s:keyword})
call s:HL("StorageClass", {"bg": s:bg,      "fg": s:keyword})
call s:HL("Identifier",   {"bg": s:bg,      "fg": s:keyword})
call s:HL("Function",     {"bg": s:bg,      "fg": s:normal})
call s:HL("Type",         {"bg": s:bg,      "fg": s:normal})
call s:HL("PreProc",      {"bg": s:bg,      "fg": s:normal})
call s:HL("Operator",     {"bg": s:bg,      "fg": s:keyword})
call s:HL("Search",       {"bg": s:search,  "fg": "NavyBlue"})
call s:HL("IncSearch",    {"bg": s:search,  "fg": "NavyBlue"})
call s:HL("Comment",      {"bg": s:bg,      "fg": s:comment})
call s:HL("String",       {"bg": s:bg,      "fg": s:string})
call s:HL("Constant",     {"bg": s:bg,      "fg": s:special})
call s:HL("Special",      {"bg": s:bg,      "fg": s:special})
call s:HL("Visual",       {"bg": s:visual,  "fg": "NONE"})
call s:HL("ErrorMsg",     {"bg": s:error,   "fg": s:normal})
call s:HL("Error",        {"bg": s:error,   "fg": s:normal})
call s:HL("WarningMsg",   {"bg": s:warning, "fg": "NavyBlue"})
call s:HL("Cursor",       {"bg": "Red2",   "fg": s:normal})
call s:HL("MatchParen",   {"bg": "#006997", "fg": s:normal})
call s:HL("LineNr",       {"bg": s:border_bg,  "fg": s:border_fg, "gui": "underline"})
call s:HL("StatusLineNC", {"bg": s:border_bg,  "fg": s:border_fg, "gui": "underline"})
call s:HL("StatusLine",   {"bg": s:border_fg,  "fg": s:border_bg, "gui": "reverse,underline"})
call s:HL("VertSplit",    {"bg": s:border_bg,  "fg": s:border_fg, "gui": "underline"})
call s:HL("Title",        {"bg": s:bg, "fg": s:special})
call s:HL("TagbarSignature", {"bg": s:bg, "fg": s:comment})
call s:HL("TagListTagScope", {"bg": s:bg, "fg": s:comment})
call s:HL("Directory",    {"bg": s:bg, "fg": s:keyword})
call s:HL("Pmenu",        {"bg": s:border_bg, "fg": "#191970"})
call s:HL("PmenuSel",     {"bg": s:visual, "fg": s:normal})
call s:HL("Folded",       {"bg": "#364f65", "fg": s:comment})
call s:HL("CursorLine",   {"bg": s:bg, "fg": "NONE", "gui": "NONE"})


"=========================================================================


hi DiffAdd       guibg=LightBlue
hi DiffChange    guibg=LightMagenta
hi DiffDelete    gui=None guifg=Blue guibg=LightCyan
hi DiffText      gui=None guibg=Red
hi FoldColumn    guibg=Grey guifg=DarkBlue
hi ModeMsg       gui=None
hi MoreMsg       gui=None guifg=SeaGreen
hi Question      gui=None guifg=SeaGreen
hi SpecialKey    guifg=Blue
hi WildMenu      guibg=Yellow guifg=Black

" vim: sw=2
