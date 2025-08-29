local function setup_hardtime()
    require("hardtime").setup({
        disabled_keys = {
          ["<Up>"] = false,
          ["<Down>"] = false,
          ["<Left>"] = false,
          ["<Right>"] = false,
        },
        restricted_keys = {
          ["<Up>"] = { "n", "x" },
          ["<Down>"] = { "n", "x" },
          ["<Left>"] = { "n", "x" },
          ["<Right>"] = { "n", "x" },
            
        },
    })
end

return {
   "m4xshen/hardtime.nvim",
   lazy = false,
   dependencies = { "MunifTanjim/nui.nvim" },
   opts = {},
   config = setup_hardtime,
}
