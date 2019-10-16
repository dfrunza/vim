" See the article http://dmitryfrank.com/articles/vim_project_code_navigation

" Path to .vimprj dir
let s:sVimprjPath = expand('<sfile>:p:h')
 
" Path to project dir
let s:sProjectPath = simplify(s:sVimprjPath.'/..')

let g:indexer_ctagsCommandLineOptions="--fields=+iaSl --extras=+q --languages=C"

" Specify the project's 'indexer_files'"
let g:indexer_indexerListFilename = s:sVimprjPath.'/indexer_files'
let g:easytags_file=s:sVimprjPath.'/indexer_files_tags/tags'

set errorformat=
set errorformat+=%E%f:%l:%c:\ %t\rror:\ %m,%-C,%-Z%p^
set errorformat+=%f:%l:%c:\ fatal\ %t\rror:\ %m,%-C,%-Z%p^
set errorformat+=%f:%l:%c:\ %t\arning:\ %m,%-C,%-Z%p^
set errorformat+=%D%*\\a:\ Entering\ directory\ [`']%f'
set errorformat+=%X%*\\a:\ Leaving\ directory\ [`']%f'

set shiftwidth=2
set tabstop=2
set cindent
