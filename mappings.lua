local M = {}

M.lspconfig = {
  n = {
    ["<leader>cr"] = { ":lua LspReference()<cr>", desc = "go to reference" },
    ["<leader>cd"] = { ":lua FloatingDiagnostics()<cr>", desc = "Floating diagnostic" },
    ["<leader>cn"] = { ":lua LspRename()<CR>", desc = "LSP rename" },
    -- ["<leader>ca"] = { "<cmd>CodeActionMenu<CR>", desc = "LSP code action" },
    ["gn"] = { ":lua LspGoToNext()<CR>", desc = "go to next diagnostic" },
    ["gN"] = { ":lua LspGoToPrevious()<CR>", desc = "go to previous diagnostic" },
  },
}

-- Better window navigation
M.general = {
  n = {
    -- ["s"] = { ":lua Flash()<CR>", desc = "Flash" },
    -- ["<leader>td"] = { ":lua Hex()<CR>", desc = "hex dump" },
    -- ["gn"] = { "lua TroubleNext()<CR>", desc = "next error" },
    -- ["<leader>a"] = { "<cmd>AerialToggle!<CR>", desc = "Aerial" },
    ["<C-k>"] = { "<C-w><C-k>", desc = "Move focus to the upper window" },
    ["<C-j>"] = { "<C-w><C-j>", desc = "Move focus to the lower window" },
    ["<C-l>"] = { "<C-w><C-l>", desc = "Move focus to the right window" },
    ["<C-h>"] = { "<C-w><C-h>", desc = "Move focus to the left window" },
    ["<leader>w"] = { ":w<CR>", desc = "save the current file" },
    ["<leader>bc"] = { ":bdelete<CR>", desc = "close the current buffer" },
    -- ["<leader>m"] = { ":lua require('harpoon.mark').add_file()<CR>", desc = "mark the file" },
    -- ["<leader>h"] = { ":lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "harpoon" },
    ["<leader>e"] = { ":NvimTreeToggle<CR>", desc = "Toggle tree view" },
    ["<leader>q"] = { ":q<CR>, close vim" },
    ["<leader>ind"] = { "gg=G<C-o>", desc = "indent the whole file" },
    -- ["H"] = { ":lua require('harpoon.ui').nav_prev() <CR>", desc = "previous marked file" },
    -- ["L"] = { ":lua require('harpoon.ui').nav_next() <CR>", desc = "next marked file" },
    -- ["<C-.>"] = { "<cmd>Oil<CR>", desc = "Open parent directory in a vim buffue" },
    -- ["gl"] = { "$", desc = "go to the end of the line" },
    -- ["gh"] = { "0w", desc = "go to the start of the line" },
    -- ["*"] = { "*``" },
    -- ["gs"] = { 'maviw"hy:,$s/<C-r>h//g<left><left><left>', desc = "global substitution" },
    -- ["<leader>fi"] = { "z=1<CR><CR>", desc = "fix the word under the cursor" },
  },
  v = {
    -- ["gl"] = { "$, go to the end of the line" },
    -- ["gh"] = { "0w, go to the start of the line" },
    -- ["tr"] = { "<cmd>Translate EN<CR>" },
    -- ["<leader>cs"] = { ":Silicon<CR>" },
    -- ["<leader>fi"] = { ":s/( /(/ge" },
    -- ["<leader>fp"] = { ":s# \\+# #g<CR><Esc>" },
  },
  i = {},
  t = {
    ["<Esc><Esc>"] = { "<C-\\><C-n>", desc = "Exit terminal mode" },
  },
}

return M
