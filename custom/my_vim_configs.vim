set number
set relativenumber

set cindent
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab
" if &filetype ==# 'c' || &filetype ==# 'h'|| &filetype ==# 'cpp'
"     set tabstop=2
"     set softtabstop=2
"     set shiftwidth=2"
" else
"     set tabstop=4
"     set softtabstop=4
"     set shiftwidth=4"
" endif



nmap <F12> :let $MYFILE=expand('%')<CR>:terminal<CR>echo $MYFILE<CR>
nnoremap <F9> 6<C-w>> 
nnoremap <F10> 6<C-w>< 



"set cursorline
"set cursorcolumn
"highlight CursorLine cterm=bold ctermbg=Yellow guibg=#2b2b2b
"highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"highlight CursorLine xtermbg=Yellow cterm=bold guibg=#2b

""""""""""""""""""""""""""""""
" => Airline Plugin
""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'


"FINDING FILES
"Usage: 

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Open buffer vertically :vb <buffer>
cabbrev vb vert sb
" Tab buffer
cabbrev tb vert sb

#colorscheme desert
