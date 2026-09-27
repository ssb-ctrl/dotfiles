return {
	"mawkler/modicator.nvim",
	enabled = true,
	dependencies = "folke/tokyonight.nvim",
	opts = {
		show_warnings = false, -- Warn if any required option above is missing. May emit false positives, if some other plugin modifies them, which in that case you can just
		highlights = {
			-- Default options for bold/italic
			defaults = {
				bold = false,
				italic = true,
			},
		},
		integration = {
			lualine = {
				highlight = "bg",
			},
		},
	},
}
