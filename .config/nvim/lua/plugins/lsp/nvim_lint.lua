return {
	"mfussenegger/nvim-lint",
	enabled = true,
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			lua = { "luacheck" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			cpp = { "cpplint" },
			css = { "stylelint" },
			html = { "htmllint" },
			python = { "ruff" },
		}

		vim.diagnostic.config({
			virtual_text = true,
			virtual_lines = false,
			update_in_insert = true, -- if false diagnostic are updated after InsertLeave
		})

		vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave", "BufWritePost" }, {
			callback = function()
				lint.try_lint()
			end,
		})

		-- if want to manually rerun linter
		vim.keymap.set("n", "<leader>tl", function()
			lint.try_lint()
		end, { desc = "Run nvim-lint" })
	end,
}
