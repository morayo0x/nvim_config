-- Disable netrw at the very start of init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- leader key 
vim.g.mapleader = " "


require("mo.core.keymap")
require("mo.core.options")
require("mo.core.plugins")
require("mo.colorschemes.themes")
require("mo.colorschemes.indent")
require("mo.lsp_config.mason")
require("mo.lsp_config.completion")
require("mo.lsp_config.telescope")
require("mo.lsp_config.todo_comment")
require("mo.lsp_config.float_term")
require("mo.lsp_config.lsp_diagnostics")
require("mo.lsp_config.symbols")
require("mo.lsp_config.treesitter")
require("mo.lsp_config.nvim_tree")
require("search-replace").setup({
  -- optionally override defaults
      default_replace_single_buffer_options = "gcI",
      default_replace_multi_buffer_options = "egcI",
})
