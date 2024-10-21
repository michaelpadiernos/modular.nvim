return {
    'rcarriga/nvim-notify',
    opts = {
        timeout = 3000,
        render = "compact",
        stages = "fade",
        top_down = false,
    },
    config = function()
        require('notify').setup({
                -- config
                background_color = '#000000',
        })
    end
}
