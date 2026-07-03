return {
	"saghen/blink.cmp",
	enabled = true,
	version = "1.*",
	event = "InsertEnter",
	dependencies = { "rafamadriz/friendly-snippets" },
	config = function()
		require("blink.cmp").setup({
			fuzzy = {
				implementation = "prefer_rust",
			},
			keymap = {
				preset = "default",
				-- <C-space> to toggle documentation
				-- <C-e> hide menu
				-- <C-b> scroll up doc
				-- <C-f> scroll down doc
				-- TAB snippet forward
				-- SHIFT+TAB snippet backward
				-- <C-u> signature up
				-- <C-d> signature down
				-- <C-k> signature toggle in insert mode
			},
			completion = {
				list = {
					selection = { preselect = true, auto_insert = true },
				},
				menu = {
					border = "single",
					auto_show = true,
					draw = {
						columns = { { "kind_icon" }, { "label", gap = 1 } },
						components = {
							label = {
								text = function(ctx)
									return require("colorful-menu").blink_components_text(ctx)
								end,
								highlight = function(ctx)
									return require("colorful-menu").blink_components_highlight(ctx)
								end,
							},
						},
					},
				},
				documentation = {
					-- treesitter_highlighting = false, -- if you face performance issues
					auto_show = true,
					auto_show_delay_ms = 150,
					window = { border = "single" },
				},
				ghost_text = { enabled = false },
				accept = {
					auto_brackets = { enabled = true },
				},
			},
			signature = {
				enabled = true,
				window = {
					-- treesitter_highlighting = false, -- if you face performance issues
					show_documentation = true,
					border = "single",
				},
			},
			cmdline = {
				enabled = true,
				completion = {
					menu = { auto_show = true },
				},
			},
			sources = {
				default = { "lsp", "path", "buffer", "snippets" },
			},
			appearance = {
				use_nvim_cmp_as_default = false,
				nerd_font_variant = "normal", -- mono normal
			},
		})
	end,
}
