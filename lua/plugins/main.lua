vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer can manage itself
    use 'wbthomason/packer.nvim'

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- completion
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            'f3fora/cmp-spell',
            'hrsh7th/cmp-calc',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'octaltree/cmp-look',
        }
    }

    use {
        'hrsh7th/cmp-vsnip',
        after = 'nvim-cmp',
        requires = {
            'hrsh7th/vim-vsnip',
            {
                'rafamadriz/friendly-snippets',
                after = 'cmp-vsnip'
            }
        }
    }

    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })

    -- theme
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- filebrowser
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons', opt = true}
    }

    -- terminal
    use 'voldikss/vim-floaterm'

    -- closes brackets
    use "windwp/nvim-autopairs"
    require("nvim-autopairs").setup()

    -- comments
    use "terrortylor/nvim-comment"
    require('nvim_comment').setup()

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }

    -- git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    require('gitsigns').setup()

    -- easy motion
    use 'ggandor/lightspeed.nvim'

    -- highlights 
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/nvim-treesitter-refactor'
end)
