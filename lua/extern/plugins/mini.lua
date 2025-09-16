local function setup_mini_modules()
    require('mini.align').setup()
    require('mini.surround').setup()
    require('mini.splitjoin').setup()
    require('mini.indentscope').setup()
    require('mini.ai').setup()
end

return {
    'nvim-mini/mini.nvim',
    version = false,
    config = setup_mini_modules,
}
