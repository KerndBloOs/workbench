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
return {
	-- Kanagawa colorscheme
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			---@diagnostic disable-next-line: missing-fields
			require("kanagawa").setup({
				theme = "dragon",
			})
			vim.cmd.colorscheme("kanagawa")
		end,
	},

	-- LazyVim configuration
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "kanagawa",
		},
	},
}
