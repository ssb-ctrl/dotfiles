return {
	"Wansmer/treesj",
	enabled = true,
	lazy = true,
	keys = {
		{
			"<leader>tm",
			"<cmd>TSJToggle<cr>",
			desc = "toggle treesj",
		},
	},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		local trsj = require("treesj")
		trsj.setup({
			use_default_keymaps = false,
			max_join_length = 300,
			check_syntax_error = true, -- Node with syntax error will not be formatted
		})
	end,
}
