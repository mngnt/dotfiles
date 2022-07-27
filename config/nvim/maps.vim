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
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" EXIT vim
nnoremap <silent><C-q> :q!<cr>
" Fast save
nnoremap <silent><C-s> :wa!<cr>
" Select All
nmap <C-a> gg<S-v>G 

" New buffer
noremap <silent> bN :enew<cr> 
" Next Buffer
noremap <silent> bn :bn<cr>
" previous buffer
noremap <silent> bp :bp<cr>
" delete a buffer (close a file)
noremap <silent> bd :bd<cr>

" Spell checking
nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Run Js
nmap <silent> <F5> :w !node %<cr>
