-- filetypes
local ftGroup = vim.api.nvim_create_augroup("filetype_group", { clear = false })

-- Run gofmt on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*.go" },
	group = ftGroup,
    callback = function()
		vim.lsp.buf.format({ async = true })
	end,
})

