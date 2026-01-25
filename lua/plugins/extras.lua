return {
  -- Harpoon (see above)

  -- Silicon screenshots
  {
    "michaelrommel/nvim-silicon",
    enabled = false,
    cmd = "Silicon",
    keys = {
      { "<leader>sc", mode = "v", desc = "Silicon: Copy to clipboard" },
      { "<leader>sf", mode = "v", desc = "Silicon: Save to file" },
      { "<leader>ss", mode = "v", desc = "Silicon: Screenshot" },
    },
    config = function()
      require("nvim-silicon").setup({
        font = "JetBrainsMono Nerd Font",
        theme = "Dracula",
        pad_horiz = 100,
        pad_vert = 120,
        no_line_number = true,
      })
    end,
  },

  -- LSP Lines
  {
    "Maan2003/lsp_lines.nvim",
    event = "LspAttach",
    config = function()
      require("lsp_lines").setup()

      -- Configure diagnostics with more detail
      vim.diagnostic.config({
        virtual_text = false,
        virtual_lines = {
          only_current_line = true, -- Change this to true to avoid out of range errors
          highlight_whole_line = false, -- Change this to false
        },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })
    end,
    keys = {
      {
        "<leader>l",
        function()
          require("lsp_lines").toggle()
        end,
        desc = "Toggle LSP Lines",
      },
      {
        "<leader>de",
        function()
          vim.diagnostic.open_float(nil, {
            scope = "cursor",
            border = "rounded",
            source = "always",
          })
        end,
        desc = "Show diagnostic details",
      },
    },
  },

  -- Mini.move
  {
    "nvim-mini/mini.move",
    event = "VeryLazy",
    config = function()
      require("mini.move").setup({
        mappings = {
          left = "<M-h>",
          right = "<M-l>",
          down = "<M-j>",
          up = "<M-k>",
          line_left = "<M-h>",
          line_right = "<M-l>",
          line_down = "<M-j>",
          line_up = "<M-k>",
        },
      })
    end,
  },

  -- Highlight Undo
  {
    "tzachar/highlight-undo.nvim",
    event = "VeryLazy",
    opts = {
      duration = 300,
      ignored_filetypes = { "neo-tree", "TelescopePrompt", "mason", "lazy" },
    },
  },

  -- Aerial (Code Outline)
  {
    "stevearc/aerial.nvim",
    event = "LspAttach",
    opts = {
      layout = {
        default_direction = "right",
        placement = "edge",
      },
    },
    keys = {
      { "<leader>E", "<cmd>AerialToggle float<CR>", desc = "Toggle Aerial Explorer" },
    },
  },

  -- Noice (Better UI)
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        signature = { enabled = false },
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        -- Add this to show more detailed messages
        message = {
          enabled = true,
          view = "notify",
          opts = {},
        },
        progress = {
          enabled = true,
          view = "mini",
        },
      },
      presets = {
        long_message_to_split = true,
        lsp_doc_border = true, -- Add border to LSP docs
      },
      -- Show error messages with more detail
      routes = {
        {
          filter = { event = "msg_show", kind = "error" },
          opts = { skip = false },
        },
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  -- Discord Presence
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
  },

  -- Vim Hexokinase (Color Preview)
  {
    "rrethy/vim-hexokinase",
    build = "make hexokinase",
    event = "BufReadPre",
  },

  -- Tmux Navigator
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<c-h>", "<cmd>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd>TmuxNavigateRight<cr>" },
    },
  },
}
