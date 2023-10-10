require('lspkind').init()

local lspkind = require("lspkind")
local cmp = require("cmp")
require("cmp").setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
      --vim.fn["vsnip#anonymous"](args.body)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },
  -- Installed sources:
  sources = {
    { name = 'path' },                              -- file paths
    { name = 'nvim_lsp', keyword_length = 1, priority = 10 },      -- from language server
    { name = 'crates', keyword_length = 1, priority = 10 },
    { name = 'luasnip', keyword_length = 1, priority = 7 },      -- for Lua users
    { name = 'nvim_lsp_signature_help', priority = 8},            -- display function signatures with current parameter emphasized
    { name = 'nvim_lua', keyword_length = 1, priority = 8},       -- complete neovim's Lua runtime API such vim.lsp.*
    -- { name = 'vsnip', keyword_length = 2, priority = 8},       -- complete neovim's Lua runtime API such vim.lsp.*
    { name = 'buffer', keyword_length = 1, priority = 5 },        -- source current buffer
    { name = 'calc'},                               -- source for math calculation
  },
  window = {
      completion = {
        cmp.config.window.bordered(),
        col_offset = 3,
        side_padding = 1,
      },
      documentation = cmp.config.window.bordered(),
  },
  formatting = {
      fields = {'menu', 'abbr', 'kind'},
      format = lspkind.cmp_format({
        mode = "symbol_text", -- show only symbol annotatons
        maxwidth = 60, -- prevent popup from showing more than provided characters
        -- replaced format with before
      before = function(entry, vim_item)
          local menu_icon ={
              nvim_lsp = 'λ',
              luasnip = '⋗',
              buffer = 'Ω',
              path = '🖫',
          }
          vim_item.menu = menu_icon[entry.source.name]
          return vim_item
      end,
    })
  },
  preselect = cmp.PreselectMode.None,
  confirmation = {
    get_commit_characters = function(commit_characters)
      return {}
    end
  },
})

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300)

-- -- Setup LspConfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig").rust_analyzer.setup{
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    ["rust_analyzer"] = {
      cargo = {
        allFeatures = true,
      },
      completion = {
        postfix = {
          enable = false,
        },
      },
    },
  },
  capabilities = capabilities
}

-- [[ AutoPairs ]]
require("nvim-autopairs").setup()


-- [[ Rust Setup ]]
local ih = require("inlay-hints")
local rt = require("rust-tools")
rt.setup({
  tools = {
    on_initialized = function()
      -- ih.set_all()
    end,
    inlay_hints = {
      auto = true,
    },
  },
  server = {
    on_attach = function(c, b)
      ih.on_attach(c, b)
    end,
  },
})

-- Checking rust_analyzer bootup
require("fidget").setup{}


