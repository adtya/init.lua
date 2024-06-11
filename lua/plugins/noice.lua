local Plugin = { "folke/noice.nvim" }
Plugin.dependencies = {
  "MunifTanjim/nui.nvim",
  "rcarriga/nvim-notify",
}

Plugin.event = "VeryLazy"
Plugin.opts = {
  -- add any options here
}

return Plugin
