-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
-- keymap("n", "<C-j>", "<C-w>h", opts)
-- keymap("n", "<C-k>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- remap left and right to start and end of line
-- keymap("n", "<Right>", "$", opts)
-- keymap("n", "<Left>", "^", opts)
-- keymap("v", "<Right>", "$", opts)
-- keymap("v", "<Left>", "^", opts)
-- keymap("x", "<Right>", "$", opts)
-- keymap("x", "<Left>", "^", opts)

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<ESC>", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<leader>c", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Map l to s in dvorak
-- keymap("n", "s", "l", opts)
-- keymap("n", "l", "s", opts)
-- keymap("v", "s", "l", opts)
-- keymap("v", "l", "s", opts)
-- keymap("x", "s", "l", opts)
-- keymap("x", "l", "s", opts)

-- map e to w for easier navigation on dvorak
keymap("n", "e", "w", opts)
keymap("n", "w", "e", opts)
keymap("v", "e", "w", opts)
keymap("v", "w", "e", opts)
keymap("x", "e", "w", opts)
keymap("x", "e", "e", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>te", ":Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>tt", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>tp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>tb", ":Telescope buffers<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<C-/>", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<C-/>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Lsp
keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)

-- start and end of line
keymap("n", "<S-l>", "$", opts)
keymap("n", "<S-h>", "^", opts)
keymap("v", "<S-l>", "$", opts)
keymap("v", "<S-h>", "^", opts)
keymap("x", "<S-l>", "$", opts)
keymap("x", "<S-h>", "^", opts)
keymap("o", "<S-l>", "$", opts)
keymap("o", "<S-h>", "^", opts)

-- center screen after these commands
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

keymap('n', 'zR', "<cmd>lua require('ufo').openAllFolds()<cr>", opts)
keymap('n', 'zM', "<cmd>lua require('ufo').closeAllFolds()<cr>", opts)

keymap("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
keymap("n", "<leader>he", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>hj", "<cmd>lua require('harpoon.ui').nav_next()<cr>", opts)
keymap("n", "<leader>hk", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", opts)

keymap("n", "<leader>hh", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", opts)
keymap("n", "<leader>ht", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", opts)
keymap("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", opts)
keymap("n", "<leader>hs", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", opts)
-- <leader>, saves
keymap("n", "<leader>,", ":w<CR>", opts)
