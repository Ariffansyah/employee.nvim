return {
  "NStefan002/screenkey.nvim",
  lazy = false, -- IMPORTANT: Disables lazy loading so it can auto-start
  version = "*",
  config = function()
    require("screenkey").setup({
      win_opts = {
        -- 1. Normal Size Again
        width = 40, -- Back to a standard readable width
        height = 3, -- Shows 3 lines of history (standard)

        -- 2. Position: Center Right
        relative = "editor",
        anchor = "NE",
        row = math.floor(vim.o.lines / 2) - 1, -- Center vertical
        col = vim.o.columns, -- Stick to right edge
        border = "rounded",
      },
    })

    -- 3. Trigger it to start automatically
    vim.cmd("Screenkey")
  end,
}
