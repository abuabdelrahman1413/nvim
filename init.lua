-- init.lua
--
-- ######## lazy ############
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end

vim.opt.rtp:prepend(lazypath)
require("options")
require("maps")
require("lazy").setup("plugins")
require 'colorizer'.setup()
require("cmp").config.formatting = {
    format = require("tailwindcss-colorizer-cmp").formatter
}
require('nvim-highlight-colors').setup({})

-- Load filetype-specific settings
require('filetype_settings').setup()
require('gitsigns').setup()
