return {
    'neovim/nvim-lspconfig',
    dependencies = {
        { 'j-hui/fidget.nvim', opts = {} },
    },
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc, mode)
          mode = mode or 'n'
          vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        end

        map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
        map('<leader>ra', vim.lsp.buf.code_action, '[R]efactor [A]ction', { 'n', 'x' })
        map('<leader>gR', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
        map('<leader>gi', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
        map('<leader>gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
        map('<leader>gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
        map('<leader>gt', require('telescope.builtin').lsp_type_definitions, '[G]oto [T]ype Definition')
      end,
    })
end}
