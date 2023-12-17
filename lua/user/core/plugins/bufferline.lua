return {
	{'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require('bufferline').setup({
			options = {
            style_preset = require('bufferline').style_preset.no_italic,
			}
		})
	end,
}
}
