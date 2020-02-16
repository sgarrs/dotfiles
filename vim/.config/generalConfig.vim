" GENERAL CONFIG

" colors
syntax on
filetype plugin on
syntax enable
" line number column
highlight LineNr ctermbg=0 ctermfg=8
" gutter
highlight SignColumn ctermbg=0
" search
highlight Search cterm=NONE ctermfg=0 ctermbg=10

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

" return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" fuzzy find
set path+=**

" custom keybinds
inoremap jj <ESC>

augroup FiletypeGroup
  autocmd!
  au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

" omnifuncs
"  autocmd FileType javascript,javascript.jsx setlocal omnifunc=javascriptcomplete#CompleteJS
augroup omnifuncs
  autocmd!
  autocmd FileType css,sass,scss,less setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript,javascript.jsx setlocal omnifunc=tern#Complete,javascriptcomplete#CompleteJS
endif
