require("symbols-outline").setup({
    highlight_hovered_item = true,
    show_guides = true,
    position = "right",
    relative_width = true,
    width = 35,
    wrap = false,
    keymaps = { fold = "h", unfold = "l", fold_all = "zM", unfold_all = "zR" },
    symbols = {
        File = { icon = "", hl = "@text.uri" },
        Module = { icon = "全", hl = "@namespace" },
        Namespace = { icon = "凜", hl = "@namespacee" },
        Package = { icon = "", hl = "@namespacee" },
        Class = { icon = "", hl = "@type" },
        Method = { icon = "", hl = "@method" },
        Property = { icon = "", hl = "@method" },
        Field = { icon = "", hl = "@field" },
        Constructor = { icon = "", hl = "@constructor" },
        Enum = { icon = "", hl = "@type" },
        Interface = { icon = "ﰮ", hl = "@type" },
        Function = { icon = "", hl = "@function" },
        Variable = { icon = "", hl = "@constant" },
        Constant = { icon = "", hl = "@constant" },
        String = { icon = "", hl = "@string" },
        Number = { icon = "#", hl = "@number" },
        Boolean = { icon = "⊨", hl = "@boolean" },
        Array = { icon = "", hl = "@constant" },
        Object = { icon = "", hl = "@type" },
        Key = { icon = "🔐", hl = "@type" },
        Null = { icon = "ﳠ", hl = "@type" },
        EnumMember = { icon = "", hl = "@field" },
        Struct = { icon = "", hl = "@type" },
        Event = { icon = "🗲", hl = "@type" },
        Operator = { icon = "+", hl = "@operator" },
        TypeParameter = { icon = "", hl = "@parameter" }
        },
      
})


-- Highligh Colors
-- vim.cmd([[
-- hi CursorLineNr guifg=#7e9cd8
-- " hi FoldColumn guifg=#4a4f54 guibg=#26292c
-- hi FoldColumn guifg=#29292c guibg=#26292c
-- hi GitSignsAdd guibg=#193549 guifg=#3ad900
-- hi GitSignsChange guibg=#193549 guifg=#ffc600
-- hi GitSignsDelete guibg=#193549 guifg=#ff2600
-- hi ColorColumn guifg=NONE guibg=#204563 gui=NONE
-- ]])


