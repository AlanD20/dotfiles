return {
  {
    {
      "nvim-telescope/telescope.nvim",
      keys = {
        {
          "<leader>sG",
          "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
          desc = "Live Grep (args)",
        },
        {
          "<leader>/",
          "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
          desc = "Live Grep (args)",
        },
      },

      opts = {
        defaults = {
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          winblend = 0,
        },
        extensions = {
          live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
          },
        },
      },
    },

    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    -- Live grep with args
    "nvim-telescope/telescope-live-grep-args.nvim",
    config = function()
      require("telescope").load_extension("live_grep_args")
    end,
  },
}
