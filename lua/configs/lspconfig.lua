require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "pyright",
  "gopls",
  "ruby_lsp",
  "ts_ls",
}
vim.lsp.enable(servers)
