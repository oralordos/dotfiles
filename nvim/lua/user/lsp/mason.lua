require('mason').setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require('mason-lspconfig').setup()

require('mason-lspconfig').setup_handlers({
  function(server_name)
    local opts = {
      on_attach = require('user.lsp.handlers').on_attach,
      capabilities = require('user.lsp.handlers').capabilities
    }

    local require_ok, conf_opts = pcall(require, 'user.lsp.settings.' .. server_name)
    if require_ok then
      opts = vim.tbl_deep_extend('force', conf_opts, opts)
    end

    require('lspconfig')[server_name].setup(opts)
  end
})
