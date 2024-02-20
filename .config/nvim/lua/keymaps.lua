vim.g.mapleader = " "

local keymap = vim.keymap

-- window management
keymap.set("n", "<leader>ww", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>ws", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>wx", "<cmd>close<CR>") -- close current split window

keymap.set("n", "<leader>wt", "<cmd>tabnew<CR>") -- open new tab
keymap.set("n", "<leader>]", "<cmd>tabn<CR>") --  go to next tab
keymap.set("n", "<leader>[", "<cmd>tabp<CR>") --  go to previ
