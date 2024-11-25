-- completion

require('luasnip.loaders.from_vscode').lazy_load()

local cmp = require('cmp')
local luasnip = require('luasnip')

local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
        ['<Down>'] = cmp.mapping.select_next_item(select_opts),

        ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
        ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),

        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-y>'] = cmp.mapping.confirm({select = true}),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = {
        {name = 'path'},
        {name = 'nvim_lsp_signature_help'}, -- signatures preview
        {name = 'nvim_lsp', keyword_length = 1},
        {name = 'buffer', keyword_length = 3},
        {name = 'spell', keyword_length = 3},
        {name = 'luasnip', keyword_length = 2},
    },
    window = {
        documentation = cmp.config.window.bordered()
    },
    formatting = {
        fields = {'menu', 'abbr', 'kind'},
        format = function(entry, item)
            local menu_icon = {
                nvim_lsp = 'lsp',
                luasnip = 'snip',
                buffer = 'buf',
                path = 'path',
                spell = 'spell',
            }

            item.menu = menu_icon[entry.source.name]
            return item
        end,
    },
})

-- language server protocol
require("mason").setup()

local lspconfig = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.intelephense.setup({
    files = {
        maxSize = 10000000;
    },
    environment = {
        phpVersion = '8.3'
    }
})

lspconfig.gopls.setup({
    analyses = {
        unusedparams = true,
    },
    staticcheck = true,
    gofumpt = true,
})

lspconfig.lua_ls.setup({
    capabilities = lsp_capabilities,
})
lspconfig.clangd.setup{}

