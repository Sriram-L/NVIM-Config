return {
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			require('lualine').setup{
				options = {
					theme = 'palenight',
					disabled_filetypes = {'lazy', 'NvimTree'}
				},
				sections = {
					lualine_x = {'filetype'},
				}
			}
	end,
	}
}

