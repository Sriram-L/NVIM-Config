-- Icons to display the kind of the completion
local kind_icons = {
  Text = "󰉿",
	Method = "󰆧",
	Function = "󰊕",
	Constructor = "",
  Field = " ",
	Variable = "󰀫",
	Class = "󰠱",
	Interface = "",
	Module = "",
	Property = "󰜢",
	Unit = "󰑭",
	Value = "󰎠",
	Enum = "",
	Keyword = "󰌋",
  Snippet = "",
	Color = "󰏘",
	File = "󰈙",
  Reference = "",
	Folder = "󰉋",
	EnumMember = "",
	Constant = "󰏿",
  Struct = "",
	Event = "",
	Operator = "󰆕",
  TypeParameter = " ",
	Misc = " ",
}

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
			formatting = {
				fields = { "kind", "abbr", "menu" },
				format = function(entry, vim_item)
				  -- Kind icons
				  vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
				  vim_item.menu = ({
					nvim_lsp = "[LSP]",
					luasnip = "[Snippet]",
					buffer = "[Buffer]",
					path = "[Path]",
				  })[entry.source.name]
				  return vim_item
				end,
		  },
			window = {
				documentation = {
				border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
				},
		  },
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
