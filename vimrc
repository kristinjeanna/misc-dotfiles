syntax on
set number
set laststatus=2
set noshowmode
colorscheme cosme
set ignorecase
set smartcase
set incsearch
set hlsearch
set cursorline

set breakindent
set breakindentopt=shift:2,min:40,sbr
set showbreak=>>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

let g:lightline = {
      \ 'colorscheme': 'cosme',
      \ }
