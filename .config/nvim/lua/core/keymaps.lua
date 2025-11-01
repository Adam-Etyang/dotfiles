vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set
local opts = {noremap = true, silent = true}


map("n", "<leader>w", ":w<CR>", { desc = "write file", noremap = true, silent = true })
map("n", "<leader>q", ":q<CR>", { desc = "quit", noremap = true, silent = true })
map("n", "<leader>h", ":nohlsearch<CR>", { desc = "nohlsearch", noremap = true, silent = true })

--moving to differnt windows
map("n", "<leader>e", ":Neotree<CR>", { desc = "File explorer", noremap = true, silent = true })
map("n", "<C-h>", "<C-w>h", {desc = "Switch to left window", noremap = true, silent= true})
map("n", "<C-j>", "<C-w>j", {desc = "Switch to bottom window", noremap = true, silent = true})
map("n", "<C-k>", "<C-w>k",  {desc = "Switch to top window", noremap = true, silent = true})
map("n", "<C-l>", "<C-w>l",  {desc = "Switch to right window", noremap = true, silent = true})

-- Resize window using <ctrl> arrow keys
map("n", "<C-=>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-->", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })


