require('lazy').setup({

    -- Themes
    { enabled = true,  'projekt0n/github-nvim-theme' },
    { enabled = false, 'olimorris/onedarkpro.nvim' },

    -- Themes: configs
    { import = 'themes' },

    -- Plugins
    { enabled = false,  'tpope/vim-sleuth' },

    -- Plugins: configs
    { import = 'plugins.mini' },
    { import = 'plugins.contrib' },
--     { import = 'plugins.vim' },


    -- Sources
    { enabled = false, 'petertriho/cmp-git' },
    { enabled = false, 'fbuchlak/cmp-symfony-router'},

    -- Sources: configs
--     { import = 'sources' },
},
{
    ui = {

        -- If you are using a Nerd Font: set icons to an empty table which will use the
        -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
        icons = vim.g.have_nerd_font and {} or {
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
        },
    },
})
