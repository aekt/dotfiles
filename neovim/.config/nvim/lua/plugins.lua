return require("packer").startup(function(use)
	use("airblade/vim-gitgutter")
	use("cloudhead/neovim-fuzzy")
	use("hrsh7th/nvim-cmp")
	use("neovim/nvim-lspconfig")
	use("tpope/vim-fugitive")
	use("wbthomason/packer.nvim")
	use("williamboman/nvim-lsp-installer")
end)
