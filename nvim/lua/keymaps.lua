local map = vim.api.nvim_set_keymap

vim.g.mapleader = ","

map("i", "jk", "<Esc>", { noremap = true })
map("n", "<Space>", "<cmd>noh<cr>", { noremap = true })
map("n", "<leader>w", ":w<CR>", { noremap = true })
map("n", "<leader>q", ":q!<CR>", { noremap = true })
map("n", "<leader>n", ":tabnew<CR>", { noremap = true })
map("n", "<leader>x", ":xa<CR>", { noremap = true })
map("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>", { noremap = true })
map("n", "<leader>e", ":Neotree float<CR>", { noremap = true })
map("n", "<Enter>", "i<Enter><Up><Right><Esc>", { noremap = true })
