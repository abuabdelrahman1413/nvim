local M = {}

function M.set_filetype_options(ft)
    if ft == 'c' or ft == 'cpp' then
        vim.bo.tabstop = 8
        vim.bo.shiftwidth = 8
        vim.bo.autoindent = true
        vim.bo.smartindent = true
        vim.bo.cindent = true
        require("betty")
    else
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.expandtab = true  -- Convert tabs to spaces
        vim.bo.autoindent = true
        vim.bo.smartindent = false  -- Disable smart indent for other languages
        vim.bo.cindent = false  -- Disable C indent for other languages
    end
end

function M.setup()
    vim.cmd([[
        augroup FiletypeSettings
            autocmd!
            autocmd FileType * lua require('filetype_settings').set_filetype_options(vim.bo.filetype)
        augroup END
    ]])
end

return M
