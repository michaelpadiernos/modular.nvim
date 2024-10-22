-- local hl = require 'heirline'
-- local conditions = require 'heirline.conditions'
-- local utils = require 'heirline.utils'

return {
  'rebelot/heirline.nvim',
  event = 'User BaseDefered',
  dependencies = { 'Zeioth/heirline-components.nvim' },
  opts = function()
    local lib = require 'heirline-components.all'
    return {
      statuscolumn = { -- UI left column
        init = function(self)
          self.bufnr = vim.api.nvim_get_current_buf()
        end,
        lib.component.foldcolumn(),
        lib.component.numbercolumn(),
        lib.component.signcolumn(),
      } or nil,
      statusline = { -- UI statusbar
        {
          condition = function(args)
            local is_disabled = not require('heirline-components.buffer').is_valid(args.buf)
              or lib.condition.buffer_matches({
                buftype = { 'terminal', 'prompt', 'nofile', 'help', 'quickfix' },
                filetype = { 'nvimtree', 'neo%-tree', 'dashboard', 'Outline', 'aerial' },
              }, args.buf)
            return is_disabled
          end,
          provider = ' ',
        },
        hl = {
          fg = 'fg',
          bg = 'bg',
        },
        lib.component.mode {
          mode_text = { padding = { left = 1, right = 1 } },
        },
        lib.component.git_branch(),
        lib.component.git_diff(),
        lib.component.fill(),
        lib.component.cmd_info(),
        lib.component.fill(),
        lib.component.file_info(),
        lib.component.lsp(),
        lib.component.compiler_state(),
        lib.component.virtual_env(),
        lib.component.nav(),
        lib.component.diagnostics(),
      },
    }
  end,
  config = function(_, opts)
    local hlc = require 'heirline-components.all'
    -- Setup
    hlc.init.subscribe_to_events()
    hl.load_colors(hlc.hl.get_colors())
    hl.setup(opts)
  end,
}
