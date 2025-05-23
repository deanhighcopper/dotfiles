return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required dependency
    },
    cmd = "Telescope",
    keys = {
      {
        "<leader><space>",
        ":Telescope find_files<CR>",
        desc = "Find Files",
      },
    },
    config = function()
      -- You can add Telescope-specific configuration here
      require("telescope").setup({
        -- Example configuration options
        defaults = {
          {
            file_ignore_patterns = {
              "node_modules",
            },
          },
        },
      })
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      {
        "<leader>fe",
        function()
          require("neo-tree.command").execute({ toggle = true })
        end,
        desc = "Explorer NeoTree (Root Dir)",
      },
      { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
    },
    opts = {
      -- fill any relevant options here
    },
  },
}
