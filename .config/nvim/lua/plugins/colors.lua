return {
	"catgoose/nvim-colorizer.lua",
	enabled = true,
	event = "BufReadPre",
	opts = {
		options = {
			parsers = {
				css = true, -- preset: enables names, hex, rgb, hsl, oklch, css_var
				css_fn = true, -- preset: enables rgb, hsl, oklch
				names = {
					enable = false,
				},
				hex = {
					rrggbbaa = true,
					hash_aarrggbb = true,
					aarrggbb = true,
				},
				css_var_rgb = { enable = true },
				css_var = {
					enable = true, -- resolve var(--name) references to their defined color
					parsers = { css = true }, -- parsers for resolving variable values
				},
				rgb = { enable = true },
				hsl = { enable = true },
				oklch = { enable = true },
				hwb = { enable = true },
				lab = { enable = true },
				lch = { enable = true },
				css_color = { enable = true },
			},
			display = {
				mode = "background", -- string or list: "background"|"foreground"|"underline"|"virtualtext"
				virtualtext = {
					-- char = "■", -- character used for virtualtext
					char = "◆", -- character used for virtualtext
					-- char = "󰣏", -- character used for virtualtext
					position = "before", -- "eol"|"before"|"after"
					hl_mode = "foreground", -- "background"|"foreground"
				},
			},
		},
	},
	config = function(_, opts)
		require("colorizer").setup(opts)
	end,
}
