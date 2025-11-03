--return {
--    "tokyonight.nvim",
--    opts = {
--      transparent = true,
--      styles = {
--      	sidebars = "transparent",
--	floats = "transparent",
--    },
--  },
--}
--return {
--	-- Kanagawa colorscheme
--	{
--		"rebelot/kanagawa.nvim",
--		lazy = false,
--		priority = 1000,
--		config = function()
--			---@diagnostic disable-next-line: missing-fields
--			require("kanagawa").setup({
--				transparent = false, -- keep normal background, only target line numbers
--				theme = "dragon",
--				colors = {
--					theme = {
--						all = {
--							ui = {
--								bg_gutter = "none",
--							},
--						},
--					},
--				},
--				overrides = function(colors)
--					return {
--						LineNr = { bg = "NONE" },
--						LineNrAbove = { bg = "NONE" },
--						LineNrBelow = { bg = "NONE" },
--						CursorLineNr = { bg = "NONE" },
--					}
--				end,
--			})
--			vim.cmd.colorscheme("kanagawa")
--		end,
--	},
--
--	-- LazyVim configuration
--	{
--		"LazyVim/LazyVim",
--		opts = {
--			colorscheme = "kanagawa",
--		},
--	},
--}
return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				theme = "dragon",
				-- other options as above
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
			})
			vim.cmd("colorscheme kanagawa-dragon")
		end,
	},
	-- other plugins
}
