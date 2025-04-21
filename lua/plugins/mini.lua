return {
  -- cool statusline with nice defaults
  {
    'echasnovski/mini.statusline',
    opts = {},
    version = false,
  },
  -- provides icons
  {
    "echasnovski/mini.icons",
    opts = {}
  },
  -- highlight trailspaces
  -- also provides function to trim trailspaces
  {
    'echasnovski/mini.trailspace',
    version = false,
    opts = {},
    keys = {
      { "<leader>ts", function() MiniTrailspace.trim() end, "n", desc = "Trim trail spaces" },
    },
  },
  -- Show diffs in buffer
  {
    "echasnovski/mini.diff",
    event = "VeryLazy",
    keys = {
      {
        "<leader>go",
        function()
          require("mini.diff").toggle_overlay(0)
        end,
        desc = "Toggle mini.diff overlay",
      },
    },
    opts = {
      view = {
        style = "sign",
        signs = {
          add = "▎",
          change = "▎",
          delete = "",
        },
      },
    },
  },
  -- Add comment in code
  {
    "echasnovski/mini.comment",
    dependencies = {
      {
        "JoosepAlviste/nvim-ts-context-commentstring",
        opts = { enable_automcmd = false, },
      },
    },
    event = "VeryLazy",
    opts = {
      options = {
        custom_commentstring = function()
          return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
        end,
      },
    },
  },
  -- Auto pair
  {
    "echasnovski/mini.pairs",
    event = "VeryLazy",
    -- opts shamelessly stolen from LazyVim configuration
    opts = {
      modes = { insert = true, command = false, terminal = false },
      -- skip autopair when next character is one of these
      skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
      -- skip autopair when the cursor is inside these treesitter nodes
      skip_ts = { "string" },
      -- skip autopair when next character is closing pair
      -- and there are more closing pairs than opening pairs
      skip_unbalanced = true,
      -- better deal with markdown code blocks
      markdown = true,
    },
  },
  {
    "echasnovski/mini.hipatterns",
    version = false,
    config = function()
      require('mini.hipatterns').setup({
        highlighters = {
          -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
          fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
          hack = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
          todo = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
          note = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },

          -- Highlight hex color strings (`#rrggbb`) using that color
          hex_color = require('mini.hipatterns').gen_highlighter.hex_color(),
        },
      })
    end
  },
}
