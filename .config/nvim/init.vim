let mapleader =" "
set noshowmode
highlight LineNr ctermfg=blue ctermbg=black term=bold cterm=bold
set number relativenumber
set nu rnu
set modeline
set encoding=utf-8
set tabstop=4 shiftwidth=4 expandtab
syntax on

call plug#begin('~/.config/nvim/plugged')
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'deoplete-plugins/deoplete-go', { 'do': 'make' }
endif
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }
"Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jreybert/vimagit'
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set completeopt=noinsert
set completeopt+=noselect

set go=a
set mouse=a
set nohlsearch
set clipboard=unnamedplus
set splitbelow splitright

"colorscheme onedark
let g:airline_theme='badwolf'


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

" goimports instead of fmt
let g:go_fmt_command = "goimports"

" Some go syntax settings
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_operators = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_format_strings = 1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
