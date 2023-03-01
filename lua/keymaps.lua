local map = vim.api.nvim_set_keymap 

-- Remap space as leader key
map('', '<Space>', '<Nop>', {noremap = true})
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Copy selected text to clipboard
map('v', 'y', '"+y', {noremap = true})

-- Ctrl+C as Esc
map('i', '<C-c>', '<Esc>', {noremap = true})

-- Disable search highlight
map('n', '<Leader>c', ':nohl<Bar>:echo<CR>', {noremap = true, silent = true})

-- Fast move
map('n', '<S-l>', '4l', {noremap = true})
map('n', '<S-h>', '4h', {noremap = true})
map('n', '<S-j>', '4j', {noremap = true})
map('n', '<S-k>', '4k', {noremap = true})

map('v', '<S-l>', '4l', {noremap = true})
map('v', '<S-h>', '4h', {noremap = true})
map('v', '<S-j>', '4j', {noremap = true})
map('v', '<S-k>', '4k', {noremap = true})

-- Fast windows jump
map('n', '<C-l>', '<C-w>l', {noremap = true})
map('n', '<C-h>', '<C-w>h', {noremap = true})
map('n', '<C-j>', '<C-w>j', {noremap = true})
map('n', '<C-k>', '<C-w>k', {noremap = true})

-- Join two lines
map('n', '<Leader>j', 'J', {noremap = true})

-- Show tabs, spaces, and line endings
map('n', '<Leader>l', ':set list!<CR>', {noremap = true, silent = true})

-- Disable ZZ exit
map('n', 'Z', '<Nop>', {noremap = true})
map('n', 'ZZ', '<Nop>', {noremap = true})

-- Swith to previous file
map('n', '<Tab>', ':e#<CR>', {noremap = true, silent = true})

-- Spell toggle
map('n', '<F8>', ':setlocal spell! spelllang=en,ru<CR>', {noremap = true, silent = true})

-- Float terminal
map('n', '<Leader>t', ':FloatermNew<CR>', {noremap = true, silent = true})
map('n', '<Leader>T', ':FloatermNew! cd %:p:h<CR>', {noremap = true, silent = true})


-- Telescope
map('n', ';', ':Telescope find_files find_command=rg,--no-ignore,--hidden,--files,--glob=!.git/<CR>', {noremap = true})
map('n', '`', ':Telescope buffers<CR>', {noremap = true})
map('n', '<leader>f', ':Telescope live_grep<CR>', {noremap = true})
map('v', '<leader>f', '"zy:Telescope live_grep default_text=<C-r>z<cr>', {noremap = true})
map('n', '<leader>fh', ':Telescope help_tags<CR>', {noremap = true})

-- LSP + Telescope
map('n', 'gr', ':lua require("telescope.builtin").lsp_references{}<CR>', {noremap = true, silent = true})
map('n', 'gi', ':lua require("telescope.builtin").lsp_implementations{}<CR>', {noremap = true, silent = true})
map('n', 'gd', ':lua require("telescope.builtin").lsp_definitions{}<CR>', {noremap = true, silent = true})
map('n', 'gt', ':lua require("telescope.builtin").lsp_type_definitions{}<CR>', {noremap = true, silent = true})
