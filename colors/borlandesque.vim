" Vim color file

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "borlandesque"

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:HL(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style      : "NONE")
endfunction


let s:search    = "#fff176"

let s:keyword_1 = "#9bcce6"
let s:keyword_0 = "#7ec0ee"
let s:keyword   = s:keyword_1

let s:operator  = s:keyword

let s:normal_white  = "#f8f8f2"
let s:normal_1  = "#05b7c5"
let s:normal_0  = "#06d7c1"
let s:normal    = s:normal_white

let s:bg_3      = "#2b3e50"
let s:bg_2      = "#202020"
let s:bg_1      = "#263238"
let s:bg        = s:bg_3

let s:comment_1 = "#5c98cd"
let s:comment_0 = "#829ca8"
let s:comment   = s:comment_0

let s:string_2  = "#81c784"
let s:string_1  = "#72c05d"
let s:string_0  = "#e6db74"
let s:string    = s:string_1

let s:special_1 = "#d7a0d7"
let s:special_0 = "#ca94ff"
let s:special   = s:special_1

let s:visual_0  = "#007171"
let s:visual    = s:visual_0

let s:error     = "#e53935"
let s:warning   = s:search


" Normal should come first
call s:HL("Normal",       {"bg": s:bg,      "fg": s:normal})
call s:HL("Statement",    {"bg": s:bg,      "fg": s:keyword})
call s:HL("StorageClass", {"bg": s:bg,      "fg": s:normal})
call s:HL("Identifier",   {"bg": s:bg,      "fg": s:normal})
call s:HL("Function",     {"bg": s:bg,      "fg": s:normal})
call s:HL("Type",         {"bg": s:bg,      "fg": s:normal})
call s:HL("PreProc",      {"bg": s:bg,      "fg": s:normal})
call s:HL("Operator",     {"bg": s:bg,      "fg": s:operator})
call s:HL("Search",       {"bg": s:search,  "fg": "Black"})
call s:HL("IncSearch",    {"bg": s:search,  "fg": "Black"})
call s:HL("Comment",      {"bg": s:bg,      "fg": s:comment})
call s:HL("String",       {"bg": s:bg,      "fg": s:string})
call s:HL("Constant",     {"bg": s:bg,      "fg": s:special})
call s:HL("Special",      {"bg": s:bg,      "fg": s:special})
call s:HL("Visual",       {"bg": s:visual,  "fg": "NONE"})
call s:HL("ErrorMsg",     {"bg": s:error,   "fg": s:normal})
call s:HL("Error",        {"bg": s:error,   "fg": s:normal})
call s:HL("WarningMsg",   {"bg": s:warning, "fg": "Black"})
call s:HL("Cursor",       {"bg": s:error,   "fg": s:normal})
call s:HL("MatchParen",   {"bg": s:visual,  "fg": s:normal})


hi lCursor      guifg=NONE guibg=Yellow
hi CursorLine   guibg=#00008B guifg=NONE gui=NONE
hi VisualNOS    gui=underline


"=========================================================================


hi NonText		 guifg=#607d8b guibg=Grey12

hi Folded       guifg=#858E8F guibg=Grey20 gui=none

hi LineNr       guifg=#858E8F guibg=Grey20
hi StatusLineNC guifg=Grey65 guibg=#191970 gui=reverse,underline
hi VertSplit    guifg=Grey65 guibg=#191970
hi StatusLine   guifg=#191970 guibg=Grey65 gui=underline

hi Pmenu         guifg=#191970 guibg=Grey65
hi PmenuSel      guifg=Black guibg=#FFDAB9

hi Directory     guifg=#B8860B gui=None
hi Title         gui=bold guifg=Magenta3

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
