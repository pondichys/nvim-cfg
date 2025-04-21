return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    keys = {
        {"-", "<cmd>Oil --float<cr>", "n", desc = "Open current directory in Oil file manager" },
    },
    opts = {
        view_options = {
            show_hidden = true,
        },
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
}
