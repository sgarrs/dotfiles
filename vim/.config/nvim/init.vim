call plug#begin('~/.local/share/nvim/plugged')

" general
Plug 'tpope/vim-sensible'

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
Plug 'mattn/emmet-vim'

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

map <C-h> :NERDTreeToggle<CR>
map <F1> :IndentGuidesToggle<CR>

" plugin configuration
let g:python3_host_prog = '/usr/bin/python3'

" lightline
set showtabline=2
let g:lightline = {'colorscheme': 'one'}
let g:lightline.tabline = {'colorscheme': 'one', 'left': [['buffers']], 'right': []}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}
let g:lightline#bufferline#show_number=1

" limelight
let g:limelight_conceal_ctermfg = 8
let g:limelight_conceal_guifg = '#44475a'
nmap <F2> :Limelight!!<CR>

" notes directory
let g:notes_directories = ['~/doc/notes']
" Map \ns in visual mode to start new note with selected text as title.
vmap <Leader>ns :NoteFromSelectedText<CR>

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#filetypes = [
  \ 'jsx',
  \ 'javascript',
  \ 'javascript.jsx',
  \ 'vue'
  \ ]
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#include_keywords = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
highlight Pmenu ctermbg=8 ctermfg=15
highlight PmenuSel ctermbg=0 ctermfg=6

" yankring
let g:yankring_history_dir = '~/.yankring_history'
let g:yankring_clipboard_monitor = 0

" undo
if has("persistent_undo")
  set undodir="~/.undodir"
  set undofile
endif

" startify
" let g:startify_session_dir = '~/.dotfiles/vim/.vim/session'
let g:startify_custom_header = [
        \ '                                ',
        \ '            __                  ',
        \ '    __  __ /\_\    ___ ___      ',
        \ '   /\ \/\ \\/\ \ /'' __` __`\   ',
        \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \   ',
        \ '    \ \___/  \ \_\ \_\ \_\ \_\  ',
        \ '     \/__/    \/_/\/_/\/_/\/_/  ',
        \ ]

" ale
let g:ale_linters = {
\  'javascript': ['eslint'],
\}
"let g:ale_open_list = 1
"let g:ale_sign_column_always = 1

" GENERAL CONFIG

" colors
syntax on
" line number column
highlight LineNr ctermbg=0 ctermfg=8
" gutter
highlight SignColumn ctermbg=0

" interface
set number
set nowrap

" switch buffers without saving
set hidden

" Set to auto read when a file is changed from the outside
set autoread

" turn on the wildmenu
set wildmenu

" show current position
set ruler

" configure backspace
set backspace=eol,start,indent
set whichwrap+=<<,>,h,l

" ignore case when searching
set ignorecase
" try to be smart about cases when searching
set smartcase

" highlight serach results
set hlsearch
set incsearch

" don't redraw when executing macros
set lazyredraw

" turn magic on for regular expressions
set magic

" show matching brackets
set showmatch
set mat=2

" stop annoying sounds
set noerrorbells
set novisualbell
"set t_vb=
"set tm=500

" Add extra margin to the left
set foldcolumn=1

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" linebreak
set lbr
set tw=500

set ai
set si
set wrap

" return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

nnoremap <leader>e :call FzyCommand("find . -type f", ":e")<cr>
nnoremap <leader>v :call FzyCommand("find . -type f", ":vs")<cr>
nnoremap <leader>s :call FzyCommand("find . -type f", ":sp")<cr>
