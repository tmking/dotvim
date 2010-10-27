syntax on

" hide buffers
set nohidden

" turn off compatibility with the old vi
"set nocompatible

" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" do not highlight words when searching for them. it's distracting.
set hlsearch

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" make that backspace key work the way it should
set backspace=indent,eol,start

" swap file directory
set directory=$HOME/.vim/tmp

" backup file directory
set backupdir=$HOME/.vim/tmp

" set location of tags
set tags=$HOME/.vim/docs/mytags

" pathogen
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" show line number
set number

" indentation options
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

" options from http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set nocursorline
set ttyfast
set ruler

" search options
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" line wrap options from http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set wrap
"set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

"set laststatus=2
set statusline=%<%F%=\ [%M%R%H%Y]\ (%(%l,%c%))

colorscheme desert

" automatically strip trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" use ack instead of grep
set grepprg=ack
set grepformat=%f:%l:%m

function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction

""""""""""""""""
" key bindings "
""""""""""""""""
" leader+s to toggle scratch
map <leader>s :call ToggleScratch()<CR>
" ii to leave insert mode
inoremap ii <ESC>
" map common commands to upercase equivs
command W w
command Q q
" keybindings for newbies from http://stevelosh.com/blog/2010/09/coming-home-to-vim/
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" use undo files
if v:version >=703
  set undofile
  set undodir=$HOME/.vim/tmp/undo
endif
