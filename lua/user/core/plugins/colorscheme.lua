-- COLORSCHEME configs --
return {
	{
		'catppuccin/nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require('catppuccin').setup({
				background = {
					dark = "frappe"
				}
			})
			vim.cmd[[colorscheme catppuccin]]
			vim.cmd[[highlight ColorColumn guibg=#808080]]
		end,
	}
}

