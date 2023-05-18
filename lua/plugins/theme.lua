
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = true,
    term_colors = true,
})

vim.cmd.colorscheme "catppuccin"

vim.api.nvim_set_hl(0, 'ColorColumn', {bg='#262626'})
vim.api.nvim_set_hl(0, 'CursorLine', {bg='#262626'})
vim.api.nvim_set_hl(0, 'NvimTreeVertSplit', {bg='#262626'})
vim.api.nvim_set_hl(0, 'NvimTreeNormal', {bg=none})
vim.api.nvim_set_hl(0, 'lualine_c_normal', {bg=none})
vim.api.nvim_set_hl(0, 'lualine_c_normal', {bg='#262626'})
