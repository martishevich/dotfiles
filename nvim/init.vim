"#coommon
set tabstop=4
set shiftwidth=4
set expandtab

autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
set termguicolors
set background=dark
set colorcolumn=80
set relativenumber number
set nocompatible

"mappings

let mapleader = "\<Space>"

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map <silent> <leader><leader> :NERDTreeToggle<CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

nnoremap <Leader>w :w<CR>
nnoremap <Leader>o :GFiles .<CR>
nnoremap <leader>fc :Commits<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fa :Ag<CR>

"pluggins
call plug#begin('~/.config/nvim/plugged')                                   

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }                                                  
Plug 'Shougo/deoplete.nvim'                                                 
Plug 'neomake/neomake'                                                      
Plug 'flowtype/vim-flow'                                                    
Plug 'iCyMind/NeoSolarized'                                                 
Plug 'vim-airline/vim-airline'                                              
Plug 'vim-airline/vim-airline-themes'                                       
Plug 'tpope/vim-fugitive'                                                   
Plug 'pearofducks/ansible-vim'                                              
Plug 'stephpy/vim-yaml'                                                     
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

call plug#end()


colorscheme NeoSolarized
"plugins cond
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \}
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1

let g:ale_javascript_eslint_use_global = 1
