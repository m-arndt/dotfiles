set visualbell
set number
set autoindent
set ruler
set nocompatible
set showmode
set showcmd
imap <C-L> <Esc>
colorscheme monokai-phoenix
set cursorline
filetype indent on
set showmatch  
cmap w!! w !sudo tee >/dev/null %

set laststatus=2

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

