return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = true,
	event = { "BufNew", "BufEnter" },
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				style_preset = bufferline.style_preset.default, -- can pass multiple opt like minimal,no_bold and no_italic
				themable = true,
				numbers = "none", -- "ordinal", "buffer_id", "both" and "none"
				close_command = "bdelete! %d",
				right_mouse_command = nil,
				middle_mouse_command = "bdelete! %d",
				indicator = {
					icon = "▌",
					style = "underline", -- underline, none
				},
				max_name_length = 14,
				tab_size = 20,
				diagnostics = "nvim_lsp", -- false
				diagnostics_indicator = function(count, level) --diagnostics_dict, context
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
				separator_style = "slope", -- slope, slant, padded_slant, padded_slope
				hover = { enabled = true, delay = 180, reveal = { "close" } },
			},
			highlights = {
				fill = {
					bg = "#1c1c2c",
				},
				close_button_visible = {
					fg = "#f7768e",
				},
			},
		})
	end,
}
