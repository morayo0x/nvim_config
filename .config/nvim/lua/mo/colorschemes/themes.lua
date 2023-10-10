-- Lualine Setup
require('lualine').setup{
   options = {
        --theme = 'base16-monokai',
        -- fmt = string.upper,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = ''  },
    }
}


require('kanagawa').setup{
     keywordStyle = { italic = false, bold = true },
}


vim.cmd[[ colorscheme base16-monokai]]


-- To disable highlights for supported plugin(s), call the `with_config` function **before** setting the colorscheme.
-- These are the defaults.
require('base16-colorscheme').with_config({
    telescope = true,
    indentblankline = true,
    notify = true,
    ts_rainbow = true,
    cmp = true,
    illuminate = true,
})

