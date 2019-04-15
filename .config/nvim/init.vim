let mapleader =" "
set noshowmode
set number relativenumber
set nu rnu
set modeline
set encoding=utf-8
set tabstop=4 shiftwidth=4 expandtab
syntax on

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jreybert/vimagit'
call plug#end()

"set bg=dark
set go=a
set mouse=a
set nohlsearch
set clipboard=unnamedplus
set splitbelow splitright

"colorscheme onedark
let g:airline_theme='papercolor'


" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
    map <C-l> <C-w>l
" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
	vnoremap <C-c> "+y
	map <C-p> "+P<Paste>
