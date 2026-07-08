-- leader and local leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- global options for Snacks.animate
vim.g.snacks_animate = true

-- LinNr and RelativeLineNr
vim.opt.number = true
vim.opt.relativenumber = true

-- Terminal true colors support
vim.opt.termguicolors = true

-- Enable mouse mode
vim.opt.mouse = "a"
-- Smoothscrolling neovim native feature
vim.opt.smoothscroll = false
-- Lines above and below cursor line
vim.opt.scrolloff = 8
-- Show cursor line
vim.opt.cursorline = true

-- Controls how long Neovim waits for the next key in a mapping
vim.opt.timeoutlen = 600
vim.opt.ttimeoutlen = 2
-- Notifying time for updating diagnostics and writing files
vim.opt.updatetime = 100

-- Auto Indentation
vim.opt.smartindent = false -- using nvim-treesitter built in indentation module
vim.opt.cindent = false
vim.opt.autoindent = true

-- LSP diagnostics on left side column
-- vim.opt.signcolumn = "auto"  -- using Snacks prettier statuscolumn

-- Incremental substitute preview using %s
vim.opt.inccommand = "nosplit" -- split,nosplit and ""

-- Case sensitive searching
vim.opt.ignorecase = true -- matches all
vim.opt.smartcase = true -- matches all but for Uppercase matches only Uppercase words

-- Folding of lines, use zf to manually fold , zc to close and zo to open folds
vim.opt.foldenable = true -- global folding options, set to false to disable it globally
vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr" -- indent expr manual
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- for expr method

-- Usefull for markdown files
vim.opt.conceallevel = 0 -- 0,1,2 or 3

-- Ask for save changes always
vim.opt.confirm = true

-- Native Neovim autocomplete feature
vim.opt.autocomplete = false -- using blink.cmp

-- Share system clipboard with Neovim
vim.opt.clipboard = "unnamedplus" -- "",unnamedplus

-- Autosave
vim.opt.autowrite = false

-- Menu and cmd mode for native nvim autocompletion
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.wildmode = "longest:full,full"

-- default win beahviour
vim.opt.winborder = "single"
-- vim.opt.winborder = "none"

-- line breaks and wrap
vim.opt.linebreak = true -- Wrap lines at clean word boundaries instead of mid-character
vim.opt.showbreak = " ⤷ "
vim.opt.wrap = false -- true disrupts cellular animation

-- Tab behaviour
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
