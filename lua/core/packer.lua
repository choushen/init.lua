-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Mason LSP
    use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  }

  -- LSP Lines
  use({
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  })


    -- Telescope
    use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Treesitter
    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Harpoon
    use("theprimeagen/harpoon")

    -- Copilot
    use("github/copilot.vim")

    -- Nvim-Tree Web Dev Icons
    -- Use specific branch, dependency and run lua file after load
    use 'nvim-tree/nvim-web-devicons'

    -- Nvim-Tree
    use ("nvim-tree/nvim-tree.lua")

    -- Lua Line
    use("nvim-lualine/lualine.nvim")

    -- which-key
    use {
        "folke/which-key.nvim",
        config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
          }
        end
      }

    -- Nui
    use ("MunifTanjim/nui.nvim")

    -- Neotree
    -- use {
    --   "nvim-neo-tree/neo-tree.nvim",
    --     branch = "v2.x",
    --     requires = { 
    --       "nvim-lua/plenary.nvim",
    --       "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    --       "MunifTanjim/nui.nvim",
    --     }
    --   }

    -- Bufferline
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    -- Undotree (Undo History)
    use("mbbill/undotree")

    -- Fugitive (Git)
    use("tpope/vim-fugitive")

-- Trouble (LSP Diagnostics)
  use {
  "folke/trouble.nvim",
  requires = { "nvim-tree/nvim-web-devicons" },
  opts = {
   -- your configuration comes here
   -- or leave it empty to use the default settings
   -- refer to the configuration section below
  },
 }

  -- Theme
  use({
  'rose-pine/neovim',
  as = 'rose-pine',
  config = function()
    vim.cmd('colorscheme rose-pine')
  end
  })

end)
