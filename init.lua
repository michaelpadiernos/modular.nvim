vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

Nerd_font = vim.g.have_nerd_font
Nerd_font = true

-- user
require 'user.colors'
require 'user.options'
require 'user.keymaps'

-- core
require 'core.options'
require 'core.keymaps'
require 'core.bootstrap'
require 'core.extend'

-- plugins
require 'plugins.keymaps'
