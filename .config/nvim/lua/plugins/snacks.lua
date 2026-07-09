return {
	"folke/snacks.nvim",
	enabled = true,
	lazy = false,
	opts = {
		rename = {
			enabled = true,
		},
		picker = {
			enabled = true,
			prompt = "   ",
			show_delay = 100,
			focus = "list", -- input or list
			layout = {
				cycle = true,
				preset = "default", -- default vertical ivy dropdown sidebar
			},
		},
		input = {
			enabled = true,
			win = {
				border = "single", -- single rounded double
			},
		},
		lazygit = {
			enabled = true,
		},
		scroll = {
			enabled = true,
			animate_repeat = {
				delay = 150,
			},
		},
		statuscolumn = {
			enabled = true,
			folds = {
				open = true, -- show open fold icons
			},
		},
		dashboard = {
			enabled = true,
			-- sections = {
			-- 	{ section = "header", indent = 12 },
			-- 	{ section = "keys", gap = 1, padding = 2, indent = 11 },
			-- 	{ section = "startup", indent = 10 },
			-- 	{
			-- 		section = "terminal",
			-- 		-- cmd = "ascii-image-converter ~/Pictures/icons/pokemon.jpeg -C -c -d 45,25",
			-- 		-- cmd = "ascii-image-converter ~/Pictures/icons/4.png -Cc -d 53,19; sleep infinity",
			-- 		cmd = "ascii-image-converter ~/Pictures/icons/3.png -Cc -d 53,19; sleep infinity",
			-- 		-- cmd = "ascii-image-converter ~/Pictures/icons/2.png -Cc -d 52,19",
			-- 		height = 25,
			-- 		indent = 5,
			-- 		pane = 2,
			-- 	},
			-- },
			sections = {
				{ section = "header", indent = 12 },
				{ section = "keys", gap = 1, padding = 1, indent = 11 },
				{ section = "startup", indent = 10 },
				{
					section = "terminal",
					cmd = "pokemon-colorscripts --no-title -rn darkrai,conkeldurr,ho-oh,thundurus,swampert,charizard,zapdos,articuno,moltres,mewtwo,lugia,palkia,dialga,giratina,cresselia,tornadus,zygarde,solgaleo,type-null,lunala,zacian,zamazenta; sleep inf",
					random = 100,
					height = 28,
					indent = 8,
					pane = 2,
				},
			},
		},
		image = {
			enabled = false,
			border = true,
		},
		bigfile = {
			enabled = true,
			size = 2 * 1024 * 1024, -- 2MB
		},
		bufdelete = {
			enabled = true,
		},
		explorer = {
			enabled = true,
		},
		terminal = {
			enabled = true,
		},
		indent = {
			enabled = true,
			scope = {
				enabled = true, -- enable highlighting the current scope
				priority = 300,
				char = "│",
				-- char = "┃",
				underline = true, -- underline the start of the scope
			},
			chunk = {
				enabled = false,
				priority = 250,
			},
		},
		notifier = {
			enabled = true,
			style = "normal", -- fancy, minimal and compact
		},
		notify = {
			enabled = true,
		},

		keymap = { enabled = false },
		quickfile = { enabled = false },
		scope = { enabled = false },
		words = { enabled = false },

		-- Styles
		styles = {
			-- input = {
			--   b = {
			--     completion = true,
			--   },
			-- },
		},
	},
	keys = {
		-- Snacks Terminal
		{
			"<leader>tt",
			function()
				Snacks.terminal(nil, {
					win = {
						position = "bottom", -- float, position
						height = 0.4,
						-- width = 0.6,
						border = "single", --double rounded
					},
				})
			end,
			desc = "Open snacks Terminal",
		},

		-- Snacks quick rename file
		{
			"<leader>rf",
			function()
				Snacks.rename.rename_file()
			end,
			desc = "Quickly rename file",
		},

		-- Snacks version of LazyGit
		{
			"<leader>lg",
			function()
				Snacks.lazygit()
			end,
			desc = "Toggle lazygit interface",
		},

		-- Snacks Notifier
		{
			"<leader>nh",
			function()
				Snacks.notifier.hide()
			end,
			desc = "Hide notifications",
		},
		{
			"<leader>ns",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Show notification history",
		},

		-- Top Pickers & Explorer
		{
			"<leader>fs",
			function()
				Snacks.picker.smart()
			end,
			desc = "Smart Find Files",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers({
					layout = {
						preset = "ivy",
					},
				})
			end,
			desc = "Buffers",
		},
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "Open Snacks Explorer",
		},
		{
			"<leader>fc",
			function()
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Find Config File",
		},
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.git_files()
			end,
			desc = "Find Git Files",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.recent({
					layout = {
						preset = "vertical",
					},
				})
			end,
			desc = "Recent",
		},
		{
			"<leader>fk",
			function()
				Snacks.picker.keymaps({
					layout = {
						preset = "ivy",
					},
				})
			end,
			desc = "Keymaps",
		},

		-- git
		{
			"<leader>gb",
			function()
				Snacks.picker.git_branches()
			end,
			desc = "Git Branches",
		},
		{
			"<leader>gl",
			function()
				Snacks.picker.git_log()
			end,
			desc = "Git Log",
		},
		{
			"<leader>gL",
			function()
				Snacks.picker.git_log_line()
			end,
			desc = "Git Log Line",
		},
		{
			"<leader>gf",
			function()
				Snacks.picker.git_log_file()
			end,
			desc = "Git Log File",
		},
		{
			"<leader>gs",
			function()
				Snacks.picker.git_status()
			end,
			desc = "Git Status",
		},
		{
			"<leader>gS",
			function()
				Snacks.picker.git_stash()
			end,
			desc = "Git Stash",
		},
		{
			"<leader>gd",
			function()
				Snacks.picker.git_diff()
			end,
			desc = "Git Diff (Hunks)",
		},

		-- gh
		{
			"<leader>gi",
			function()
				Snacks.picker.gh_issue()
			end,
			desc = "GitHub Issues (open)",
		},
		{
			"<leader>gI",
			function()
				Snacks.picker.gh_issue({ state = "all" })
			end,
			desc = "GitHub Issues (all)",
		},
		{
			"<leader>gp",
			function()
				Snacks.picker.gh_pr()
			end,
			desc = "GitHub Pull Requests (open)",
		},
		{
			"<leader>gP",
			function()
				Snacks.picker.gh_pr({ state = "all" })
			end,
			desc = "GitHub Pull Requests (all)",
		},

		-- Grep/search
		{
			"<leader>sb",
			function()
				Snacks.picker.grep_buffers()
			end,
			desc = "Grep Open Buffers",
		},
		{
			"<leader>sg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep in cwd",
		},
		-- {
		-- 	"<leader>sw",
		-- 	function()
		-- 		Snacks.picker.grep_word()
		-- 	end,
		-- 	desc = "Visual selection or word in cwd",
		-- 	mode = { "n", "x" },
		-- },
		{
			"<leader>s/",
			function()
				Snacks.picker.search_history()
			end,
			desc = "Search History",
		},
		{
			"<leader>sa",
			function()
				Snacks.picker.autocmds()
			end,
			desc = "Autocmds",
		},
		{
			"<leader>sc",
			function()
				Snacks.picker.command_history()
			end,
			desc = "Command History",
		},
		{
			"<leader>sC",
			function()
				Snacks.picker.commands({
					layout = {
						preset = "vertical",
					},
				})
			end,
			desc = "Commands",
		},
		{
			"<leader>sd",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "Diagnostics in cwd",
		},
		{
			"<leader>sD",
			function()
				Snacks.picker.diagnostics_buffer()
			end,
			desc = "Buffer Diagnostics",
		},
		{
			"<leader>sh",
			function()
				Snacks.picker.help()
			end,
			desc = "Help Pages",
		},
		{
			"<leader>sH",
			function()
				Snacks.picker.highlights()
			end,
			desc = "Highlights",
		},
		{
			"<leader>si",
			function()
				Snacks.picker.icons()
			end,
			desc = "Icons",
		},
		{
			"<leader>sl",
			function()
				Snacks.picker.lines({})
			end,
			desc = "search current buffer by lines",
		},
		-- { "<leader>sm", function() Snacks.picker.marks() end, desc = "Marks" },
		{
			"<leader>sm",
			function()
				Snacks.picker.man()
			end,
			desc = "Man Pages",
		},
		{
			"<leader>sp",
			function()
				Snacks.picker.lazy()
			end,
			desc = "Search for Plugin Spec",
		},
		{
			"<leader>sq",
			function()
				Snacks.picker.qflist()
			end,
			desc = "Quickfix List",
		},
		{
			"<leader>su",
			function()
				Snacks.picker.undo()
			end,
			desc = "Undo History",
		},
		{
			"<leader>pC",
			function()
				Snacks.picker.colorschemes({
					layout = {
						preset = "dropdown",
					},
				})
			end,
			desc = "Colorschemes",
		},
		{
			"<leader>pc",
			function()
				Snacks.picker.cliphist({
					layout = {
						preset = "dropdown",
					},
				})
			end,
			desc = "Commands",
		},
		{
			"<leader>ll",
			function()
				Snacks.picker.loclist()
			end,
			desc = "location list",
		},
	},
}
