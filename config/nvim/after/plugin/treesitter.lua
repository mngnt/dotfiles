require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "scss",
    "javascript",
    "typescript",
    "json",
    "php",
    "lua",
    "python"
  },
  highlight = {
    enable = true,
    disable = {"html","css"}
  }
}
