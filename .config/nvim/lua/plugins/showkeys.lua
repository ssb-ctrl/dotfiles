return {
	"nvzone/showkeys",
	enabled = true,
	opts = {
		timeout = 1,
		maxkeys = 5,
		show_count = false,
		position = "bottom-right",
	},
	keys = {
		{ "<leader>tk", "<cmd>ShowkeysToggle<cr>", desc = "Toggle Showkeys" },
	},
}
