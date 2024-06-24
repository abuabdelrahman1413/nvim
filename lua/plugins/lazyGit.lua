return {
    "kdheepak/lazygit.nvim",
    config = function()
        vim.api.nvim_set_keymap("n", "<leader>gl", ":LazyGit<CR>", { noremap = true, silent = true })
    end,
}
