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
	"rebelot/kanagawa.nvim",
	config = function()
		vim.cmd.colorscheme("kanagawa")
	end,
}
