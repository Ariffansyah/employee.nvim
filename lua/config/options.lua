-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options. lua
-- Add any additional options here
vim.opt.relativenumber = false

-- Enhanced diagnostic configuration for detailed error messages
vim.diagnostic.config({
  virtual_text = false, -- Already set by lsp_lines
  virtual_lines = true, -- Enable for lsp_lines
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true, -- Show source of diagnostic (e. g., "eslint", "typescript")
    header = "",
    prefix = "",
    format = function(diagnostic)
      -- Add more context to error messages
      local message = diagnostic.message
      local source = diagnostic.source or "LSP"
      local code = diagnostic.code or ""

      if code ~= "" then
        return string.format("[%s:%s] %s", source, code, message)
      else
        return string.format("[%s] %s", source, message)
      end
    end,
  },
})

-- Show full error message in floating window (MAIN ONE - SIMPLE)
vim.keymap.set("n", "<leader>e", function()
  vim.diagnostic.open_float(nil, {
    border = "rounded",
    source = "always",
  })
end, { desc = "Show full error message" })

-- Keybinding to show detailed error in floating window (DETAILED VERSION)
vim.keymap.set("n", "<leader>de", function()
  vim.diagnostic.open_float(nil, {
    scope = "cursor",
    border = "rounded",
    source = "always",
    prefix = " ",
  })
end, { desc = "Show diagnostic error details" })

-- Show all diagnostics in location list
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Show all diagnostics in location list" })

vim.diagnostic.config({
  virtual_text = false,  -- Disable inline error text
  virtual_lines = false, -- If you have lsp_lines
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
