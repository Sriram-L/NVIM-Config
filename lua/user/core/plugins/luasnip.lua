return
	{
		"L3MON4D3/LuaSnip",
	-- follow latest release.
		lazy = false,
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		dependencies = { "rafamadriz/friendly-snippets" },
		build = "make install_jsregexp",
		config = function()
			require('luasnip').setup()
			require("luasnip.loaders.from_vscode").load({ paths = { "~/.config/nvim/snippets" } })
		end
	}
