call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()

" fonts
set guifont=DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete

" keybinds
map <C-n> :NERDTreeToggle<CR>

" colors
syntax on
let g:lightline = {
	\ 'colorscheme': 'one',
	\}
