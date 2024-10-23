require('lazy').setup {

  -- Plugins
  require 'plugins',

  -- Plugins: configs
  { import = 'plugins.mini' },
  { import = 'plugins.contrib' },
  { import = 'plugins.vim' },
  { import = 'plugins.drupal' },

  -- Themes
  { enabled = true, 'projekt0n/github-nvim-theme' },
  { enabled = false, 'olimorris/onedarkpro.nvim' },

  -- Themes: configs
  { import = 'themes' },

  -- LSP
  { enabled = true, 'williamboman/mason.nvim' },
  { enabled = true, 'williamboman/mason-lspconfig.nvim' },

  -- LSP: extensions
  { import = 'lsp' },

  -- Completions
  { enabled = true, name = 'cmp', 'hrsh7th/nvim-cmp' },
  { enabled = true, name = 'cmp-buffer', 'hrsh7th/cmp-buffer' },
  { enabled = true, name = 'cmp-cmdline', 'hrsh7th/cmp-cmdline' },
  { enabled = true, name = 'cmp-git', 'petertriho/cmp-git' },
  { enabled = true, name = 'cmp-path', 'hrsh7th/cmp-path' },
  { enabled = true, name = 'cmp-symfony-router', 'fbuchlak/cmp-symfony-router' },

  -- Completions: configs
  { import = 'cmp' },
}
