return{
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    search = {
      mode = "exact" -- exact fuzzy and search
    },
    modes = {
      search = {
        -- when `true`, flash will be activated during regular search by default.
        enabled = true,
      },
      char = {
        -- use labels when using f t F T [; next and , prev]
        jump_labels = true,
      },
    },
  },
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter Incremental Selection" },
  },
}
