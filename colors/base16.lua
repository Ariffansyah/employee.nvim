-- Custom Base16 colorscheme
local colors = {
  base00 = "#1a161a", -- Background
  base01 = "#2a242a", -- Lighter background (Status bar/etc)
  base02 = "#8e768e", -- Selection background
  base03 = "#8e768e", -- Comments
  base04 = "#ffffff", -- Variables
  base05 = "#ffffff", -- Foreground
  base06 = "#ffb3ff", -- Palette 14
  base07 = "#ffffff", -- Palette 15
  base08 = "#ff5f87", -- Palette 1 (Red/Pink)
  base09 = "#ffb3ba", -- Palette 2 (Strings)
  base0A = "#ffffaf", -- Palette 3 (Yellow/Gold)
  base0B = "#ff79c6", -- Palette 5 (Keywords - PINK)
  base0C = "#ff87af", -- Palette 9 (Functions) - PINK/MAGENTA
  base0D = "#ffafd7", -- Palette 13 (Types)
  base0E = "#f78da7", -- Palette 6 (Operators)
  base0F = "#ffb3ff", -- Palette 14
}

vim.g.colors_name = "base16"

-- Set terminal colors
local terminal_ansi_colors = {
  colors.base08,
  colors.base09,
  colors.base0B,
  colors.base0A,
  colors.base0D,
  colors.base0E,
  colors.base0C,
  colors.base05,
  colors.base03,
  colors.base08,
  colors.base0B,
  colors.base0A,
  colors.base0D,
  colors.base0E,
  colors.base0C,
  colors.base07,
}

for i, color in ipairs(terminal_ansi_colors) do
  vim.g["terminal_color_" .. (i - 1)] = color
end

-- Clear existing highlights
vim.cmd("highlight clear")

-- Define all highlight groups - be VERY aggressive
local highlights = {
  -- Base colors
  Normal = { bg = colors.base00, fg = colors.base05 },
  NormalFloat = { bg = colors.base00, fg = colors.base05 },
  FloatBorder = { fg = colors.base0C, bg = colors.base00 },
  CursorLine = { bg = "#252025" },
  Visual = { bg = colors.base0D, fg = colors.base00 },

  -- Neo-tree / Sidebars
  NeoTreeNormal = { bg = colors.base00 },
  NeoTreeNormalNC = { bg = colors.base00 },

  -- Generic UI elements - make them all pink
  Directory = { fg = colors.base0C, bold = true },
  SpecialKey = { fg = colors.base0C },
  Title = { fg = colors.base0C, bold = true },
  Keyword = { fg = colors.base0B },
  Identifier = { fg = colors.base0C },
  Function = { fg = colors.base0C },

  -- Catch-all for menu items
  Statement = { fg = colors.base0B },
  PreProc = { fg = colors.base0C },
  Operator = { fg = colors.base0E },

  -- Dashboard variants
  DashboardHeader = { fg = colors.base0C },
  DashboardCenter = { fg = colors.base0C },
  DashboardFooter = { fg = colors.base03 },
  DashboardKey = { fg = colors.base0C },
  DashboardDesc = { fg = colors.base0C },
  DashboardIcon = { fg = colors.base0C },
  DashboardShortCut = { fg = colors.base0C },
  DashboardProjectTitle = { fg = colors.base0C },

  -- Telescope - everything pink
  TelescopeNormal = { fg = colors.base0C },
  TelescopeBorder = { fg = colors.base0C },
  TelescopePromptPrefix = { fg = colors.base0C },
  TelescopePromptNormal = { fg = colors.base0C },
  TelescopePromptBorder = { fg = colors.base0C },
  TelescopeSelection = { fg = colors.base0C, bg = colors.base02, bold = true },
  TelescopeSelectionCaret = { fg = colors.base0C },
  TelescopeMultiSelection = { fg = colors.base0C },
  TelescopeMatching = { fg = colors.base0C, bold = true },

  -- LazyVim
  LazyH1 = { fg = colors.base0C, bold = true },
  LazyH2 = { fg = colors.base0C, bold = true },
  LazyButton = { fg = colors.base0C },
  LazyButtonActive = { fg = colors.base0C, bold = true },
  LazyComment = { fg = colors.base03 },

  -- Scrollbar and UI elements
  Cursor = { bg = colors.base0C, fg = colors.base00 },
  CursorIM = { bg = colors.base0C, fg = colors.base00 },
  TermCursorNC = { bg = colors.base0C },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
