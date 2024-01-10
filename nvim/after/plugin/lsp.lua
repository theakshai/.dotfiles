local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
  configure_diagnostics = true,
})

lsp.setup_servers({'tsserver', 'eslint'})
-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)
