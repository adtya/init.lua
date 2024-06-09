local Plugin = { "rcarriga/nvim-notify" }

function Plugin.init()
  vim.opt.termguicolors = true
end

function Plugin.config()
  vim.notify = require("notify")
end

return Plugin
