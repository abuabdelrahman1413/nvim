return{ -- Autoformat
		"stevearc/conform.nvim",
		opts = {
			notify_on_error = false,
			vim.api.nvim_set_keymap(
				"n",
				"<leader>f",
				':lua require("conform").format()<CR>',
				{ noremap = true, silent = true }
			),

			-- format_on_save = function(bufnr)
			-- 	-- Disable "format_on_save lsp_fallback" for languages that don't
			-- 	-- have a well standardized coding style. You can add additional
			-- 	-- languages here or re-enable it for the disabled ones.
			-- 	local disable_filetypes = { c = true, cpp = true }
			-- 	return {
			-- 		timeout_ms = 500,
			-- 		lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			-- 	}
			-- end,
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black", "isort" },
				-- c = {"clang_format"},
				cpp = { "clang_format" },
				-- You can use a sub-list to tell conform to run *until* a formatter
				-- is found.
				javascript = { { "prettierd", "prettier" } },
			},
		},
	}