return {
    {
    "alljokecake/naysayer-theme.nvim",
    name = "naysayer", 
	config = function()
        require('naysayer').setup({
            variant = 'main',
            dark_variant = 'main',
            bold_vert_split = false,
            dim_nc_background = false,
            disable_background = true,
            disable_float_background = true,
            disable_italics = true,
        })
    end
    },
    {
	"rose-pine/neovim", 
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "auto", -- auto, main, moon, or dawn
			dark_variant = "main", -- main, moon, or dawn
			dim_inactive_windows = false,
			extend_background_behind_borders = true,
			enable = {
				terminal = true,
				legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
				migrations = true, -- Handle deprecated options automatically
			},
			styles = {
				bold = true,
				italic = false, -- Disable italic fonts
				transparency = true,
			},
		})
    end
    }
}
