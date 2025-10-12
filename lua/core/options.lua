local opt = vim.o

opt.wrap = false

-- Set highlight on search
opt.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Relative line numbers
opt.relativenumber = true

-- Enable mouse mode
opt.mouse = 'a'

-- Indenting setting
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- set timing
opt.updatetime = 750
opt.timeoutlen = 500

opt.scrolloff = 10

opt.completeopt = 'menuone,noselect'

opt.termguicolors = true

-- Set a colored line at 80 chars
opt.colorcolumn = "79"

vim.diagnostic.config({ virtual_text = {current_line = true} })

opt.splitbelow = true
opt.splitright = true

-- set default windows shell to powershell
if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
    opt.shell = 'powershell.exe'
else
    -- on linux will default to /bin/bash now
    opt.shell = '/bin/bash'
end
