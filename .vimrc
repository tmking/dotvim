set ts=2
syntax on

" hide buffers
set hidden

" set auto-indenting on for programming
set ai

" turn off compatibility with the old vi
"set nocompatible

" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" do not highlight words when searching for them. it's distracting.
set nohlsearch

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" make that backspace key work the way it should
set backspace=indent,eol,start

" pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" show line number
set number

" swap file directory
set directory=$HOME/.vim/tmp

" backup file directory
set backupdir=$HOME/.vim/tmp

" swap file directory
set directory=$HOME/.vim/tmp

set smartindent

"set laststatus=2
set statusline=%<%F%=\ [%M%R%H%Y]\ (%(%l,%c%))

colorscheme vilight
