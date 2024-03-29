local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

	use{
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = {('nvim-lua/plenary.nvim')}
	}


	use('nvim-treesitter/nvim-treesitter', {run = ':tsupdate'})

  --use { "ellisonleao/gruvbox.nvim" }

  use { "catppuccin/nvim", as = "catppuccin" }

	use {
	  'vonheikemen/lsp-zero.nvim',
	  requires = {
		  -- lsp support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- snippets
		  {'l3mon4d3/luasnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }


  use {
	 "windwp/nvim-autopairs",
	config = function() require("nvim-autopairs").setup {} end

  }


  -- lua
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
      }
    end
  }



  --for git
  use{"tpope/vim-fugitive"}


  -- magic file handling
  
  use("theprimeagen/harpoon")
  if packer_bootstrap then
    require('packer').sync()
  end

end)
