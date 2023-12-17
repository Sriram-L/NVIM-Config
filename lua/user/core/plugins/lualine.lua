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
					theme = 'catppuccin',
					disabled_filetypes = {'lazy', 'NvimTree', 'alpha', 'toggleterm'},
					section_separators = '',
					component_separators = '',
				},
				sections = {
					lualine_b = {
						{
							'diagnostics',
							symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
						}
					},
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

