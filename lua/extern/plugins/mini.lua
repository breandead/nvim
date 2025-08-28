local function setup_mini_modules()
    require('mini.deps').setup()
    require('mini.align').setup()
    require('mini.surround').setup()
end

return { 'nvim-mini/mini.nvim', version = false, config = setup_mini_modules, }
