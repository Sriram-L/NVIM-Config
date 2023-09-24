return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		ensure_installed = {vim, lua, c, cpp, python, rust},
		sync_install = false,
		highlight = { enable = true },
	}
}
