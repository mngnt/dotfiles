let g:NERDTreeGitStatusUseNerdFonts = 0
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Change arrow to expand/collapse tree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Hightlight current file
let g:nerdtree_sync_cursorline = 1

map <silent> <C-b> :NERDTreeToggle<CR>
