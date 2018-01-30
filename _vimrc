"set guifont=Consolas:h13
"set guifont=Courier_New:h10
set guifont=Cousine:h10

" evening, desert, slate, blue, delek
"colors muratori
colors BlueSmoke

"  GUI options
"---------------
set guioptions=egrLt " 'm' -> have the menu back.
set statusline=%F

"  Indentation settings
"------------------------
set shiftwidth=2 " indendation level
set tabstop=2
set softtabstop=0
set expandtab "noexpandtab -> real tabs instead of spaces
set cindent
set autoindent
set cinoptions+=(0)

set fileformats+=dos
set fileencoding=utf-8

" Disable
" r       Automatically insert the current comment leader after hitting
"         <Enter> in Insert mode.
" o       Automatically insert the current comment leader after hitting 'o' or
"         'O' in Normal mode.
set formatoptions=cql

"  Cursor
"----------
set nocursorline
set guicursor+=a:blinkon0

" Minimal number of lines to keep above and below buffer.
"set scrolloff=7

"set columns=174
"set lines=55
"winpos 360 0
set textwidth=200

syntax on
filetype plugin on
set backspace=indent,eol,start
set modeline
set hidden
set number
set noswapfile
set incsearch
set hlsearch
set shiftround
set showmatch
set ignorecase
set smartcase
set clipboard=unnamed
set autoread
set nowrap

set regexpengine=1
set nocompatible

"  Shortcuts
"-------------

" Configure Alt+Space to open up the Windows menu
set winaltkeys=yes
nmap <M-Space> :simalt ~<CR>

" Navigation between split-windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Quickly edit/reload the vimrc file
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sb :so $MYVIMRC<CR>

" Easy clearing of higlighted words
nmap <silent> ,. :nohlsearch<CR>

nmap <C-s> :w<CR>
nmap <C-b> :ToggleBufExplorer<CR>
nmap <leader>q <leader>bd

"  Disable annoyances
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
nmap <F1> <nop>
map q <nop>
let g:netrw_banner=0
let g:bufExplorerDefaultHelp=0

"  Folds
"---------
set foldmethod=marker
set foldmarker=>>>,<<<
set completeopt=menu,longest

set grepprg=C:\tools\grepw32.exe

let g:AutoPairsCenterLine=0

" C
"---
set makeprg=build.bat
" MSVC linker errorformat
set errorformat+=%f\ :\ %trror\ LNK%*[0-9]:\ %m

"  C#
"------
"set errorformat=%f(%l\\,%c):\ %t%*[^\ ]\ CS%n:\ %m
"set makeprg=msbuild\ /nologo\ /v:q\ /property:GenerateFullPaths=true

" make! ->  do not jump to first error
nmap <A-m> :wa<CR>:make!<CR><CR>
nmap <F8> :!deploy<CR><CR>

"nmap ga <Plug>(EasyAlign)
"nmap ga <Plug>(EasyAlign)

"  Tag browsing and auto-completion
"------------------------------------
set omnifunc=ccomplete#Complete
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"nmap <leader>t :TlistToggle<CR>
"let g:Tlist_Close_On_Select=1
"let g:Tlist_Use_Right_Window=0
"let g:Tlist_GainFocus_On_ToggleOpen=1
"let g:Tlist_Process_File_Always=1
"let Tlist_WinWidth=50

nmap <leader>t :TagbarToggle<CR>
let g:tagbar_autoclose=1
let g:tagbar_width=50
let g:tagbar_left=1
let g:tagbar_compact=1
let g:tagbar_autopreview=1
let g:tagbar_autoclose=1

let g:AutoComplPop_CompleteoptPreview=1

" --fields=[+/-]flags
"        a    Access (or export) of class members
"        f    File-restricted scoping [enabled]
"        i    Inheritance information
"        k    Kind of tag as a single letter [enabled]
"        K    Kind of tag as full name
"        l    Language of source file containing tag
"        m    Implementation information
"        n    Line number of tag definition
"        s    Scope of tag definition [enabled]
"        S    Signature of routine (e.g. prototype or parameter list)
"        z    Include the "kind:" key in kind field
"        t    Type and name of a variable or typedef as "typeref:" field [enabled]
let g:indexer_ctagsCommandLineOptions="--fields=+ksSlnz --C-kinds=+p --C++-kinds=+p"

