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
					disabled_filetypes = {'lazy', 'NvimTree', 'alpha'},
					section_separators = '',
					component_separators = '',
				},
				sections = {
					lualine_c = {
						{
							'filename',
							path = 1, -- setting relative path for displaying file name
						},
					},
					lualine_x = {'filetype'},
				}
			}
	end,
	}
}

