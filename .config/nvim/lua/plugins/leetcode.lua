return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
	-- cmd = "Leet",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		lang = "cpp",
		picker = {
			provider = "snacks-picker",
		},
		image_support = true,
	},
}
