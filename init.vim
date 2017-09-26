call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim'
Plug 'neomake/neomake'
Plug 'flowtype/vim-flow'
Plug 'iCyMind/NeoSolarized'

call plug#end()

"let g:deoplete#enable_at_startup = 1
let g:neomake_php_enabled_makers = ['php', 'phpcs']
"let g:neomake_php_enabled_makers = ['phpcs']
let g:neomale_php_phpcs_args_standart = 'PSR2'

"let g:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:neomake_javascript_enabled_makers = ['flow']
let "g:neomake_javascript_eslint_exe=substitute

set tabstop=4
set shiftwidth=4
set expandtab

set termguicolors
colorscheme NeoSolarized
set background=dark
set colorcolumn=80
set relativenumber number
map <silent> <leader><leader> :NERDTreeToggle <CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

autocmd! BufWritePost * Neomake