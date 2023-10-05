return {
  { 
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp','hrsh7th/cmp-buffer', 'hrsh7th/cmp-path','hrsh7th/cmp-cmdline', 'L3MON4D3/LuaSnip' },
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)			-- Using luasnip as snippet engine
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"]	 = cmp.mapping.select_prev_item(),
				["<C-j>"]	 = cmp.mapping.select_next_item(),
				["<tab>"]	 = cmp.mapping.select_next_item(),
				["<C-e>"]	 = cmp.mapping.abort(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip"  },
				{ name = "buffer"	},
				{ name = "path"		},
			}),
		})
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
				},
				{
				{ name = "cmdline" },
			}),
		})
	end,
  },
}
