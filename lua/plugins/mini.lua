return {
  "nvim-mini/mini.nvim",
  version = false,
  config = function()
    -- 1. EDITING ENHANCEMENTS
    require("mini.ai").setup({ n_lines = 500 })

    require("mini.surround").setup({
      mappings = {
        add = "gsa", -- Add surrounding in Normal and Visual modes
        delete = "gsd", -- Delete surrounding
        find = "gsf", -- Find surrounding (to the right)
        find_left = "gsF", -- Find surrounding (to the left)
        highlight = "gsh", -- Highlight surrounding
        replace = "gsr", -- Replace surrounding
        update_n_lines = "gsn", -- Update `n_lines`
        suffix_last = "l", -- Suffix to search with "prev" method
        suffix_next = "n", -- Suffix to search with "next" method
      },
    })

    require("mini.pairs").setup({
      modes = { insert = true, command = false, terminal = false },
      -- Disable in certain filetypes where it might conflict
      skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
      skip_ts = { "string" },
      skip_unbalanced = true,
      markdown = true,
    })

    require("mini.comment").setup({
      options = {
        -- Disable default mappings if you have other comment plugins
        custom_commentstring = nil,
        ignore_blank_line = false,
      },
      mappings = {
        comment = "gc",
        comment_line = "gcc",
        comment_visual = "gc",
        textobject = "gc",
      },
    })

    require("mini.move").setup({
      mappings = {
        -- Move visual selection in Visual mode
        left = "<M-h>", -- Alt+h
        right = "<M-l>", -- Alt+l
        down = "<M-j>", -- Alt+j
        up = "<M-k>", -- Alt+k

        -- Move current line in Normal mode
        line_left = "<M-h>",
        line_right = "<M-l>",
        line_down = "<M-j>",
        line_up = "<M-k>",
      },
    })

    -- 2. UI & VISUALS

    require("mini.statusline").setup({
      use_icons = true,
      set_vim_settings = false,
    })

    require("mini.indentscope").setup({
      symbol = "│",
      options = { try_as_border = true },
      draw = {
        delay = 100,
        animation = require("mini.indentscope").gen_animation.none(),
      },
    })

    require("mini.hipatterns").setup({
      highlighters = {
        -- Disable or customize patterns that might conflict
        hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
      },
    })

    require("mini.icons").setup()
    -- Use mini.icons as fallback, not as primary if you have nvim-web-devicons
    MiniIcons.mock_nvim_web_devicons()

    -- 3. UTILITIES
    require("mini.splitjoin").setup({
      mappings = {
        toggle = "gS", -- Changed from default to avoid conflicts
        split = "", -- Disable individual split mapping
        join = "", -- Disable individual join mapping
      },
    })
  end,
}
