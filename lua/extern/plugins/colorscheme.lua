local function setup_colorscheme()
    require("citruszest").setup({
        option = {
            transparent = false,
        },
    })
    vim.cmd("colorscheme citruszest")
end

return {
  "zootedb0t/citruszest.nvim",
  lazy = false,
  config = setup_colorscheme,
  priority = 1000,
}

