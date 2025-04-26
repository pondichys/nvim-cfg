local opt = vim.opt

-- Tabs
opt.expandtab = true -- Convert tabs to spaces
opt.shiftwidth = 4   -- Amount to indent with << and >>
opt.tabstop = 4      -- How many spaces are shown per Tab
opt.softtabstop = 4  -- How many spaces are applied when pressing Tab

-- Display relative line numbers
opt.number = true
opt.relativenumber = true

-- Display cursor line
opt.cursorline = true

-- Enable mouse support
opt.mouse = "a"

-- Do not show mode as it is already in the statusline
opt.showmode = false

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Define sane default for splits
opt.splitright = true
opt.splitbelow = true

--
-- Diagnostic options
--
vim.diagnostic.config({
  underline = true,
  virtual_text = { spacing = 4, prefix = "●", },
  virtual_lines = false,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    },
  },
  severity_sort = true,
  float = {
    source = true,
    header = "Diagnostics:",
    prefix = " ",
    border = "single",
  },
})
