require('lazy').setup({

    -- Plugins
--     { enabled = false,  'tpope/vim-sleuth' },
    require 'plugins',

    -- Plugins: configs
    { import = 'plugins.mini' },
    { import = 'plugins.contrib' },
--     { import = 'plugins.vim' },

    -- Themes
    { enabled = true,  'projekt0n/github-nvim-theme' },
    { enabled = false, 'olimorris/onedarkpro.nvim' },

    -- Themes: configs
    { import = 'themes' },

    -- LSP
    { enabled = true,   'williamboman/mason.nvim' },
    { enabled = true,   'williamboman/mason-lspconfig.nvim' },

    -- LSP: extensions
    { import = 'lsp' },

    -- Completions
    { enabled = false, 'petertriho/cmp-git' },
    { enabled = false, 'fbuchlak/cmp-symfony-router'},

    -- Completions: configs
--     { import = 'completions' },
})
