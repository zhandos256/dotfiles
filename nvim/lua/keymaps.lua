local map = vim.keymap.set

vim.g.mapleader = " "

map("i", "jk", "<Esc>")
map("n", ";", ":")
map("n", "<leader>", ":nohl<CR>")
map("n", "<leader>n", ":tabnew ")
map("n", "Y", "<S-v>:%y+<CR>")
