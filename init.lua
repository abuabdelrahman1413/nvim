-- ######## c betty linter ##########
local g = {
	ale_linters = {
		c = { "betty-style", "betty-doc", "gcc" },
	},
}

-- ######### key map for zen mode ########
vim.keymap.set("i", "<leader>rz", "<cmd>ZenMode<CR>", { desc = "zenmode" })

-- ######## lazy ############
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
require("options")
require("maps")
require("lazy").setup("plugins")
