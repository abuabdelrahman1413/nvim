local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end
-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})
require("betty")
--##################### install lazy plgin manager ###############
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:append(lazypath)
--################################################################

-- ######################### install plugins ###################3#
require("vim-opts")
require("lazy").setup("plugins")
--
-- local opt = {
-- 	defaults = { lazy = true },
-- 	install = { colorscheme = { "gruvbox" } },
-- 	rtp = {
-- 		reset = true, -- reset the runtime path to $VIMRUNTIME and your config directory
-- 		---@type string[]
-- 		paths = {}, -- add any custom paths here that you want to includes in the rtp
-- 		---@type string[] list any plugins you want to disable here
-- 		disabled_plugins = {
-- 			 "gzip",
-- 			 "matchit",
-- 			 "matchparen",
-- 			"netrwPlugin",
-- 			"tarPlugin",
-- 			"tohtml",
-- 			"tutor",
-- 			"zipPlugin",
-- 		},
-- 	},
-- }
