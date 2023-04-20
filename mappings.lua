---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>w"] = { "<cmd> w <CR>", "Save buffer", opts = { nowait = true } },
    ["<leader>q"] = { "<cmd> wa <CR><cmd> qa <CR>", "Save all buffers and exit now." },
    ["<leader>gl"] = { "<cmd> LazyGit <CR>", "Open Lazygit"},
    ["<leader>gk"] = { "<cmd> lua require('telescope').extensions.lazygit.lazygit() <CR>", "Find git repo from session"}
  },
}

M.buffers = {
  n = {
    ["<leader>on"] = { "<cmd> bnext <CR>", "Go to next buffer" },
    ["<leader>op"] = { "<cmd> bprevious <CR>", "Go to previous buffer" },
    ["<leader>o1"] = { "<cmd> buffer 1 <CR>", "Go to buffer #1" },
    ["<leader>o2"] = { "<cmd> buffer 2 <CR>", "Go to buffer #2" },
    ["<leader>o3"] = { "<cmd> buffer 3 <CR>", "Go to buffer #3" },
    ["<leader>o4"] = { "<cmd> buffer 4 <CR>", "Go to buffer #4" },
    ["<leader>o5"] = { "<cmd> buffer 5 <CR>", "Go to buffer #5" },
    ["<leader>o6"] = { "<cmd> buffer 6 <CR>", "Go to buffer #6" },
    ["<leader>o7"] = { "<cmd> buffer 7 <CR>", "Go to buffer #7" },
    ["<leader>o8"] = { "<cmd> buffer 8 <CR>", "Go to buffer #8" },
    ["<leader>o9"] = { "<cmd> buffer 9 <CR>", "Go to buffer #9" },
    ["<leader>ox"] = { "<cmd> bdelete <CR>", "Close current buffer" },
    ["<leader>ow"] = { "<cmd> update <CR>", "Save current buffer" },
    ["<leader>oW"] = { "<cmd> wa <CR>", "Save all writable buffers" },
    ["<leader>oR"] = { "<cmd> bdelete! <CR>", "Force close current buffer" },
    ["<leader>oc"] = { "<cmd> only <CR>", "Close all other buffers" },
    ["<leader>or"] = { "<cmd> %bd | e# <CR>", "Close buffers to the right" },
    ["<leader>ol"] = { "<cmd> 1, # bd <CR>", "Close buffers to the left" },
    ["<leader>og"] = { "<cmd> Gdiffsplit <CR>", "Show git changes for current file" },
  }
}

-- more keybinds!

return M
