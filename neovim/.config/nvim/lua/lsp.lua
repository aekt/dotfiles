local lspconfig = require("lspconfig")

lspconfig.omnisharp.setup({ cmd = { "omnisharp", "--languageserver" } })
lspconfig.pyright.setup({})
lspconfig.tsserver.setup({})
lspconfig.sumneko_lua.setup({})
lspconfig.clangd.setup({})
