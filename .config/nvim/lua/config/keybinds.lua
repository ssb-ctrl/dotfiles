-- Call lazy manager
vim.keymap.set("n", "<C-l>", "<cmd>Lazy<CR>", { desc = "LazyVim plugins manager" })

-- Call Mason manager
vim.keymap.set("n", "<C-m>", "<cmd>Mason<CR>", { desc = "Mason Langserver/linter/formatter/Dap manager" })

-- New buffer
vim.keymap.set("n", "<C-t>", ":enew<CR>", { desc = "Open new buffer" })

-- Quit nvim
vim.keymap.set("n", "<S-q>", "<cmd>q<CR>", { desc = "Quit" })

-- Saving buffers
vim.keymap.set("n", "we", "<cmd>w<CR>", { desc = "Save existing buffer" })
vim.keymap.set("n", "wq", "<cmd>wq<CR>", { desc = "Save and  quit buffer" })
vim.keymap.set("n", "wn", function()
	vim.ui.input({
		prompt = "Save as: ",
		default = "",
	}, function(input)
		if not input or input == "" then
			return
		end

		-- Create parent directories if they don't exist
		local dir = vim.fn.fnamemodify(input, ":h")
		if dir ~= "." then
			vim.fn.mkdir(dir, "p")
		end

		vim.cmd.saveas(vim.fn.fnameescape(input))
	end)
end, { desc = "Save new buffer" })

-- Remove highlights from screen
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>", { desc = "Hide highlights after search" })

-- commenting
vim.keymap.set("n", "gcb", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
vim.keymap.set("n", "gca", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- buffers
vim.keymap.set("n", "H", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "L", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "bb", "<cmd>e #<cr>", { desc = "Switch back and forth to the other Buffer" })
vim.keymap.set("n", "bd", function()
	require("snacks").bufdelete.delete()
end, { desc = "Delete current Buffer" })
vim.keymap.set("n", "bo", function()
	require("snacks").bufdelete.other()
end, { desc = "Delete Other Buffers" })
vim.keymap.set("n", "bi", function()
	require("snacks").bufdelete.invisible()
end, { desc = "Delete Invisible Buffers" })

-- move between different windows
vim.keymap.set("n", "wh", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "wj", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "wk", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "wl", "<C-w>l", { desc = "Move to right window" })

-- Resize windows using <ctrl> arrow keys
vim.keymap.set("n", "wrk", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "wrj", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "wrh", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "wrl", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- windows split and del
vim.keymap.set("n", "wb", "<C-W>s", { desc = "Split Window Below", remap = true })
vim.keymap.set("n", "wr", "<C-W>v", { desc = "Split Window Right", remap = true })
vim.keymap.set("n", "wd", "<C-W>c", { desc = "Delete Window", remap = true })

-- Move Lines
vim.keymap.set("n", "<C-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down in normal mode" })
vim.keymap.set("n", "<C-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up in normal mode" })
-- vim.keymap.set("i", "<leader>j", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down in insert mode" })
-- vim.keymap.set("i", "<leader>k", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up in insert mode" })
vim.keymap.set(
	"v",
	"<C-j>",
	":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv",
	{ desc = "Move Down in visual mode" }
)
vim.keymap.set(
	"v",
	"<C-k>",
	":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv",
	{ desc = "Move Up in visual mode" }
)

-- better indenting
vim.keymap.set("x", "<", "<gv")
vim.keymap.set("x", ">", ">gv")
