return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    keys = {
      {
        "<leader>mp",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview (Browser)",
      },
      {
        "<leader>ms",
        "<cmd>MarkdownPreview<cr>",
        desc = "Markdown Preview Start",
      },
      {
        "<leader>mx",
        "<cmd>MarkdownPreviewStop<cr>",
        desc = "Markdown Preview Stop",
      },
    },
    config = function()
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_auto_close = 1
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_command_for_global = 0
      vim.g.mkdp_open_to_the_world = 0
      vim.g.mkdp_open_ip = ""
      vim.g.mkdp_browser = ""
      vim.g.mkdp_echo_preview_url = 0
      vim.g.mkdp_browserfunc = ""
      vim.g.mkdp_preview_options = {
        mkit = {},
        katex = {},
        uml = {},
        maid = {},
        disable_sync_scroll = 0,
        sync_scroll_type = "middle",
        hide_yaml_meta = 1,
        sequence_diagrams = {},
        flowchart_diagrams = {},
        content_editable = false,
        disable_filename = 0,
        toc = {},
      }
      vim.g.mkdp_markdown_css = ""
      vim.g.mkdp_highlight_css = ""
      vim.g.mkdp_port = ""
      vim.g.mkdp_page_title = "「${name}」"
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_theme = "dark"
    end,
  },

  -- Glow for terminal markdown preview in floating window
  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    keys = {
      {
        "<leader>mg",
        "<cmd>Glow<cr>",
        desc = "Markdown Glow (Floating)",
      },
    },
    config = function()
      require("glow").setup({
        glow_path = vim.fn.exepath("glow"), -- will be filled automatically if glow is in $PATH
        install_path = vim.fn.stdpath("data") .. "/glow", -- default path for installing glow binary
        border = "rounded",
        style = "dark",
        pager = false,
        width = 120,
        height = 100,
        width_ratio = 0.8,
        height_ratio = 0.8,
      })
    end,
  },

  -- Peek:  markdown preview in split
  {
    "toppair/peek.nvim",
    event = "VeryLazy",
    build = "deno task --quiet build:fast",
    keys = {
      {
        "<leader>mo",
        function()
          local peek = require("peek")
          if peek.is_open() then
            peek.close()
          else
            peek.open()
          end
        end,
        desc = "Peek Markdown (Split)",
      },
    },
    opts = {
      auto_load = true,
      close_on_bdelete = true,
      syntax = true,
      theme = "dark",
      update_on_change = true,
      app = "browser",
      filetype = { "markdown" },
      throttle_at = 200000,
      throttle_time = "auto",
    },
  },
}
