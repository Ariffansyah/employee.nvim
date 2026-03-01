return {
  "atiladefreitas/dooing",
  config = function()
    require("dooing").setup({
      window = {
        width = 40,
        height = 20,
        border = "rounded",
      },
      save_path = vim.fn.stdpath("data") .. "/dooing_todos.json",
    })

    vim.keymap.set("n", "<leader>td", "<cmd>Dooing<cr>", { desc = "Buka ToDo List" })
  end,
}
