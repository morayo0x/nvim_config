--local highlight = {
   -- "RainbowRed",
   -- "RainbowYellow",
  --  "RainbowBlue",
   -- "RainbowOrange",
   -- "RainbowGreen",
  --  "RainbowViolet",
   -- "RainbowCyan",
--}

local highlight = {
    "CursorColumn",
    "Whitespace",
}
require("ibl").setup {
    indent = { highlight = highlight, char = "" },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
}


-- hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

-- Commenting
require("Comment").setup()
