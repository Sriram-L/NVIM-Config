-- COLORSCHEME configs --
return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nightfox").setup({
				options = {
					transparent = false,
				}
			})
			vim.cmd[[colorscheme nordfox]]
			vim.cmd[[highlight ColorColumn guibg=#808080]]
		end,
	}
}

