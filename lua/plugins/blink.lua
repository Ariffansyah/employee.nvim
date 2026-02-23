return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default", -- 'default', 'super-tab', or 'enter'
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },
    completion = {
      menu = { border = "rounded" },
      documentation = { window = { border = "rounded" }, auto_show = true },
    },
    signature = { enabled = true, window = { border = "rounded" } },
  },
}
