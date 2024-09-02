-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  -- theme = "onedark",
  theme = "yoru",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.term = {
  float = {
    relative = "editor",
    border = "single",
    row = 0.15,
    col = 0.09,
    width = 0.8,
    height = 0.7,
  },
}

return M
