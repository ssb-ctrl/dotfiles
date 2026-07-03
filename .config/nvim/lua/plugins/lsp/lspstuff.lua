return {
	"mason-org/mason-lspconfig.nvim",
	enabled = true,
	opts = {
		-- list of servers for mason to install
		ensure_installed = {
			"lua_ls",
			"clangd",
			"pyright",
			"html",
			"cssls",
			"ts_ls",
			"bashls",
			"jsonls",
			"yamlls",
		},
		automatic_enable = true,
	},
	dependencies = {
		-- mason and nvim-lspconfig should load before mason-lspconfig
		{
			"mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			},
		},
		"neovim/nvim-lspconfig",
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)

		-- Global diagnostics
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = " ",
					[vim.diagnostic.severity.WARN] = " ",
					[vim.diagnostic.severity.INFO] = " ",
					[vim.diagnostic.severity.HINT] = " ",
				},
			},
		})

		-- declaring additional capabilities of blink.cmp to lang servers
		local Capabilities = require("blink.cmp").get_lsp_capabilities()

		-- Add lang servers config if you want to merge some custom settings with nvim-lspconfig default settings
		vim.lsp.config("*", {
			capabilities = Capabilities,
		})
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						checkThirdParty = false,
						library = vim.list_extend(vim.api.nvim_get_runtime_file("", true), { "/usr/share/hypr/stubs" }),
					},
				},
			},
		})

		-- Enable language servers manually installed via mason
		-- vim.lsp.enable({
		--
		-- })

		-- LSP keymaps
		-- Documentation
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {
			desc = "Hover Documentation",
		})
		-- Signature help
		vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, {
			desc = "Signature Help",
		})
		-- Code actions
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {
			desc = "Code Action",
		})
		-- Rename
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
			desc = "Rename Symbol",
		})
		-- Diagnostics
		vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, {
			desc = "Line Diagnostics",
		})
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.jump({ count = -1, float = false })
		end, {
			desc = "Previous Diagnostic",
		})
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.jump({ count = 1, float = false })
		end, {
			desc = "Next Diagnostic",
		})
		-- Snacks pickers
		vim.keymap.set("n", "<leader>ss", function()
			Snacks.picker.lsp_symbols()
		end, {
			desc = "Document Symbols",
		})
		vim.keymap.set("n", "<leader>sS", function()
			Snacks.picker.lsp_workspace_symbols()
		end, {
			desc = "Workspace Symbols",
		})
		vim.keymap.set("n", "gd", function()
			Snacks.picker.lsp_definitions()
		end, { desc = "Goto Definition" })
		vim.keymap.set("n", "gr", function()
			Snacks.picker.lsp_references()
		end, { desc = "Goto References" })
		vim.keymap.set("n", "gi", function()
			Snacks.picker.lsp_implementations()
		end, { desc = "Goto Implementation" })
		vim.keymap.set("n", "gt", function()
			Snacks.picker.lsp_type_definitions()
		end, { desc = "Goto Type Definition" })
		vim.keymap.set("n", "gD", function()
			Snacks.picker.lsp_declarations()
		end, { desc = "Goto Declaration" })
		vim.keymap.set("n", "<leader>lc", function()
			Snacks.picker.lsp_config()
		end, { desc = "Goto Definition" })
	end,
}
