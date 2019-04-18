call plug#begin('~/.local/share/nvim/plugged')

" general
Plug 'tpope/vim-sensible'

" syntax
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-markdown'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'cakebaker/scss-syntax.vim'
Plug 'wavded/vim-stylus'
Plug 'digitaltoad/vim-jade'
Plug 'ekalinin/dockerfile.vim'
Plug 'ap/vim-css-color'

" interface
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
" Plug 'bling/vim-bufferline'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'myusuf3/numbers.vim'


" commands
Plug 'moll/vim-node'

call plug#end()

" fonts
set guifont=DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete

" keybinds
map <C-n> :NERDTreeToggle<CR>
map <F1> :IndentGuidesToggle<CR>

" interface
set number

" colors
syntax on

" lightline
set showtabline=2
let g:lightline = {'colorscheme': 'one'}
let g:lightline.tabline = {'colorscheme': 'one', 'left': [['buffers']], 'right': []}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}

