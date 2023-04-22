local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "tailwindcss" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.svelte.setup {
  settings = {
    svelte = {
      plugin = {
        svelte = {
          format = {
            enable = true,
          }
        }
      }
    }
  }
}
--
-- lspconfig.pyright.setup { blabla}
--
lspconfig.yamlls.setup {
  settings = {
    yaml = {
      validate = true,
      completion = true,
      hover = true,
      sortKeys = false,
    },
  },
}
