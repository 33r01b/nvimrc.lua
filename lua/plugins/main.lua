vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer can manage itself
    use 'wbthomason/packer.nvim'

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

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
end)
