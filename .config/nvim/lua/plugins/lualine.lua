return{
  'nvim-lualine/lualine.nvim',
  enabled = true,
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = "tokyonight-moon"
    }
  },
  config = function(_,opts)
    require('lualine').setup(opts)
  end
}
