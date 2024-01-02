require('nvim-treesitter.configs').setup {
    ensure_installed = { "bash", "c", "cmake", "css", "dockerfile", "go", "gomod", "gowork", "html",
        "http", "javascript", "json", "lua", "make", "markdown", "python", "regex", "ruby", "rust", "toml", "vim", "yaml",
        "zig", "vimdoc", "query"},
    auto_install = true,
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<S-Tab>", -- normal mode
            node_incremental = "<Tab>", -- visual mode
            node_decremental = "<S-Tab", -- visual mode
        },
    },
    ident = { enable = true },
    rainbow = {
        enable = true,
    }
}

-- Format on Save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
