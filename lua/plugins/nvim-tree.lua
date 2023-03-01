require('nvim-tree').setup({
    git = {
        enable = true,
        ignore = false,
        timeout = 500,
    },
    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
                folder = true,
                file = false,
                folder_arrow = true,
            }
        }
    },
    actions = {
        open_file = {
            resize_window = true
        }
    },
})
