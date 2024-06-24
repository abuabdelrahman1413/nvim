-- ~/.config/nvim/lua/map.lua

-- Function to map keys
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map <C-a> to select all text in normal mode
map("n", "<C-a>", "ggVG")

-- split screen vertically
map("n", "<C-s>v", ":vsp<CR>")

-- split screen horizontally
map("n", "<C-s>h", ":sp<CR>")

-- quit neovim
map("n", "<C-q>", ":q<CR>")

-- Function to open the Neovim configuration folder in a left split and resize it to less than a quarter of the screen
function OpenNvimConfig()
  vim.cmd('Neotree ~/.config/nvim/')
  vim.cmd('vertical resize 25') -- Adjust this number to set the width of the split window
end

-- Key mapping to open the Neovim configuration folder in a left split with resizing
vim.api.nvim_set_keymap('n', '<leader>nv', ':lua OpenNvimConfig()<CR>', { noremap = true, silent = true })
