-- plugins.lua (if using LazyVim or similar setup)
return {
  -- Other plugins
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require("toggleterm").setup{
        size = 20,
        open_mapping = [[<c-\>]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
        persist_size = true,
        direction = 'horizontal', -- or 'vertical' or 'float'
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          border = 'curved',
          winblend = 3,
        }
      }

      -- Define the toggle function for live-server
      local Terminal = require('toggleterm.terminal').Terminal
      local live_server = Terminal:new({ cmd = "live-server", hidden = true })

      function _LIVE_SERVER_TOGGLE()
        live_server:toggle()
      end

      -- Key mapping to toggle live-server
      vim.api.nvim_set_keymap('n', '<leader>tl', '<cmd>lua _LIVE_SERVER_TOGGLE()<CR>', { noremap = true, silent = true })
    end
  },
}
