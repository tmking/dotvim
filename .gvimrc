set guifont=Menlo:h15
set guioptions-=T
set transparency=4
set guioptions-=L
set ls=2 " Always show status line
set cursorline
set clipboard=unnamed
if has("autocmd")
  autocmd bufwritepost .gvimrc source $MYGVIMRC
endif
