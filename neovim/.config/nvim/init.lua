vim.g.fuzzy_hidden = 1

require("plugins")
require("lsp")
require("keymaps")

vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.lazyredraw = true
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.smartcase = true
vim.opt.updatetime = 200

vim.cmd([[
	highlight! link SignColumn LineNr
]])
