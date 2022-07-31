call plug#begin('~/.config/nvim/bundle')
Plug 'navarasu/onedark.nvim'  " Themes

"lualine(bottom taskbar)
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

"Support for Code
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "hightlight syntax
Plug 'windwp/nvim-autopairs'    " auto close bracket
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'} "Terminal 
Plug 'mhartington/formatter.nvim' "Format Code
Plug 'lukas-reineke/indent-blankline.nvim' "bracket hightlight
Plug 'numToStr/Comment.nvim'   " Comment 
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " File explore
Plug 'lewis6991/gitsigns.nvim'  " Support Git
Plug 'kyazdani42/nvim-tree.lua' " Sidebar file explore

"Auto suggest Code
Plug 'L3MON4D3/LuaSnip' 
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
" Plug 'ms-jpq/coq_nvim'
" Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

call plug#end()




" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

set number
set title
set background=dark
set softtabstop=4
set shiftwidth=4
set tabstop=4
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
