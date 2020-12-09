" See the article http://dmitryfrank.com/articles/vim_project_code_navigation

" Path to .vimprj dir
let s:sVimprjPath = expand('<sfile>:p:h')
 
" Path to project dir
let s:sProjectPath = simplify(s:sVimprjPath.'/..')

let g:indexer_ctagsCommandLineOptions="--exclude=".s:sProjectPath."/env/* --fields=+Sln --languages=Python"

" Specify the project's 'indexer_files'"
let g:indexer_indexerListFilename = s:sVimprjPath.'/indexer_files'

set nocindent
