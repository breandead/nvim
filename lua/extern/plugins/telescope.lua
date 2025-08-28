local function setup_telescope()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Telescope buffers' })
end

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    config = setup_telescope,
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'BurntSushi/ripgrep',
        'nvim-tree/nvim-web-devicons', 
    }
}
