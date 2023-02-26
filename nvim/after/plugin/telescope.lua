local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local config = require('telescope.config')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})


