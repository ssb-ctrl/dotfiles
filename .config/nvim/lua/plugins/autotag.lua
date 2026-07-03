-- NOTE: js,ts,jsx,tsx Auto Close Tags
return{
  "windwp/nvim-ts-autotag",
  enabled = true,
  ft = { "html", "xml", "javascript", "typescript", "javascriptreact", "typescriptreact", "svelte" },
  config = function()
    local autotag = require("nvim-ts-autotag")
    autotag.setup({
      opts = {
        enable_close = true,           -- Auto-close tags
        enable_rename = true,          -- Auto-rename pairs
        enable_close_on_slash = true, -- Disable auto-close on trailing `</`
      },
      -- per_filetype = {
      --   ["html"] = {
      --     enable_close = true,
      --   },
      --   ["typescriptreact"] = {
      --     enable_close = true,
      --   },
      -- },
    })
  end
}
