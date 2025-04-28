--vim.g.mapleader = " "
--return {
--  {
--    'nvim-telescope/telescope.nvim', 
--    tag = '0.1.4',
--    dependencies = {'nvim-lua/plenary.nvim'}, -- added comma here
--    config = function()
--      local telescope = require('telescope')
--      local builtin = require('telescope.builtin')
--
--      -- Telescope setup
--      telescope.setup {
--        defaults = {
--          -- You can add default configurations here
--        },
--        pickers = {
--          find_files = {
--            hidden = true,
--          },
--        },
--        extensions = {
--          -- You can load any extensions here
--        },
--      }
--
--      -- Key mapping for finding files
--      vim.keymap.set('n', '<leader>f', builtin.find_files, { noremap = true, silent = true })
--      vim.keymap.set('n', '<leader>d', ":lua require('telescope.builtin').find_files({cwd = vim.fn.expand('%:p:h')})<CR>", { noremap = true, silent = true })
--      vim.keymap.set('n', '<leader>g', builtin.live_grep, { noremap = true, silent = true })
--
--
--
--    end,
--  }
--}
--
--
vim.g.mapleader = " "

return {
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require('telescope')
      local builtin = require('telescope.builtin')

      -- Telescope setup
      telescope.setup {
        defaults = {
          -- Global defaults
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden",           -- Include hidden files
            "--glob", "!.git/*",  -- Exclude .git/
          },
        },
        pickers = {
          find_files = {
            hidden = true,        -- Include hidden files
            find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" }, -- Use ripgrep for better performance
          },
        },
      }

      -- Key mappings
      vim.keymap.set('n', '<leader>f', builtin.find_files, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>d', function()
        builtin.find_files({ cwd = vim.fn.expand('%:p:h') })
      end, { noremap = true, silent = true })

      vim.keymap.set('n', '<leader>g', function()
        builtin.live_grep({ additional_args = function() return { "--hidden", "--glob", "!.git/*" } end })
      end, { noremap = true, silent = true })

    end,
  }
}

