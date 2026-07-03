return {
	"stevearc/conform.nvim",
	enabled = true,
	event = "BufWritePre",
	opts = {
		--  you have to define your formatters to conform
		formatters_by_ft = {
			c = { "clang-format" },
			cpp = { "clang-format" },
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			sh = { "shfmt" },
			bash = { "shfmt" },
			zsh = { "shfmt" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = {
			timeout_ms = 250,
			lsp_format = "fallback",
		},
		formatters = {
			shfmt = {
				append_args = { "-i", "2" },
			},
		},
	},
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true })
			end,
			desc = "Format buffer using conform",
		},
		{
			"<leader>cF",
			function()
				vim.lsp.buf.format({ async = true })
			end,
			desc = "Format buffer by (LSP) if exist",
		},
	},
}
