return {
	"folke/tokyonight.nvim",
	enabled = true,
	lazy = false,
	priority = 1000,
	opts = {
		style = "moon",
		styles = {
			-- Value is any valid attr-list value for `:help nvim_set_hl`
			comments = { italic = true, dim = false }, --, fg = "#828bb8"
			keywords = { italic = true },
			functions = { bold = true },
			variables = {},
			sidebars = "dark", -- can be either dark normal or transparent
			floats = "dark",
		},
		lualine_bold = true,
		on_colors = function(colors) --can be used to change default colors of various elements
			colors.bg = "#212337"
			colors.fg = "#c0caf5"
			colors.error = "#f7768e"
			colors.hint = "#ffc777"
		end,
		on_highlights = function(highlights, colors) --can be used to change default colors of highlights groups
			local hl = highlights
			hl.BufferlineCloseButtonSelected =
				{ cterm = underline, underline = true, sp = "#82aaff", bg = "#212337", fg = "#f996a6" }
			-- Snacks Indenting
			hl.SnacksIndent = { fg = "#42486e" }
			hl.SnacksIndentChunk = { fg = "#fca7ea" }
			hl.SnacksIndentScope = { fg = "#65bcff" }
			-- Cursor and LineNr
			hl.LineNr = { fg = "#42486e" }
			hl.LineNrAbove = { fg = "#42486e" }
			hl.LineNrBelow = { fg = "#42486e" }
			hl.CursorLineNr = { fg = "#ff996c" }
			hl.Substitute = { undercurl = true, bg = "#ff757f", fg = "#1d2238" }
			hl.CurSearch = { bg = "#f958af", fg = "#1d2238" }
			hl.IncSearch = { bg = "#ff757f", fg = "#1d2238" } -- also controls the yankhighlight unless provided with a custom 'higroup' name
			-- Flash.nvim
			hl.FlashLabel = { bold = true, bg = "#f958af", fg = "#1d2238" }
			-- Blink.cmp
			hl.BlinkCmpDocSeparator = { fg = "#ffc777" }
			hl.BlinkCmpDocBorder = { fg = "#0eb2dc" }
			hl.BlinkCmpDoc = { fg = "#c0caf5", bg = "#1e2031" }
			hl.BlinkCmpSignatureHelp = { fg = "#c0caf5", bg = "#1e2031" }
			hl.BlinkCmpSignatureHelpBorder = { fg = "#9ecb6a", bg = "#1e2031" }
			hl.BlinkCmpMenu = { fg = "#c0caf5", bg = "#1e2031" }
			hl.BlinkCmpMenuBorder = { fg = "#82aaff", bg = "#1e2031" }
			hl.BlinkCmpScrollBarThumb = { bg = "#727996" }
		end,
	},
	config = function(_, opts)
		require("tokyonight").setup(opts)
		vim.cmd.colorscheme("tokyonight")
	end,
}
