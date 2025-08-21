local opt = vim.opt

-- Search
opt.grepprg = "rg --vimgrep" -- Use ripgrep if available
opt.grepformat = "%f:%l:%c:%m" -- filename, linenumber, column, content
opt.hlsearch = true -- Highlight search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Tabs / indentation
opt.autoindent = true -- Copy indent from current line
opt.expandtab = true -- Convert tabs to spaces
opt.shiftwidth = 4   -- Amount to indent with << and >>
opt.tabstop = 4      -- How many spaces are shown per Tab
opt.softtabstop = 4  -- How many spaces are applied when pressing Tab

-- UI
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.showmode = false
opt.signcolumn = "yes"
opt.winborder = "rounded"  -- Use rounded window borders

-- Behavior
opt.clipboard:append("unnamedplus")
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.mouse = "a" -- Enable mouse support
opt.scrolloff = 10 -- Keep 10 lines above/below cursor
opt.spelllang = { "en", "fr" } -- Set languages for spellchecking

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
