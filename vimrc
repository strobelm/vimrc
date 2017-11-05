call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
Plug 'fholgado/minibufexpl.vim'
Plug 'tpope/vim-surround'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'easymotion/vim-easymotion'
call plug#end()

set spelllang=en_us
setlocal spell spelllang=en_us
set spell
set hlsearch
colorscheme molokai 
set background=dark
let g:rehash256 = 1
set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set smartindent
set ignorecase
set smartcase
set autoindent
set hidden
set relativenumber

set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique @pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
"     " Disable all warnings
let g:vimtex_quickfix_warnings={'default' : 0}
"let g:vimtex_quickfix_mode=1
let g:vimtex_quickfix_open_on_warning=0
let g:vimtex_quickfix_latexlog = {
            \ 'overfull' : 0,
            \ 'underfull' : 0,
            \ 'packages' : {
            \   'default' : 0,
            \ },
\}

" Ctrl - P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-T> :NERDTreeToggle<CR>

" clear search with enter
nnoremap <CR> :noh<CR><CR>
