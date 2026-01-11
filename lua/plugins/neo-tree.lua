return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "float",
      popup = {
        size = {
          height = "80%",
          width = "20%",
        },
        position = "50%",
      },
    },
    default_component_configs = {
      file_size = {
        enabled = true,
        required_width = 1,
        width = 12,
      },
      name = {
        trailing_slash = false,
        use_git_status_colors = true,
        highlight = "NeoTreeFileName",
      },
      git_status = {
        symbols = {
          added = "✚",
          modified = "",
          deleted = "✖",
          renamed = "󰁕",
          untracked = "",
          ignored = "",
          unstaged = "󰄱",
          staged = "",
          conflict = "",
          unmerged = "",
        },
      },
    },
    filesystem = {
      renderers = {
        file = {
          { "icon" },
          { "name",      use_git_status_colors = true },
          { "git_status" },
          { "file_size" },
        },
      },
    },
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
  },
}
