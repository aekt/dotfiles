local lspconfig = require("lspconfig")

lspconfig.bashls.setup({})
lspconfig.clangd.setup({})
lspconfig.omnisharp.setup({ cmd = { "omnisharp", "--languageserver" } })
lspconfig.pyright.setup({})
lspconfig.sumneko_lua.setup({})
lspconfig.tsserver.setup({})
