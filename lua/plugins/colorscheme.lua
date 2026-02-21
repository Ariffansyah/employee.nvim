return {
  {
    "Yazeed1s/oh-lucy.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme oh-lucy-evening]])
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "oh-lucy-evening" },
  },
}
