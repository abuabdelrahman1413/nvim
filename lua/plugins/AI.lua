-- ~/.config/nvim/lua/plugins.lua or similar configuration file for lazy.nvim
return {
  {
    "Exafunction/codeium.vim",
    config = function()
      -- Codeium configuration can go here if needed
      vim.keymap.set("i", "<c-g>", function()
	return vim.fn["codeium#Accept"]()
      end, { expr = true })
      vim.keymap.set("i", "<c-;>", function()
	return vim.fn["codeium#Cycle"]()
      end, { expr = true })
      vim.keymap.set("i", "<c-x>", function()
	return vim.fn["codeium#Clear"]()
      end, { expr = true })
			-- disable in beiginning
			vim.g.codeium_enabled = 0
    end,
  },
  -- other plugins...
}
