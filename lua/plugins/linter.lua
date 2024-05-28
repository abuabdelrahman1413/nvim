

	return {{ -- Linter Ale

		"dense-analysis/ale",
		config = function()
			-- Configuration goes here.
			local g = vim.g

			g.ale_ruby_rubocop_auto_correct_all = 1

			g.ale_linters = {
				lua = { "lua_language_server" },
				python = { "pycodestyle" },
			}
		end,
	},

	{ -- Betty style for c
		"JuanDAC/betty-ale-vim",
	}}
