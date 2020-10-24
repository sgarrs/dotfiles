call plug#begin('~/.local/share/nvim/plugged')

" general
Plug 'jiangmiao/auto-pairs'

" syntax
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': ['jsx', 'javascript'] }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['sass', 'scss'] }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'digitaltoad/vim-jade', { 'for': 'pug' }
Plug 'ekalinin/dockerfile.vim', { 'for': 'dockerfile' }

" interface
Plug 'itchyny/lightline.vim' | Plug 'mengelbrecht/lightline-bufferline'
Plug 'xolox/vim-notes' | Plug 'xolox/vim-misc'
Plug 'suan/vim-instant-markdown'
Plug 'junegunn/limelight.vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'craigemery/vim-autotag'
Plug 'KabbAmine/vCoolor.vim'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kevinoid/vim-jsonc'

" commands
Plug 'mattn/emmet-vim'
Plug 'moll/vim-node'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb'

call plug#end()

" fonts
set guifont=DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete

" keybinds
nnoremap gc :exe ':silent !vivaldi-stable %'<CR>

" source config files
source ~/.config/pluginConfig.vim
source ~/.config/generalConfig.vim
source ~/.config/highlighting.vim
