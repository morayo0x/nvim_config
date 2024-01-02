-- require("plenary").setup()
local actions = require("telescope.actions")
require("telescope").setup({
  defaults = {
    file_ignore_patterns = {
      "^./git/",
      "^./target/",
      "LICENSE*",
    },
    layout_strategy = "horizontal",
    layout_config = { 
      width = 0.8,
      prompt_position = "top",
      preview_cutoff = 120,
    },
    color_devicons = true,
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        -- ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<C-e>"] = actions.close,
        -- ["<CR>"] = actions.select_default + actions.component_separators,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-e>"] = actions.close,
        ["<C-k>"] = actions.move_selection_previous,
        -- ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
      }
    },


    -- file_previewer = require("telescope.previewers").vim_buffer_cat_new,
  },

  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "jpeg", "ppm", "pdf"}
      filetypes = {"png", "jpg", "jpeg", "ppm", "pdf"},
      find_cmd = "rg", -- find command defaults to `fd`
    },
  },
})


require("telescope").load_extension("media_files")
require("telescope").load_extension("fzf")
