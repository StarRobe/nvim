local lsp_installer = require "nvim-lsp-installer"

-- Include the servers you want to have installed by default below
local servers = {
  "clangd",
  "cssls",
  "html",
  "jsonls",
  "pyright",
  "sumneko_lua",
  "tsserver",
}

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
  local opts = {
    handlers = require("lsp.lspconfig").handlers,
    on_attach = require("lsp.lspconfig").on_attach,
    capabilities = require("lsp.lspconfig").capabilities,
    flags = {
      debounce_text_changes = 150,
    },
  }

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("lsp.server.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  -- This setup() function is exactly the same as lspconfig's setup function.
  -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  server:setup(opts)
end)
