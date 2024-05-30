return {
	"jose-elias-alvarez/null-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				-- null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.beautysh,
				null_ls.builtins.diagnostics.pycodestyle,
				-- null_ls.builtins.diagnostics.eslint_d,
				-- null_ls.builtins.diagnostics.rubocop,
				-- null_ls.builtins.formatting.rubocop,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
