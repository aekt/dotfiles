local lspconfig = require("lspconfig")

local pid = vim.fn.getpid()

lspconfig.omnisharp.setup({ cmd = { "omnisharp", "--languageserver" } })
lspconfig.pyright.setup({})
lspconfig.tsserver.setup({})
lspconfig.sumneko_lua.setup({})
