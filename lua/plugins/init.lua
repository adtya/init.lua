local Plugins = {
  { "stevearc/dressing.nvim", opts = {}, event = "VeryLazy" },
  { "sindrets/diffview.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "nvim-tree/nvim-web-devicons", lazy = true },
}

return Plugins
