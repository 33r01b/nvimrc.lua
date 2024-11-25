require('nvim-treesitter.configs').setup({
    ensure_installed = { 
        "bash",
        "c",
        "cpp",
        "dockerfile",
        "go",
        "graphql",
        "json",
        "lua",
        "php",
        "rust",
        "sql",
        "twig",
        "vim",
        "latex",
        "yaml",
        "markdown",
        "markdown_inline"
    },
    refactor = {
        highlight_definitions = {enable = true},
    },
    highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
})
