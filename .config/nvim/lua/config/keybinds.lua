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

-- Snacks marks delete
vim.keymap.set("n", "<leader>ma", ":delmarks a<CR>", { desc = "Delete mark a" })
vim.keymap.set("n", "<leader>mb", ":delmarks b<CR>", { desc = "Delete mark b" })
vim.keymap.set("n", "<leader>mc", ":delmarks c<CR>", { desc = "Delete mark c" })
vim.keymap.set("n", "<leader>md", ":delmarks d<CR>", { desc = "Delete mark d" })
vim.keymap.set("n", "<leader>me", ":delmarks e<CR>", { desc = "Delete mark e" })
vim.keymap.set("n", "<leader>mf", ":delmarks f<CR>", { desc = "Delete mark f" })
vim.keymap.set("n", "<leader>mg", ":delmarks g<CR>", { desc = "Delete mark g" })
vim.keymap.set("n", "<leader>mh", ":delmarks h<CR>", { desc = "Delete mark h" })
vim.keymap.set("n", "<leader>mi", ":delmarks i<CR>", { desc = "Delete mark i" })
vim.keymap.set("n", "<leader>mj", ":delmarks j<CR>", { desc = "Delete mark j" })
vim.keymap.set("n", "<leader>mk", ":delmarks k<CR>", { desc = "Delete mark k" })
vim.keymap.set("n", "<leader>ml", ":delmarks l<CR>", { desc = "Delete mark l" })
vim.keymap.set("n", "<leader>mm", ":delmarks m<CR>", { desc = "Delete mark m" })
vim.keymap.set("n", "<leader>mn", ":delmarks n<CR>", { desc = "Delete mark n" })
vim.keymap.set("n", "<leader>mo", ":delmarks o<CR>", { desc = "Delete mark o" })
vim.keymap.set("n", "<leader>mp", ":delmarks p<CR>", { desc = "Delete mark p" })
vim.keymap.set("n", "<leader>mq", ":delmarks q<CR>", { desc = "Delete mark q" })
vim.keymap.set("n", "<leader>mr", ":delmarks r<CR>", { desc = "Delete mark r" })
vim.keymap.set("n", "<leader>ms", ":delmarks s<CR>", { desc = "Delete mark s" })
vim.keymap.set("n", "<leader>mt", ":delmarks t<CR>", { desc = "Delete mark t" })
vim.keymap.set("n", "<leader>mu", ":delmarks u<CR>", { desc = "Delete mark u" })
vim.keymap.set("n", "<leader>mv", ":delmarks v<CR>", { desc = "Delete mark v" })
vim.keymap.set("n", "<leader>mw", ":delmarks w<CR>", { desc = "Delete mark w" })
vim.keymap.set("n", "<leader>mx", ":delmarks x<CR>", { desc = "Delete mark x" })
vim.keymap.set("n", "<leader>my", ":delmarks y<CR>", { desc = "Delete mark y" })
vim.keymap.set("n", "<leader>mz", ":delmarks z<CR>", { desc = "Delete mark z" })

vim.keymap.set("n", "<leader>mA", ":delmarks A<CR>", { desc = "Delete mark a" })
vim.keymap.set("n", "<leader>mB", ":delmarks B<CR>", { desc = "Delete mark b" })
vim.keymap.set("n", "<leader>mC", ":delmarks C<CR>", { desc = "Delete mark c" })
vim.keymap.set("n", "<leader>mD", ":delmarks D<CR>", { desc = "Delete mark d" })
vim.keymap.set("n", "<leader>mE", ":delmarks E<CR>", { desc = "Delete mark e" })
vim.keymap.set("n", "<leader>mF", ":delmarks F<CR>", { desc = "Delete mark f" })
vim.keymap.set("n", "<leader>mG", ":delmarks G<CR>", { desc = "Delete mark g" })
vim.keymap.set("n", "<leader>mH", ":delmarks H<CR>", { desc = "Delete mark h" })
vim.keymap.set("n", "<leader>mI", ":delmarks I<CR>", { desc = "Delete mark i" })
vim.keymap.set("n", "<leader>mJ", ":delmarks J<CR>", { desc = "Delete mark j" })
vim.keymap.set("n", "<leader>mK", ":delmarks K<CR>", { desc = "Delete mark k" })
vim.keymap.set("n", "<leader>mL", ":delmarks L<CR>", { desc = "Delete mark l" })
vim.keymap.set("n", "<leader>mM", ":delmarks M<CR>", { desc = "Delete mark m" })
vim.keymap.set("n", "<leader>mN", ":delmarks N<CR>", { desc = "Delete mark n" })
vim.keymap.set("n", "<leader>mO", ":delmarks O<CR>", { desc = "Delete mark o" })
vim.keymap.set("n", "<leader>mP", ":delmarks P<CR>", { desc = "Delete mark p" })
vim.keymap.set("n", "<leader>mQ", ":delmarks Q<CR>", { desc = "Delete mark q" })
vim.keymap.set("n", "<leader>mR", ":delmarks R<CR>", { desc = "Delete mark r" })
vim.keymap.set("n", "<leader>mS", ":delmarks S<CR>", { desc = "Delete mark s" })
vim.keymap.set("n", "<leader>mT", ":delmarks T<CR>", { desc = "Delete mark t" })
vim.keymap.set("n", "<leader>mU", ":delmarks U<CR>", { desc = "Delete mark u" })
vim.keymap.set("n", "<leader>mV", ":delmarks V<CR>", { desc = "Delete mark v" })
vim.keymap.set("n", "<leader>mW", ":delmarks W<CR>", { desc = "Delete mark w" })
vim.keymap.set("n", "<leader>mX", ":delmarks X<CR>", { desc = "Delete mark x" })
vim.keymap.set("n", "<leader>mY", ":delmarks Y<CR>", { desc = "Delete mark y" })
vim.keymap.set("n", "<leader>mZ", ":delmarks Z<CR>", { desc = "Delete mark z" })
