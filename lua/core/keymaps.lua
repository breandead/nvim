local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<c-o>", "<c-o>zz", opts)
map("n", "<c-d>", "<c-d>zz", opts)
map("n", "<c-u>", "<c-u>zz", opts)

map("n", "J", "mzJ`z", opts)
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

map("n", "Y", "y$", opts)
map("n", "Q", "@q", opts)

map({"n", "v"}, "<leader>y", [["+y]], opts)
map("n", "<leader>Y", [["+y$]], opts)
map({"n", 'v'}, "<leader>p", [["+p]], opts)
map({"n", 'v'}, "<leader>Y", [["+P]], opts)

-- Better window sizing
map("n", "<C-Left>",  ":vertical resize +2<CR>", opts)
map("n", "<C-Down>",  ":resize   +2<CR>", opts)
map("n", "<C-Up>",    ":resize   -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- saving binds
map('n', "<leader>w", ':w<CR>')
map('n', "<leader>q", ':q<CR>')

-- keybinds to jump to error
vim.keymap.set('n', '<leader>gn', function()
    local next = vim.diagnostic.get_next({
      wrap = false,
      count = -1,
      severity = {
        vim.diagnostic.severity.WARN,
        vim.diagnostic.severity.ERROR,
      }
    })
    if next then
      vim.diagnostic.jump({ diagnostic = next })
    else
      vim.diagnostic.jump({
        count = -1,
        severity = {
          vim.diagnostic.severity.WARN,
          vim.diagnostic.severity.ERROR,
        },
      })
    end
end, {desc = "[G]oto [N]ext diagnostic"})

vim.keymap.set('n', '<leader>gp', function()
    local next = vim.diagnostic.get_next({
      wrap = false,
      count = 1,
      severity = {
        vim.diagnostic.severity.WARN,
        vim.diagnostic.severity.ERROR,
      }
    })
    if next then
      vim.diagnostic.jump({ diagnostic = next })
    else
      vim.diagnostic.jump({
        count = 1,
        severity = {
          vim.diagnostic.severity.WARN,
          vim.diagnostic.severity.ERROR,
        },
      })
    end
end, {desc = "[G]oto [P]revious diagnostic"})
