---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>w"] = { "<cmd> w <CR>", "Save buffer", opts = { nowait = true } },
    ["<leader>q"] = { "<cmd> wa <CR><cmd> qa <CR>", "Save all buffers and exit now." },
  },
}

-- more keybinds!

return M
