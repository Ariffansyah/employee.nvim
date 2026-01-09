return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          -- Auto close neo-tree when opening a file
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
  },
}
