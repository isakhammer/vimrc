set number
set tabstop=4
set relativenumber
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


"vim-plug Manager
"
"if empty(glob('~/.vim/autoload/plug.vim'))
"    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif
"
"call plug#begin('~/.vim/plugged')        
""call plug#begin('~/.vim_runtime/custom')        
"Plug 'lervag/vimtex'
"call plug#end()        
"        
"" vimtex
"let g:tex_flavor='latex'
"let g:vimtex_view_method='zathura'
"let g:vimtex_quickfix_mode=0
"set conceallevel=1
"let g:tex_conceal='abdmg'
