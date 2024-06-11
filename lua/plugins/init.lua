local Plugins = {
  { "stevearc/dressing.nvim", event = "VeryLazy", opts = {} },
  { "folke/persistence.nvim", event = "BufReadPre", opts = {} },
  { "sindrets/diffview.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "nvim-tree/nvim-web-devicons", lazy = true },
}

return Plugins
