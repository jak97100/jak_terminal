-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have pac ker configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Installed color themes
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use { "ellisonleao/gruvbox.nvim" }
  use { "blazkowolf/gruber-darker.nvim" }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
}

-- TODO: doesn't work
use ('leosmaia21/gcompilecommands.nvim')

use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
}

use { 'numToStr/Comment.nvim' }


use {
  'nmac427/guess-indent.nvim',
  config = function() require('guess-indent').setup {} end,
}

end)
