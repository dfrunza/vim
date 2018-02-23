set guifont=Consolas:h10.5:b

colors waterworld

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
set textwidth=200

set fileformats+=dos
set fileencoding=utf-8

" r       Automatically insert the current comment leader after hitting
"         <Enter> in Insert mode.
" o       Automatically insert the current comment leader after hitting 'o' or
"         'O' in Normal mode.
set formatoptions=cql

set nocursorline
set guicursor+=a:blinkon0

" Minimal number of lines to keep above and below buffer.
"set scrolloff=7

" Startup
"set columns=174
"set lines=55
"winpos 360 0
au GUIEnter * simalt ~x
au VimEnter * vsp

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

" Clearing of higlighted words
nmap <silent> gk :nohlsearch<CR>

nmap <C-s> :w<CR>
nmap <C-b> :ToggleBufExplorer<CR>
nmap <leader>q <leader>bd

" Disable annoyances
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

let g:AutoPairsCenterLine=0

"  C
"-----
set makeprg=build.bat
set errorformat+=%f\ :\ %trror\ LNK%*[0-9]:\ %m
set errorformat+=%\\a%\\+%\\d%\\?%\\s%\\?:\ fatal\ %trror\ %\\a%\\+%\\d%\\+:\ %m

"  C#
"------
"set errorformat=%f(%l\\,%c):\ %t%*[^\ ]\ CS%n:\ %m
"set makeprg=msbuild\ /nologo\ /v:q\ /property:GenerateFullPaths=true

" make! ->  do not jump to first error
nmap <A-m> :wa<CR>:make!<CR><CR>
nmap <F8> :!deploy<CR><CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nmap <leader>t :TlistToggle<CR>
let g:Tlist_Close_On_Select=1
let g:Tlist_Use_Right_Window=0
let g:Tlist_GainFocus_On_ToggleOpen=1
let g:Tlist_Process_File_Always=1
let g:Tlist_WinWidth=50
let g:Tlist_Sort_Type="name"

let g:SuperTabDefaultCompletionType = "<C-x><C-o>"
inoremap <C-Space> <C-x><C-o>

" http://ctags.sourceforge.net/ctags.html
let g:indexer_ctagsCommandLineOptions="--fields=+iaSl --extras=+q --sort=yes --languages=C,C++ --langmap=C++:+.hoc --C-kinds=+p --C++-kinds=+p"
set tags+=d:\mingw\include\tags

set completeopt=menu,longest

