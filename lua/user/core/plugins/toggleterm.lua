return {
	'akinsho/toggleterm.nvim', version = "*", 
	config = function()
		require('toggleterm').setup({
			open_mapping = [[<C-t>]],
			direction = "vertical",
			hide_numbers = true,
			size = 70,
			persist_size = true,
			start_in_insert = true,
			insert_mappings = true,
			close_on_exit = true,
			shell = vim.o.shell,
		})
	end
}
