vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

nerd_font = vim.g.have_nerd_font
nerd_font = true

-- core
require 'core.options'
require 'core.keymaps'
require 'core.bootstrap'
require 'core.extend'

-- user
require 'user.options'
-- require 'user.keymaps'

-- plugins
require 'plugins.keymaps'
