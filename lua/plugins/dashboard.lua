return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        sections = {
          { section = "header", gap = 1, padding = 1, },
          { section = "keys", gap = 1, padding = 1 },
          { icon = "  ", title = "Recent Files", section = "recent_files", indent = 2, padding = 2, },
          { section = "startup", gap = 2, padding = 1, },
        },
        preset = {
            header = [[
            HAPPY NVIM-ing
            ]],
        },
      },
    },
  },
}

