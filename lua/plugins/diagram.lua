return {
  {
    "3rd/diagram.nvim",
    requires = {
      "3rd/image.nvim",
    },
    cmd = { "DiagramShow", "DiagramToggle" },
    ft = { "markdown", "norg" },
    opts = {
      -- Your diagram.nvim options here
    },
  },
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- or "ueberzug", "ueberzugpp"
      integrations = {
        markdown = {
          enabled = true,
          sizing_strategy = "auto",
        },
      },
      window_overlap_clear = {
        enabled = false,
      },
    },
  },
}
