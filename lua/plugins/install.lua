require('lazy').setup({
    -- NOTE: First, some plugins that don't require any configuration
    'folke/which-key.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'numToStr/Comment.nvim',
    'tpope/vim-fugitive',
    'cbochs/grapple.nvim',
    'zootedb0t/citruszest.nvim',

    {
        "m4xshen/autoclose.nvim",
        config = (function() require("autoclose").setup() end)
    },

    {
        "echasnovski/mini.align",
        config = (function() require("mini.align").setup() end)
    },

    {
         'stevearc/oil.nvim',
         dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'williamboman/mason.nvim', config = true },
            'williamboman/mason-lspconfig.nvim',
            'folke/neodev.nvim',
        },
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            -- Snippet Engine & its associated nvim-cmp source
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp-signature-help',
        }
    },

    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'debugloop/telescope-undo.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
        },
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
    },
}, {})
