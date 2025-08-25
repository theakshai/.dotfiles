return { 
  {
    'nvim-treesitter/nvim-treesitter', 
    build = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = {
          "terraform",  
          "go",  
          "lua", 
          "java",
          "yaml"
        },
        highlight = {
          enable = true,  
          additional_vim_regex_highlighting = false,  
        },
      }
    end,
  }
}

