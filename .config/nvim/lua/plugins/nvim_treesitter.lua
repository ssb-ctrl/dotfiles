return {
	"nvim-treesitter/nvim-treesitter",
	enabled = true,
	branch = "main", -- master branch is no longer maintained
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter")
		local ensure_installed = {
			"vim",
			"vimdoc",
			"bash",
			"zsh",
			"c",
			"cpp",
			"html",
			"css",
			"javascript",
			"typescript",
			"json",
			"lua",
			"luadoc",
			"luap",
			"python",
			"yaml",
			"toml",
			"ini",
		}
		treesitter.install(ensure_installed, { force = false, summary = false })
		-- Safe FileType autocmd for highlighting + indentation
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "*",
			callback = function(args)
				local buf = args.buf
				local ft = vim.bo[buf].filetype
				local lang = vim.treesitter.language.get_lang(ft)
				if not lang then
					return
				end
				-- start treesitter safely
				vim.defer_fn(function()
					pcall(vim.treesitter.start, buf, lang)
				end, 0)
				-- use indentation by nvim-treesitter for that local buffer
				if ft ~= "yaml" and ft ~= "markdown" and ft ~= "dosini" and ft ~= "toml" and ft ~= "text" then
					vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
