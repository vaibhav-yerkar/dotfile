return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- Ensure this is loaded before other start plugins
		config = function()
			local transparent = true -- Set to true for transparency

			require("catppuccin").setup({
				flavour = "mocha", -- Choose between latte, frappe, macchiato, mocha
				transparent_background = true,
				term_colors = true,
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = {},
					functions = { "bold" },
					keywords = { "bold" },
					strings = {},
					variables = {},
					numbers = {},
					booleans = { "bold" },
					properties = {},
					types = {},
					operators = {},
				},
				integrations = {
					treesitter = true,
					lsp_trouble = true,
					cmp = true,
					lsp_saga = true,
					gitsigns = true,
					telescope = true,
					nvimtree = {
						enabled = true,
						show_root = true,
						transparent_panel = transparent,
					},
					indent_blankline = {
						enabled = true,
						colored_indent_levels = false,
					},
					dashboard = true,
					bufferline = true,
					mason = true,
					which_key = true,
				},
				highlight_overrides = {
					mocha = function(colors)
						return {
							Comment = { fg = colors.overlay1 },
							CursorLine = { bg = colors.surface0 },
							Visual = { bg = colors.surface2 },
							LineNr = { fg = colors.overlay2 },
							CursorLineNr = { fg = colors.lavender },
							Pmenu = { bg = transparent and "none" or colors.mantle },
							PmenuSel = { bg = colors.blue, fg = colors.base },
						}
					end,
				},
			})

			-- Load the colorscheme
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
