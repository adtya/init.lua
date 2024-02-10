local Plugin = { "Mofiqul/dracula.nvim" }

Plugin.lazy = false
Plugin.priority = 1000

Plugin.opts = {
  italic_comment = true,
  show_end_of_buffer = true,
  transparent_bg = true,
}

function Plugin.config()
  vim.cmd([[colorscheme dracula]])
end

return Plugin
