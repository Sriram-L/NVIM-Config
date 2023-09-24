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
					theme = 'onedark',
					disabled_filetypes = {'lazy', 'NvimTree', 'alpha'}
				},
				sections = {
					lualine_x = {'filetype'},
				}
			}
	end,
	}
}

