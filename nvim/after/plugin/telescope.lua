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



