return {
  'echasnovski/mini.ai',
  version = false,
  enabled = true,
  config = function()
    require('mini.ai').setup {
      n_lines = 500,
    }
  end,
}
