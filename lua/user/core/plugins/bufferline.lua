return {
	{'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require('bufferline').setup({
			options = {
				indicator_icon = ' ',
				separator_style = { '', '' },
				tab_size = 0,
				buffer_close_icon = '',
				modified_icon = '',
				close_icon = '',
				style_preset = require('bufferline').style_preset.no_italic,
			},
			highlights = {
				indicator_selected = {
					guifg = {
						attribute = "bg",
						highlight = "Normal",
					}
				}
			}
		})
	end,
}
}
