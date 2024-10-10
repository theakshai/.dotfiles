return {
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  config = function ()
    requir('mason').setup()
  end
}

