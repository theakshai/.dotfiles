vim.g.mapleader = " "
-- to enter into ex mode
vim.keymap.set("n", "<leader>w", vim.cmd.Ex)

-- to enter into normal mode
vim.api.nvim_set_keymap('i','kj', '<Esc>',{noremap = true})

-- to select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- to increment
vim.keymap.set('n', '+', '<C-a>')

