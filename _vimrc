"set guifont=Source_Code_Pro_Medium:h11:cANSI
"set guifont=Consolas:h13:cANSI
"set guifont=CamingoCode:h12:cANSI
"set guifont=Hack:h11:cANSI
"set guifont=Courier_New:h10:cANSI
set guifont=Cousine:h10:b:cANSI

" GUI options : menu, toolbar, scrollbars.
" Add the 'm' letter to have the menu back.
set guioptions=egrLt
set statusline=%F
"set columns=174
"set lines=55
"winpos 360 0

"tab character
set shiftwidth=2 " indendation level
set tabstop=2
set softtabstop=0
"Set noexpandtab if you want real tabs instead of spaces
set expandtab

" Disable
" r       Automatically insert the current comment leader after hitting
"         <Enter> in Insert mode.
" o       Automatically insert the current comment leader after hitting 'o' or
"         'O' in Normal mode.
set formatoptions-=cro

" Minimal number of lines to keep above and below buffer.
"set scrolloff=7

" Custom vim settings per file
set modeline

set nocursorline
set guicursor+=a:blinkon0

syntax on
set hidden
set number
set autoread
set noswapfile
set incsearch
set hlsearch
set shiftround
set showmatch
set ignorecase
set smartcase
set incsearch
set nowrap
set clipboard=unnamed

set winaltkeys=yes
" This maps to Alt+A ! Go figure...
nmap <M-Space> :simalt ~<CR>

set fileformats+=dos

" Alt-codes show properly in this code page.
set encoding=cp850

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tired of clearing highlighted searches by searching for “ldsfhjkhgakjks”? Use this:
nmap <silent> ,. :nohlsearch<CR>

set regexpengine=1
set nocompatible

" Quickly edit/reload the vimrc file
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sb :so $MYVIMRC<CR>

" Color theme: evening, desert, slate, blue, delek.
"colors muratori
colors BlueSmoke

set textwidth=200
filetype plugin on
set backspace=indent,eol,start

" Disable bell and flashing.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set cindent
set cinoptions+=(0)
set foldmethod=marker
set foldmarker=>>>,<<<
set completeopt=menu,longest

set grepprg=C:\MinGW\msys\1.0\bin\grep.exe

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

let g:AutoPairsCenterLine=0

" C dev
set makeprg=build.bat

" C# dev
"set errorformat=%f(%l\\,%c):\ %t%*[^\ ]\ CS%n:\ %m
"set makeprg=msbuild\ /nologo\ /v:q\ /property:GenerateFullPaths=true

" disable the major annoyances
nmap <F1> <nop>
map q <nop>

nmap <C-s> :w<CR>
inoremap <S-CR> <Esc>

" make!  -  do not jump to first error
nmap <F4> :wa<CR>:make<CR><CR>
nmap <F8> :!deploy<CR><CR>

"nmap ga <Plug>(EasyAlign)
"nmap ga <Plug>(EasyAlign)

" BufExplorer
"nmap <C-m> :ToggleBufExplorer<CR>
nmap <Space> :ToggleBufExplorer<CR>
nmap <C-q> :e.<CR>
nmap <leader>q <leader>bd

" TagList
nmap <F2> :TlistToggle<CR>
let g:Tlist_Close_On_Select=1
let g:Tlist_Use_Right_Window=0
let g:Tlist_GainFocus_On_ToggleOpen=1

let g:netrw_banner=0
let g:bufExplorerDefaultHelp=0

" Show the prototype of the tag under cursor.
"
" The idea is to yank the word under cursor into a register and then use
" the contents of the register to create the command.
" For example:
"     "zyiw - will yank the word into z reg
" (note that the double quote in "z is part of the register name)
" Next we concatenate the register to a command string and execute it.
"     :exe "/".@z.""<CR> - searches for string in "z reg
" Alternately you can replace @z by <C-r>z which will directly replace z by its content.
nmap <F1> "zyiw:exe "ts ".@z.""<CR>

