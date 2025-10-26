local function setup_mini_modules()
    require('mini.align').setup()
end

return {
    'nvim-mini/mini.nvim',
    version = false,
    config = setup_mini_modules,
}
