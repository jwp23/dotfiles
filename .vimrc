set nu
set nohlsearch
set cc=80
highlight ColorColumn ctermbg=0

set shiftwidth=2
set tabstop=2
set softtabstop=0
set expandtab
set smarttab
set ai

" Plugin management

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if has('nvim')
  if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
  
endif
call plug#begin('~/.vim/plugged')

Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'vimlab/split-term.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'dracula/vim',{'as':'dracular'}

call plug#end()

" Markdown preview options
let vim_markdown_preview_github=1

