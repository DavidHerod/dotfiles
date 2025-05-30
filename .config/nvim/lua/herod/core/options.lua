vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.scrolloff = 8

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- Ensure Neovim uses true color
vim.opt.termguicolors = true

-- Set custom highlights for Java
vim.api.nvim_set_hl(0, "javaClass", { fg = "#ff8700", bg = "NONE", bold = true })
vim.api.nvim_set_hl(0, "javaMethod", { fg = "#d3869b" })
vim.api.nvim_set_hl(0, "javaClass", { fg = "#00ff00", bg = "NONE", bold = true })
vim.api.nvim_set_hl(0, "javaMethod", { fg = "#00ff00" })

-- Enable folding with nvim_treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99 -- Keeps top-level folds open
vim.opt.foldopen:remove("all") -- Prevents auto-expanding all folds
