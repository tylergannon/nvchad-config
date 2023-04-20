local opts = {
  on_attach = function(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- put some default mappings here
    vim.keymap.set("n", "K", api.node.show_info_popup, opts "Info")
    vim.keymap.set("n", "L", api.node.open.tab, opts "Open: New Tab")
    vim.keymap.set("n", "h", api.node.open.vertical, opts "Open: Vertical Split")
    vim.keymap.set("n", "H", api.node.open.horizontal, opts "Open: Horizontal Split")
    vim.keymap.set("n", "l", api.node.open.edit, opts "Open")
  end,
}

return opts

