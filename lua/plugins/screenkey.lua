return {
  "NStefan002/screenkey.nvim",
  lazy = false,
  version = "*",
  config = function()
    local width = 40 -- Define width here so we can use it in the math below
    local height = 3

    require("screenkey").setup({
      win_opts = {
        relative = "editor",
        anchor = "SW", -- "South-West" (Bottom-Left corner of the popup)
        width = width,
        height = height,
        border = "rounded",

        -- Vertical Position: Bottom (with a small gap for the status line)
        row = vim.o.lines - 2,

        -- Horizontal Position: Center
        col = (vim.o.columns - width) / 2,
      },
    })

    vim.cmd("Screenkey")
  end,
}
