-- COLORSCHEME configs --
return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				transparent = true,
				style = "night",
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
				}
			})
			vim.cmd[[colorscheme tokyonight]]
			vim.cmd[[highlight ColorColumn guibg=#34495E]]
		end,
	},
}

