return {
  'echasnovski/mini.statusline',
  enabled = true,
  version = false,
  config = function()
    local sl = require 'mini.statusline'
    local blocked = { ['NvimTree'] = true }

    sl.setup {
      -- Content of statusline as functions which return statusline string. See
      -- `:h statusline` and code of default contents (used instead of `nil`).
      content = {
        active = function()
          if blocked[vim.bo.filetype] then
            return ''
          else
            return MiniStatusline.section_mode {
              n = 'n',
            }
          end
        end,
        -- active = nil,
        inactive = function()
          return ''
        end,
      },
      -- Whether to use icons by default
      use_icons = nerd_font,
      -- Whether to set Vim's settings for statusline (make it always shown)
      set_vim_settings = true,
    }
    sl.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
