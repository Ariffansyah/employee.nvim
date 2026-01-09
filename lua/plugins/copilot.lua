return {
  -- GitHub Copilot
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      -- Disable Copilot's default <Tab> mapping
      vim.g.copilot_no_tab_map = true

      -- Custom keybinding:  Ctrl+j to accept suggestion
      vim.keymap.set("i", "<C-j>", 'copilot#Accept("<CR>")', {
        expr = true,
        silent = true,
        replace_keycodes = false,
      })

      -- Don't show suggestions unless triggered
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_auto_trigger = false
    end,
  },

  -- Copilot Chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      "github/copilot.vim",
      "nvim-lua/plenary.nvim",
    },
    build = "make tiktoken",
    opts = {
      debug = false,
    },
    keys = {
      { "<leader>cc", "<cmd>CopilotChatToggle<CR>", desc = "Toggle Copilot Chat", mode = { "n", "v" } },
    },
  },
}
