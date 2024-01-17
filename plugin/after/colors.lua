require("catppuccin").setup {
	color_overrides = {
		all = {
			base = "#000000",
			mantl = "#000000",
			crust = "#000000",
		}
	},
	custom_highlights = function()
		return {
			Comment = { bg = "#000000" }
		}
	end
}

vim.cmd.colorscheme "catppuccin-mocha"
