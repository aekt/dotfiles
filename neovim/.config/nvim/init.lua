vim.g.fuzzy_hidden = 1

require("plugins")
require("lsp")
require("keymaps")

vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.lazyredraw = true
vim.opt.updatetime = 200

vim.opt.number = true
vim.cmd([[
  highlight! link SignColumn LineNr
]])

vim.cmd([[
  augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
  augroup END
]])
