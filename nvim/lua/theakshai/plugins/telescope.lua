return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'}, -- added comma here
    config = function()
      local builtin = require('telescope.builtin')
      local actions = require('telescope.actions')
      local config = require('telescope.config')
      local telescope = require('telescope')
      telescope.setup {
        pickers = {
          find_files = {
            hidden = true
          }
        }
      }
      vim.keymap.set('n', '<leader>f', builtin.find_files, {})
    end
  }
}


