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
