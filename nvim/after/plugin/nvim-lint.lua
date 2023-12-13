require("lint").linters_by_ft = {
	markdown = { "vale" },
	javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	vue = { "eslint_d" },
	python = { "pylint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
