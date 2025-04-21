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
    event = "VeryLazy",
    opts = {
      options = {
        custom_commentstring = function()
          return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
        end,
      },
    },
  },

}
