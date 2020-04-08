set number
set tabstop=4
set relativenumber
nmap <F12> :let $MYFILE=expand('%')<CR>:terminal<CR>echo $MYFILE<CR>
