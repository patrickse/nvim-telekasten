return {
  -- lazy.nvim
  {
    "zaldih/themery.nvim",
--    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    lazy = false,
    dependencies = {
      "folke/tokyonight.nvim"
    },
    config = function()
      require("themery").setup({
        themes = {
          "tokyonight-storm",
          "tokyonight-day",
          "tokyonight-moon",
          "tokyonight-night"
        }, -- Your list of installed colorschemes
        themeConfigFile = "~/.config/nvim-telekasten/lua/custom/plugins/theme.lua", -- Described below
        livePreview = true, -- Apply theme while browsing. Default to true.
      })
    end
  }
}
