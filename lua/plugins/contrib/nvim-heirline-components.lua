return {
  'zeioth/heirline-components.nvim',
  opts = function()
    -- return different items depending of the value of `vim.g.fallback_icons_enabled`
    local function get_icons()
      if vim.g.fallback_icons_enabled then
        return require 'icons.fallback_icons'
      else
        return require 'icons.icons'
      end
    end

    -- opts
    return {
      icons = get_icons(),
    }
  end,
  config = function() end,
}
