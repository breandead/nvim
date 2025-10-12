local function setup_colorscheme()
    vim.cmd("colorscheme nightfox")
end

return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  config = setup_colorscheme,
  priority = 1000,
}

