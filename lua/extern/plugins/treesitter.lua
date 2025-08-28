local function setup_treesitter()
    require("telescope").setup({
      defaults = {
        preview = {
          treesitter = false,
        },
      },
    })
end

return {
      "nvim-treesitter/nvim-treesitter",
      branch = 'main',
      config = setup_treesitter,
      lazy = false,
      build = ":TSUpdate"
}
