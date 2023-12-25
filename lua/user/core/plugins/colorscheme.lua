-- COLORSCHEME configs --
return {
	{
		"catppuccin/nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require('catppuccin').setup({
				transparent_background = true,
				no_italic = true,
				no_underline = true
			})
			vim.cmd([[colorscheme catppuccin]])
		end
	}
}

