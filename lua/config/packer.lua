-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

local ensure_packer = function()
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd [[packadd packer.nvim]]
	return true
	end
	return false
end

local packer_bootstrap = ensure_packer()


return require("packer").startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"
	use "tpope/vim-dadbod"
	use "tpope/vim-fugitive"

	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.3",
		-- or                            , branch = "0.1.x",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

	use { "catppuccin/nvim", as = "catppuccin" }

	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			---     --- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
			{"williamboman/mason.nvim"},
			{"williamboman/mason-lspconfig.nvim"},

			-- LSP Support
			{"neovim/nvim-lspconfig"},
			-- Autocompletion
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"L3MON4D3/LuaSnip"},
		}
	}

	if packer_bootstrap then
		require('packer').sync()
	end
end)
