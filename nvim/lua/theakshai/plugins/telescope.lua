vim.g.mapleader = " "
return {
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'}, -- added comma here
    config = function()
      local telescope = require('telescope')
      local builtin = require('telescope.builtin')

      -- Telescope setup
      telescope.setup {
        defaults = {
          -- You can add default configurations here
        },
        pickers = {
          find_files = {
            hidden = true,
          },
        },
        extensions = {
          -- You can load any extensions here
        },
      }

      -- Key mapping for finding files
      vim.keymap.set('n', '<leader>f', builtin.find_files, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>d', ":lua require('telescope.builtin').find_files({cwd = vim.fn.expand('%:p:h')})<CR>", { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>g', builtin.live_grep, { noremap = true, silent = true })



    end,
  }
}

