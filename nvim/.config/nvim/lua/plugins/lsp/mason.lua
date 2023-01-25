local servers = {
  "clangd",
  "cssls",
  "eslint",
  "html",
  "jsonls",
  "pyright",
  "sumneko_lua",
  "tsserver",
  "vimls",
}

local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "●",
      package_pending = "●",
      package_uninstalled = "●",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
  ensure_installed = servers,
  automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local options = {}

for _, server in pairs(servers) do
  options = {
    on_attach = require("plugins.lsp.handlers").on_attach,
    capabilities = require("plugins.lsp.handlers").capabilities,
  }

  server = vim.split(server, "@")[1]

  local require_ok, conf_opts = pcall(require, "plugins.lsp.providers." .. server)
  if require_ok then
    options = vim.tbl_deep_extend("force", conf_opts, options)
  end

  lspconfig[server].setup(options)
end

require("plugins.lsp.null-ls").setup(options)