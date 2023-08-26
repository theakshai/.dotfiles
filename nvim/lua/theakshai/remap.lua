vim.g.mapleader = " "

-- to change between windows
vim.keymap.set("n", "<leader>w", '<C-w>w')

-- to enter into ex mode
vim.keymap.set("n", "<leader>p", vim.cmd.Ex)
-- to enter into normal mode
vim.api.nvim_set_keymap('i','kj', '<Esc>',{noremap = true})

-- to select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- to toggle nvimtree
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>')

-- to increment
vim.keymap.set('n', '+', '<C-a>')

