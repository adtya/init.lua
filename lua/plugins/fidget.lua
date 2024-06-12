local Plugin = { "j-hui/fidget.nvim" }

Plugin.event = "VeryLazy";

Plugin.opts = {
  notification = {
    override_vim_notify = true,
    view = {
      stack_upwards = false,
    },
  },
}

return Plugin
