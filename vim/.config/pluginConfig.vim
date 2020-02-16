" plugin configuration
let g:python3_host_prog = '/usr/bin/python3'

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1

" nerdtree
autocmd StdinReadPre * let s:std_in=1
  " open nerdtree if starting vim with no file specified
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  " open nerdtree if starting vim if specifying a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeChDirMode = 1
let NERDTreeBookmarksFile = '/home/dev/.config/.NERDTreeBookmarks'
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1

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
let g:deoplete#auto_complete_delay = 0
let g:deoplete#sources#ternjs#docs = 1

" echodoc
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'floating'
set completeopt-=preview
highlight link EchoDocFloat Pmenu

" ycm
" let g:ycm_auto_trigger = 0
let g:ycm_max_num_candidates = 10
highlight Pmenu ctermbg=8 ctermfg=7
highlight PmenuSel ctermbg=7 ctermfg=4
highlight PmenuSbar ctermbg=256
highlight PmenuThumb ctermbg=256 ctermfg=7

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
let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
let g:ale_fixers = {'jsx': ['prettier', 'eslint']}
"let g:ale_open_list = 1
let g:ale_sign_column_always = 1

"signifiy
highlight SignifySignAdd    ctermbg=NONE ctermfg=green  guifg=#00ff00 cterm=NONE gui=NONE
highlight SignifySignDelete ctermbg=NONE ctermfg=red    guifg=#ff0000 cterm=NONE gui=NONE
highlight SignifySignChange ctermbg=NONE ctermfg=yellow guifg=#ffff00 cterm=NONE gui=NONE
