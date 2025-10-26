return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
      filter = function(mapping)
        return mapping.desc and mapping.desc ~= "" or mapping.group
      end,
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
    },
  },
  config = function ()
      local wk = require("which-key")
      wk.add({
          {"<leader>s", group = "search"},
          {"<leader>g", group = "goto" },
          {"<leader>r", group = "refactor"},

          {"<leader>w", hidden = true},
          {"<leader>q", hidden = true},
          {"<leader>p", hidden = true},
          {"<leader>y", hidden = true},
          {"<leader>P", hidden = true},
          {"<leader>Y", hidden = true},
          {"<leader>?", hidden = true},

          {"<leader>w", proxy = "<C-w>", group = "window"},
      })
  end
}
