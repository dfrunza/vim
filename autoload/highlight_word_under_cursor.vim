
" When the cursor is hold on a word, that word is highlighted.
" When the cursor is moving, the highlight is hidden

set updatetime=300
au! CursorMoved * set nohlsearch
au! CursorHold * set hlsearch | let @/='\<'.expand("<cword>").'\>'
set hlsearch
