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

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
