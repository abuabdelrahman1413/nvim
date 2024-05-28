
return {{
		"nvim-orgmode/orgmode",
		ft = { "org" },
		config = function()
			require("orgmode").setup({})
			-- Load custom tree-sitter grammar for org filetype
			require("orgmode").setup_ts_grammar()

			-- Tree-sitter configuration
			require("nvim-treesitter.configs").setup({
				-- If TS highlights are not enabled at all, or disabled via ``disable`` prop, highlighting will fallback to default Vim syntax highlighting
				highlight = {
					enable = true,
					disable = { "org" }, -- Remove this to use TS highlighter for some of the highlights (Experimental)
					additional_vim_regex_highlighting = { "org" }, -- Required since TS highlighter doesn't support all syntax features (conceal)
				},
				ensure_installed = { "org" }, -- Or run :TSUpdate org
			})

			require("orgmode").setup({
				org_agenda_files = { "~/Dropbox/org/*", "~/my-orgs/**/*" },
				org_default_notes_file = "~/Dropbox/org/refile.org",
			})
require'cmp'.setup({
  sources = {
    { name = 'orgmode' }
  }
})
		end,
	},



{ -- org-bullet
  'akinsho/org-bullets.nvim', config = function()
  require('org-bullets').setup()
end},

{ --org-mode headlines
        "lukas-reineke/headlines.nvim",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true, -- or `opts = {}`
    },

   {-- sinprun Sniprun is a code runner plugin for neovim written in Lua and Rust. It aims to provide stupidly fast partial code testing for interpreted and compiled languages. Sniprun blurs the line between standard save/run workflow, jupyter-like notebook, and REPL/interpreters.
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
      require("sniprun").setup({
      -- your options
      })
    end,
  },}

