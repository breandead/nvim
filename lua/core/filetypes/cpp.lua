vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp", "h", "hpp" },
    callback = function ()
        vim.schedule(function ()
            vim.keymap.set("n", "<leader>gh", ":LspClangdSwitchSourceHeader<CR>", {desc = "[G]oto [H]eader/source file"})
        end)
    end}
)
