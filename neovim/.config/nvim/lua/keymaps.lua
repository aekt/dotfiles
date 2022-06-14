local function nnoremap(kb, fn)
	local bufopts = {
		noremap = true,
		silent = true,
	}
	vim.keymap.set("n", kb, fn, bufopts)
end

nnoremap("<C-x><C-j>", ":Explore<CR>")
nnoremap("<C-x>pf", ":FuzzyOpen<CR>")
nnoremap("<C-x>pg", ":FuzzyGrep<CR>")
nnoremap("gb", ":Git blame<CR>")
nnoremap("gd", vim.lsp.buf.definition)
nnoremap("gr", vim.lsp.buf.references)
