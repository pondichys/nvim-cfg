-- Format buffers
return {
  'stevearc/conform.nvim',
  opts = {
    formatter_by_ft = {
      lua = { "stylua" },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
