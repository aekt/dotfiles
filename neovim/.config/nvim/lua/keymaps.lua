local function nnoremap(kb, fn)
	local bufopts = {
		noremap = true,
		silent = true,
	}
	vim.keymap.set("n", kb, fn, bufopts)
end

nnoremap("<leader>d", ":Explore<CR>")
nnoremap("<leader>f", ":FuzzyOpen<CR>")
nnoremap("<leader>g", ":FuzzyGrep<CR>")
nnoremap("gb", ":Git blame<CR>")
nnoremap("gd", vim.lsp.buf.definition)
nnoremap("gr", vim.lsp.buf.references)
