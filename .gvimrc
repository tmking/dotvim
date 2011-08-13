set guifont=Menlo:h14
set guioptions-=T
set transparency=4
set guioptions-=L
set ls=2 " Always show status line
set cursorline
if has("autocmd")
  autocmd bufwritepost .gvimrc source $MYGVIMRC
endif
