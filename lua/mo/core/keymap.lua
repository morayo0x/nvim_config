function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader>ts", ":SymbolsOutline<CR>")
map("n", "wq", "<cmd>wq<CR>")

-- Nvim-Tree Toggle for File Explorer
map('n', "<leader>tt", "<cmd>NvimTreeToggle<CR>")
map('i', "<leader>tt", "<ESC><cmd>NvimTreeToggle<CR>")
map('n', "<leader>tf", ":NvimTreeFocus<CR>")


-- [[ Telescope Keymap Config]] -- Searching file and words
-- Find files
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
-- searc word
map("n", "<leader>tf", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
--
map("n", "<leader>bf", "<cmd>lua require('telescope.builtin').buffers()<CR>")

map("n", "<leader>fi", "<cmd>lua require('telescope.builtin').lsp_implementations()<CR>")

-- Transparency
map("n", "<leader>\\", ":TransparentToggle<CR>")


-- FloatTerm Toggle
map('n', "dt", '<cmd>lua require("FTerm").toggle()<CR>')
map('t', "ct", '<C-\\><C-n><cmd>lua require("FTerm").toggle()<CR>')
map('t', "ct", '<C-\\><C-n><cmd>lua require("FTerm").toggle()<CR>')


-- LSP Navigation
-- Code Actions
map('n', "ca", ":lua vim.lsp.buf.code_action()<CR>")
vim.cmd([[
nnoremap <silent> gtd     <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gts     <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> gth        <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gti        <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gc        <cmd>lua vim.lsp.buf.incoming_calls()<CR>
nnoremap <silent> gd        <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr        <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gn        <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> gs        <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gw        <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
]])

vim.cmd([[
nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>
]])


-- ----------------------------------------------
-- TODO-S todo-comments
-- -------------------------------------------------

-- [[ Todo Trouble]] - Open all todo-comments in Trouble
map("n", "tdt", ":TodoTrouble<CR>")

-- [[ Todo Telescope]] - Open all todo-comments in Trouble
map("n", "<leader>tdt", ":TodoTelescope<CR>")

-- [[ Todo Location List]]- Open all todos based on their locations
map("n", "tdl", ":TodoLocList<CR>")
map("n", "<leader>xx", ":TroubleToggle<CR>")



-- [[ Copy and Pasty Shortcuts ]]
-- Copy To Clipboard
map("v", "<leader>y", "+y") 
map("n", "<leader>p", "+p")


-- Quickly Switch Between buffers
map("n", "<leader><leader><leader>", "<C-^>")
map("i", "<leader><leader>", "<ESC><C-^>")

-- Switching Buffer with Lef and Right Arrow Keey
map("n", "<left>", "<cmd>bp<CR>")
map("n", "<right>", "<cmd>bn<CR>")


-- Enter Command Mode using ; instead of :
map("n", ";",  ":")


-- [[ Jump to End And Start of Line using the Home keys ]]
map("n", "H", "^")
map("n", "L", "$")

-- exit insert mode and save
map("i", "jk", "<ESC><cmd>w<CR>")
map("n", "jk", "<cmd>w<CR>")
map("i", "nm", "<ESC>")

-- exit
map("n", "fq", ":q<CR>")

-- undo
map("n", "<leader>ud", ":undo<CR>")

-- [[Multiple Tabs]]
--
map("n", "<leader>ont", "<cmd>tabnew<CR>") 
map("n", "<leader>cct", "<cmd>tabclose<CR>") 
map("n", "<leader>nt", "<cmd>tabNext<CR>") 
map("n", "<leader>pt", "<cmd>tabprev<CR>") 


-- [[ Splitting Windows]]
-- open command and give the filename to open a buffers horizontally and vertically
map("n", "sv", ":vsplit ./")
map("i", "sh", "<ESC>:split ./")

-- [[SPLIT VERICALLY]]
map("n", "<leader>sv", "<cmd>vsplit<CR>")
map("i", "<leader>sv", "<cmd>vsplit<CR>")


-- [[ SPLIT HORIZONTALLY]]
map("i", "<leader>sh", "<cmd>split<CR>")
map("n", "<leader>sh", "<cmd>split<CR>")

-- TROUBLE
map("n", "<leader>xx", "<cmd>TroubleToggle<CR>")
map("i", "<leader>xx", "<ESC><cmd>TroubleToggle<CR>")


-- [[Navigating Window]]
map("n", "<C-j>", "<C-W>j")   -- move to the bottom window
map("i", "<C-j>", "<C-W>j")

map("i", "<C-k>", "<C-W>k")   -- move to the top window
map("n", "<C-k>", "<C-W>k")   -- move to the top window

map("n", "<C-h>", "<C-W>h")   -- move to the left window
map("i", "<C-h>", "<C-W>h")   -- move to the left window

map("i", "<C-l>", "<C-W>l")   -- move to the right window
map("n", "<C-l>", "<C-W>l")   -- move to the right window

local opts = {}
vim.api.nvim_set_keymap("v", "<C-r>", "<CMD>SearchReplaceSingleBufferVisualSelection<CR>", opts)
vim.api.nvim_set_keymap("v", "<C-s>", "<CMD>SearchReplaceWithinVisualSelection<CR>", opts)
vim.api.nvim_set_keymap("v", "<C-b>", "<CMD>SearchReplaceWithinVisualSelectionCWord<CR>", opts)

vim.api.nvim_set_keymap("n", "<leader>rs", "<CMD>SearchReplaceSingleBufferSelections<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>ro", "<CMD>SearchReplaceSingleBufferOpen<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>rw", "<CMD>SearchReplaceSingleBufferCWord<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>rW", "<CMD>SearchReplaceSingleBufferCWORD<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>re", "<CMD>SearchReplaceSingleBufferCExpr<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>rf", "<CMD>SearchReplaceSingleBufferCFile<CR>", opts)

vim.api.nvim_set_keymap("n", "<leader>rbs", "<CMD>SearchReplaceMultiBufferSelections<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>rbo", "<CMD>SearchReplaceMultiBufferOpen<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>rbw", "<CMD>SearchReplaceMultiBufferCWord<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>rbW", "<CMD>SearchReplaceMultiBufferCWORD<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>rbe", "<CMD>SearchReplaceMultiBufferCExpr<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>rbf", "<CMD>SearchReplaceMultiBufferCFile<CR>", opts)

-- show the effects of a search / replace in a live preview window
vim.o.inccommand = "split"




--  No Arrow Keys
-- Normal Mode
map("n", "<up>", "<nop>")
map("n", "<down>", "<nop>")
map("n", "<left>", "<nop>")
map("n", "<right>", "<nop>")
-- Insert Mode
map("i", "<down>", "<nop>")
map("i", "<up>", "<nop>")
map("i", "<left>", "<nop>")
map("i", "<right>", "<nop>")
