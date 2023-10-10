local opt = vim.opt
local set = vim.opt
local cmd = vim.api.nvim_command
local g = vim.g

-- local o = vim.o
--
--
-- ident
vim.cmd([[
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
]])

-- spell check:
vim.cmd([[
set spelllang=en_us
]])

opt.number = true	-- show left numbers
opt.relativenumber = true --  show relative numbers
opt.signcolumn = "yes"  --  Show the sign column
opt.cursorline = true -- display cursor line
set.cursorlineopt = 'number'

opt.list = true

-- [[ Search ]]
opt.ignorecase = true -- bool: ignore case in search patterns
opt.smartcase = true  -- bool: Overide ignorecase if search contains uppercase letter(s)
opt.incsearch = true    -- bool: use incremental search 
opt.hlsearch = false    -- bool: Highlight search matches

-- [[ WhiteSpaces ]]
opt.expandtab = true    -- bool: Use spaces instead of tabs
opt.shiftwidth = 2      -- num: Size of indent
opt.softtabstop = 2     -- num: number of spaces tab counts for in insert mode
opt.tabstop = 2         -- num: Number of spaces tabs count for

-- [[Filetypes]]
opt.encoding = 'utf8'   -- str: String encoding to use
opt.fileencoding = 'utf8' -- str: File endcoding to use

opt.syntax = "ON" -- str: Allow syntax highlighting
opt.termguicolors = true -- bool: If term supports ui color then enable
g.t_co = 256
g.background = "dark"


