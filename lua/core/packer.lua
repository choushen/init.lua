-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' },
            { 'jose-elias-alvarez/null-ls.nvim' },
            { 'onsails/lspkind-nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'windwp/nvim-autopairs' },
            { 'windwp/nvim-ts-autotag' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- Nvim Surround
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- Nvim Dap
    use { 'mfussenegger/nvim-dap',
        'rcarriga/nvim-dap-ui', }

    -- -- Neo Dev
    -- use 'folke/neodev.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
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
    use("nvim-tree/nvim-tree.lua")

    -- Lua Line
    use("nvim-lualine/lualine.nvim")

    -- Git blame
    -- use('f-person/git-blame.nvim')

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


    -- Null Ls
    -- use{
    --   ("jose-elias-alvarez/null-ls.nvim"),
    --   requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    -- }


    -- Nui
    use("MunifTanjim/nui.nvim")

    -- Bufferline
    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

    -- Undotree (Undo History)
    use("mbbill/undotree")

    -- Fugitive (Git)
    use("tpope/vim-fugitive")

    -- Trouble (LSP Diagnostics)
    use {
        "folke/trouble.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
        opts = {
        },
    }

    -- Toggleterm
    use { 'akinsho/toggleterm.nvim' }

    -- Colorizer
    use { 'norcalli/nvim-colorizer.lua' }

    -- Zen
    use { 'folke/zen-mode.nvim' }


    -- Theme
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
end)
