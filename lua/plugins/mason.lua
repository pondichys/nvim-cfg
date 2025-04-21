return {
    "williamboman/mason.nvim",
    -- Automatically run MasonUpdate when the plugin is installed/updated
    build = ":MasonUpdate",
    -- Add dependency on mason-tool-installer
    -- This plugin uses Mason to install automatically programs listed in ensure_installed
    dependencies = {
        {
            'WhoIsSethDaniel/mason-tool-installer.nvim',
            opts = {
                ensure_installed = {
                    'lua-language-server',
                    'stylua',
                },
                integrations = {
                    ['mason-lspconfig'] = false,
                    ['mason-null-ls'] = false,
                    ['mason-nvim-dap'] = false,
                },
            },
        }
    },
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    config = function()
        require("mason").setup({})
        vim.lsp.enable({ 'lua_ls' })
    end,
    -- disable lazy loading for nvim 0.11 new lsp configuration
    -- mason MUST be loaded before calling vimlsp.enable
    -- as it modifies the PATH to include location where it installs stuff
    lazy = false,
}
