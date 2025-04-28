--return { 
--  {
--    'nvim-treesitter/nvim-treesitter', 
--    build = ':TSUpdate',
--  }
--}

return { 
  {
    'nvim-treesitter/nvim-treesitter', 
    build = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = {
          "terraform",  -- Add Terraform to the list of installed parsers
          "lua", 
        },
        highlight = {
          enable = true,  -- Enable syntax highlighting
          additional_vim_regex_highlighting = false,  -- Disable additional Vim regex highlighting
        },
        -- You can add other configurations here as needed
      }
    end,
  }
}

