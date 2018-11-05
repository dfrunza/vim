" See the article http://dmitryfrank.com/articles/vim_project_code_navigation

" Get path to ".vimprj" folder
let s:sPath = expand('<sfile>:p:h')

let g:indexer_ctagsCommandLineOptions="--fields=+iaSl --extra=+q --languages=Python"

" Specify the project's 'indexer_files'"
let g:indexer_indexerListFilename = s:sPath.'/indexer_files'
