"""" My vim setting


"""" reference
" https://github.com/kaochenlong/cch   


" Plugin manager setup.
" https://github.com/VundleVim/Vundle.vim
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'preservim/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'arcticicestudio/nord-vim'
call vundle#end()
filetype plugin indent on


" backspace and tab 
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4

" appearance
set cursorline
set number
set ruler		" show the cursor position all the time
colorscheme nord
syntax on
set laststatus=2  " always show the status line
set showcmd		" display incomplete commands
let NERDTreeMinimalUI = 1
 
" others
set history=200
set scrolloff=5
set splitbelow
set splitright
set mouse=a
set updatetime=100
set incsearch
set hlsearch
set wildmenu   " display completion matches in a status line

" map and autocmd
noremap <C-n> :NERDTreeToggle<CR> 
map <leader>sv :source $MYVIMRC<CR>

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
