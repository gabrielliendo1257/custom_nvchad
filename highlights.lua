local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
  CursorLine = {
    -- bg = "white", -- Imposta il colore di sfondo giallo
    -- fg = "blue",         -- Imposta il colore del testo nero
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
