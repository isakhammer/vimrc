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



" GENERAL VIM SETTINGs
" Source vimrc
nmap <leader>so :source $MYVIMRC

nmap <F12> :let $MYFILE=expand('%')<CR>:terminal<CR>echo $MYFILE<CR>

""""""""""""""""""""""""""
"  Insert Mode Mappings  "
""""""""""""""""""""""""""
"II go to just before the first non-blank text of the line
"AA go to the end of the line
"OO start editing on a new line above the current line
"CC change what is on the right of the cursor
"SS change the whole line
"DD delete the current line (end in normal mode)
"UU undo
" inoremap <leader>II <Esc>I
" inoremap <leader>AA <Esc>A
" inoremap <leader>OO <Esc>O
" inoremap <leader>CC <Esc>C
" inoremap <leader>SS <Esc>S
" inoremap <leader>DD <Esc>dd
" inoremap <leader>UU <Esc>u

" Change size when having multiple windows
nnoremap <F9> 6<C-w>> 
nnoremap <F10> 6<C-w>< 

" Folding color
highlight Folded ctermbg=black



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
  let g:auto_save_events = ["InsertLeave", 'TextChanged',"CursorHold", 'CursorHoldI'] 
  "autocmd TextChanged,TextChangedI <buffer> silent write
endfunction

""""""""""""""""""""""""""""""
" => Vimtex Plugin
""""""""""""""""""""""""""""""

let maplocalleader = "\\"
let g:Tex_DefaultTargetFormat='pdf'
let g:vimtex_view_enabled=1
let g:vimtex_view_automatic=1
"let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_method='zathura'
"
" Clean directory of generated files
nnoremap <localleader>lc :VimtexStop<cr>:VimtexClean<cr>
nnoremap <localleader>lca :VimtexStop<cr>:VimtexClean!<cr>

" Autosave
au BufRead,BufNewFile *.tex :call EnableAutoSave()


" incscape-figures plug-in
inoremap <localleader>f <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <localleader>f : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0


""""""""""""""""""""""""""""""
" => Tex Conceal Plug-in
"
"""""""""""""""""""""""""""""""
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none
"let g:tex_conceal_frac=1


" Spelling correction when pressing ctrl L
setlocal spell
set spelllang=en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

colorscheme gruvbox


"""""""""""""""""""""""""""""""""""""""""""""""
"  Copy and paste to clipboard - doesnt work  "
"""""""""""""""""""""""""""""""""""""""""""""""

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

" Plug 'easymotion/vim-easymotion'
" Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'jremmen/vim-ripgrep'
"Plug 'rust-lang/rust.vim'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" " Plug 'rhysd/vim-clang-format'
" Plug 'tomasr/molokai'                       " Colorscheme
" Plug 'morhetz/gruvbox'                      " Colorscheme
" Plug 'tpope/vim-commentary'                 " gc(c) to comment out/in
" Plug 'tpope/vim-endwise'                     " Auto-end structures
" Plug 'vim-airline/vim-airline'              " Pretty statusline
" Plug 'vim-airline/vim-airline-themes'
" Plug 'airblade/vim-gitgutter'               " Git lines added/removed
" Plug 'vim-scripts/CSApprox'                 " Fix terminal colorschemes
" Plug 'bronson/vim-trailing-whitespace'      " Highlight trailing whitespace
" Plug 'Raimondi/delimitMate'                 " Match ([{ etc
" Plug 'Yggdroot/indentLine'                  " Mark indent levels
" Plug 'vim-scripts/DoxygenToolkit.vim'       " Add :Dox command
" Plug 'w0rp/ale'                             " Asynchronous Lint Engine
" Plug 'elmcast/elm-vim'                      " Elm support
" Plug 'sheerun/vim-polyglot'                 " Language support
" Plug 'slashmili/alchemist.vim'              " Elixir autocomplete
" Plug 'pangloss/vim-javascript'              " Javascript bundle
" Plug 'sukima/xmledit'                       " Markup tag matching
" filetype plugin on
" Plug 'ludovicchabant/vim-gutentags'         " Painfree tags
" Plug 'tpope/vim-projectionist'              " Dependency for phoenix.vim
" Plug 'c-brenn/phoenix.vim'                  " Phoenix project navigation

""Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp', 'h', 'hpp']}

call plug#end()

" Install plugins
nmap <leader>si :PlugInstall

""""""""""""""""""""
"  You Complete Me
""""""""""""""""""""

"<c-P> and <c-N> to move up and down"

" Turn off tab functionality."
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]


"""""""""""""""""
"  FZF- finder  "
"""""""""""""""""

map <leader>F <Esc><Esc>:Files!<CR>
inoremap <leader>F <Esc><Esc>:Blines!<CR>
map <leader>c <Esc><Esc>:BCommits!<CR>

map <leader>G :Rg 



""""""""""""""""""""""""""""""
" => Multi snips plug-in
"""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<C-tab>'
