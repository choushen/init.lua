-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Plugins
  use {('nvim-lua/plenary.nvim')}

  use {('nvim-lua/popup.nvim')}

  use {('nvim-telescope/telescope.nvim')}

  use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
			}
		} 

	use {('hrsh7th/nvim-compe')}

	use {('hrsh7th/vim-vsnip')}

	use {('hrsh7th/vim-vsnip-integ')}

	use {('windwp/nvim-autopairs')}

	use {('tpope/vim-surround')}

	use {('tpope/vim-commentary')}

	use {('tpope/vim-repeat')}

	use {('tpope/vim-rhubarb')}

	use {('tpope/vim-unimpaired')}

	use {('tpope/vim-dispatch')}

	use {('tpope/vim-sleuth')}

	use {('tpope/vim-abolish')}

	use {('tpope/vim-endwise')}

	use {('tpope/vim-eunuch')}

	use {('tpope/vim-projectionist')}

	use {('tpope/vim-scriptease')}

	use {('tpope/vim-sensible')}

	use {('tpope/vim-speeddating')}

	use {('tpope/vim-surround')}

	use {('tpope/vim-vinegar')}

	use {('tpope/vim-repeat')}

	use {('tpope/vim-characterize')}

	use {('tpope/vim-obsession')}

	use {('tpope/vim-rsi')}

	-- importing which key with packer
	use {('folke/which-key.nvim')}

	-- use {('tpope/vim-visualrepeat')}

	-- use {('tpope/vim-zenroom')}

	-- use {('tpope/vim-zip')}

	-- use {('tpope/vim-xml')}

	use {('tpope/vim-jdaddy')}

	-- use {('tpope/vim-grammarous')}

	use {('tpope/vim-liquid')}

	use {('tpope/vim-ragtag')}

	use {('tpope/vim-rails')}

	use {('tpope/vim-bundler')}

	use {('tpope/vim-rake')}

	-- use {('tpope/vim-ruby')}

	use {('tpope/vim-rvm')}

	use{("mbbill/undotree")}

	use{("theprimeagen/harpoon")}

	use{("tpope/vim-fugitive")}

	use{("github/copilot.vim")}


    -- Theme
    use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
		  vim.cmd('colorscheme rose-pine')
		end
	})

end)



