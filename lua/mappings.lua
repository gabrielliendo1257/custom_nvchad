require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map('n', 'ca', vim.lsp.buf.code_action)
map('n', 'rn', vim.lsp.buf.rename)
map('n', 'K', vim.lsp.buf.hover)
