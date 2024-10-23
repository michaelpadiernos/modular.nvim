local fg = '#FFFFFF'
local bg = '#000000'
local main_accent = '#EFE100'

return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    vim.api.nvim_set_hl(0, 'NeominimapBorder', { fg = bg })

    require('github-theme').setup {
      options = {
        transparent = true,
        inverse = {
          match_paren = true,
          visual = true,
          search = true,
        },
      },
      groups = {
        all = {
          Normal = { bg = bg },
		  WinSeparator = { fg = bg, bg = bg },
		  NeominimapBackground = { bg = bg },
          NeominimapBorder = { fg = bg, bg = bg },
		  CodewindowBackground = { bg = bg },
          StatusLine = { fg = fg, bg = bg },
		  MiniStatuslineModeNormal = { fg = bg, bg = main_accent },
		  MiniTablineFill = { bg = bg },
		  MiniStatuslineFilename = { bg = bg },
		  MiniStatuslineInactive = { fg = bg, bg = bg },
        },
      },
    }

    vim.cmd 'colorscheme github_dark_default'
  end,
}
