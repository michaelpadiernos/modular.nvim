return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()

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
          Normal = { bg = Usr_bg },
    		  WinSeparator = { fg = Usr_bg, bg = Usr_bg },
    		  NeominimapBackground = { bg = Usr_bg },
          NeominimapBorder = { fg = Usr_bg, bg = Usr_bg },
		      CodewindowBackground = { bg = Usr_bg },
          StatusLine = { fg = Usr_fg, bg = Usr_bg },
          StatusLineNC = { fg = Usr_bg, bg = Usr_bg },
          -- mini.nvim plugins
          --
          -- mini.tabline
          MiniTablineFill = { bg = Usr_bg},
          MiniTablineCurrent = { fg = Usr_bg, bg = Usr_accent },
          MiniTablineVisible = { fg = Usr__fg, bg = Usr_bg },
          --
          -- mini.statusline
          -- modes
    		  MiniStatuslineModeNormal = { fg = Usr_bg, bg = Usr_accent },
          -- components
          MiniStatuslineDevinfo = { fg = Usr_fg, bg = Usr__bg },
    		  MiniStatuslineFilename = { fg = Usr_accent, bg = Usr_bg },
          MiniStatuslineFileinfo = { fg = Usr_fg, bg = Usr__bg },
    		  MiniStatuslineInactive = { fg = Usr_bg, bg = Usr_bg },
        },
      },
    }

    vim.cmd 'colorscheme github_dark_default'
  end,
}
