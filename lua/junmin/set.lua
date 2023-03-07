local opt = vim.opt

-- line numbers
opt.nu = true
opt.relativenumber = true

-- tabs and indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- buffer settings
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.undodir"
opt.undofile = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.colorcolumn = "80"

-- backspace
opt.backspace = "indent,eol,start"

-- navigation
opt.scrolloff = 8

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.updatetime = 50

opt.iskeyword:append("-")
