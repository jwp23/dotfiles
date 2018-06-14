set nu
set nohlsearch

" tab indentation
set shiftwidth=2
set tabstop=2
set softtabstop=0
set expandtab
set smarttab
set ai

" set cursor line when on active window
function EnterWindow()
  set cursorline
  set cc=80
endfunction

function LeaveWindow()
  set nocursorline
  set nocursorcolumn
  set cc=
  " hi VertSplit ctermfg=8
endfunction

call EnterWindow()

augroup BgHighlight
  autocmd!
  autocmd WinEnter * call EnterWindow()
  autocmd WinLeave * call LeaveWindow()
augroup END

" Color schemes
hi ColorColumn ctermbg=8
hi CursorLine cterm=NONE ctermbg=8
hi VertSplit ctermfg=8

" Plugin settings
" AirlineTheme settings
let g:airline_theme='jellybeans'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols for AirlineTheme.
" needed since Powerline fonts are not set
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'


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

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nanotech/jellybeans.vim'
Plug 'edkolev/tmuxline.vim'
call plug#end()

