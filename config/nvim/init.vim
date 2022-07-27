for f in split(glob('~/.config/nvim/after/plugin/*.vim'), '\n')
   exe 'source' f
endfor
runtime ./maps.vim

call plug#begin('~/.config/nvim/bundle')
Plug 'tanvirtin/monokai.nvim' "Theme
Plug 'adrian5/oceanic-next-vim'

"airline(bottom taskbar)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Support for Code
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "hightlight syntax
Plug 'windwp/nvim-autopairs'    " auto close bracket
Plug 'voldikss/vim-floaterm'    "terminal 
Plug 'mhartington/formatter.nvim' "Format Code
Plug 'lukas-reineke/indent-blankline.nvim' "bracket hightlight
Plug 'preservim/nerdcommenter'  "fast comment
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " File explore
Plug 'lewis6991/gitsigns.nvim'  " Support Git

"Auto suggest Code
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"File Manager
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
call plug#end()



" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

set number
set title
set tabstop=4
set background=dark
set softtabstop=4
set shiftwidth=4
set smarttab
set cursorline
set expandtab
set autoindent
set list
set listchars=tab:▸\ ,trail:·
set clipboard=unnamedplus
set encoding=UTF-8
set modifiable


" spell languages
set spelllang=en

"Set theme for nvim
syntax enable
filetype plugin on
set termguicolors
let g:oceanic_gutter_like_bg=1
let g:oceanic_bold=1
let g:oceanic_italic_comments=1
colorscheme oceanicnext

