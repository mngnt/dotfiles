"*****************************************************************************
" Commands                        Mode
" --------                        ----
" nmap, nnoremap, nunmap          Normal mode
" imap, inoremap, iunmap          Insert and Replace mode
" vmap, vnoremap, vunmap          Visual and Select mode
" xmap, xnoremap, xunmap          Visual mode
" smap, snoremap, sunmap          Select mode
" cmap, cnoremap, cunmap          Command-line mode
" omap, onoremap, ounmap          Operator pending mode
"*****************************************************************************

" Change key leader to Space
let mapleader = " "
" EXIT vim
nnoremap <silent><leader>e :q!<cr>
" Fast save
nnoremap <silent><leader>s :wa!<cr>
" Select All
nmap <C-a> gg<S-v>G 

" Map keys formatter
nnoremap <silent> <leader>f :Format<CR>
nnoremap <silent> <leader>F :FormatWrite<CR>
