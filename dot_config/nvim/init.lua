require("config.lazy")

-- Setup LSP
local lspconfig = require("lspconfig")

-- Install Ansible Language Server (requires ansible-lint & ansible)
lspconfig.ansiblels.setup({
  cmd = { "ansible-language-server", "--stdio" },
  filetypes = { "yaml", "yml" },
  settings = {
    ansible = {
      ansibleLint = {
        enabled = true,
      },
    },
  },
})
