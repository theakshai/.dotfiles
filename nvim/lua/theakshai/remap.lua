-- Set leader key
vim.g.mapleader = " "

-- to change between windows
vim.keymap.set("n", "<leader>w", '<C-w>w')

-- to enter into normal mode
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true })

-- to select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- to increment
vim.keymap.set('n', '+', '<C-a>')

-- moving across buffers
vim.keymap.set('n', '<S-h>', ':bprevious<CR>')
vim.keymap.set('n', '<S-l>', ':bnext<CR>')

-- splitting panes
vim.keymap.set('n', "<leader>h", ':vsplit<CR>')

-- Toggling nvim-tree
vim.keymap.set('n', "<leader>p", ':NvimTreeToggle<CR>', { noremap = true, silent = true })

