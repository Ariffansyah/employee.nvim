return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      {
        "<leader>H",
        function()
          local harpoon = require("harpoon")
          local conf = require("telescope.config").values
          local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
              table.insert(file_paths, item.value)
            end

            require("telescope.pickers")
                .new({}, {
                  prompt_title = "Harpoon Buffers",
                  finder = require("telescope.finders").new_table({
                    results = file_paths,
                  }),
                  previewer = conf.file_previewer({}),
                  sorter = conf.generic_sorter({}),
                })
                :find()
          end
          toggle_telescope(harpoon:list())
        end,
        desc = "[H]arpoon Files",
      },
      {
        "<leader>a",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon:  Add file",
      },
      {
        "<C-e>",
        function()
          require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
        end,
        desc = "Harpoon: Toggle menu",
      },
    },
    config = function()
      require("harpoon"):setup({})
    end,
  },
}
