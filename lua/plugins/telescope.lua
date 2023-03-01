require("telescope").setup({
    pickers = {
        live_grep = {
            additional_args = function(opts)
                return {"--hidden", "--no-ignore", "--glob=!.git/"}
            end
        },
    },
})
