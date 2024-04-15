return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		local latte = require("catppuccin.palettes").get_palette("latte")

		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			highlight_overrides = {
				mocha = function()
					return {
						LineNr = { fg = latte.overlay1 },
					}
				end,
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
