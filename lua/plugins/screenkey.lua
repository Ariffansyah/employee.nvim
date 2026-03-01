return {
  "NStefan002/screenkey.nvim",
  lazy = false,
  version = "*",
  config = function()
    require("screenkey").setup({
      win_opts = {
        relative = "editor",
        anchor = "SE", -- Anchors the window's Bottom-Right corner
        width = 40, -- "Normal" width
        height = 3, -- "Normal" height

        -- Position Math:
        row = vim.o.lines - 3, -- Total lines minus 3 (moves it up from the bottom)
        col = vim.o.columns - 1, -- Total cols minus 1 (gives a tiny gap from right edge)

        border = "rounded",
      },
    })

    vim.cmd("Screenkey")
  end,
}
