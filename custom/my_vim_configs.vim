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



" Source vim 
nmap <leader>so :source $MYVIMRC

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
"
""""""""""""""""""""""""""""""
" => vim-autosave plugin
""""""""""""""""""""""""""""""

function EnableAutoSave()
  let g:auto_save = 1  
  let g:auto_save_events = ["InsertLeave", "TextChanged","CursorHold", "CursorHoldI"] 
endfunction

""""""""""""""""""""""""""""""
" => Vimtex Plugin
""""""""""""""""""""""""""""""


let maplocalleader = "\\"
let g:Tex_DefaultTargetFormat='pdf'
let g:vimtex_view_enabled=1
let g:vimtex_view_automatic=1
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_method='zathura'
"
" Clean directory of generated files
nnoremap <localleader>lc :VimtexStop<cr>:VimtexClean<cr>
nnoremap <localleader>lca :VimtexStop<cr>:VimtexClean!<cr>

" Autosave
au BufRead,BufNewFile *.tex :call EnableAutoSave()

" incscape-figures plugin
inoremap <localleader>f <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <localleader>f : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>


let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

hi Conceal ctermbg=none
"colorscheme desert



" Ultisnips plugin
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
