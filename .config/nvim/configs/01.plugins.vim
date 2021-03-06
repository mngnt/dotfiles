call plug#begin('~/.config/nvim/bundle')
"Theme
Plug 'tanvirtin/monokai.nvim'
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
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
call plug#end()



" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
