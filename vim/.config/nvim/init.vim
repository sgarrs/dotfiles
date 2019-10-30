call plug#begin('~/.local/share/nvim/plugged')

" general
"Plug 'tpope/vim-sensible'
"Plug 'jeffkreeftmeijer/neovim-sensible'

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
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'less', 'styl'] }

" interface
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'itchyny/lightline.vim' | Plug 'mengelbrecht/lightline-bufferline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'xolox/vim-notes' | Plug 'xolox/vim-misc'
Plug 'suan/vim-instant-markdown'
Plug 'junegunn/limelight.vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'w0rp/ale'

" completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'Shougo/echodoc.vim'
Plug 'mattn/emmet-vim'
Plug 'sirver/Ultisnips'
Plug 'honza/vim-snippets'
Plug 'townk/vim-autoclose'

" Plug 'ternjs/tern_for_vim', {'do': 'npm install && npm install -g tern'}, { 'for': ['javascript', 'javascript.jsx'] }

" commands
Plug 'moll/vim-node'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb'
Plug 'scrooloose/nerdcommenter'

call plug#end()

" fonts
set guifont=DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete

" keybinds
map <C-h> :NERDTreeToggle<CR>
map <F1> :IndentGuidesToggle<CR>

" source config files
source ~/.config/pluginConfig.vim
source ~/.config/generalConfig.vim
