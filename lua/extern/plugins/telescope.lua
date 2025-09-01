local function setup_telescope()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>sf', builtin.find_files, { noremap=true, silent=true, desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>sg', builtin.live_grep, { noremap=true, silent=true, desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>sb', builtin.buffers, { noremap=true, silent=true, desc = 'Telescope buffers' })
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
