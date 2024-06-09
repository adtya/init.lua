local Plugin = { "nvim-lualine/lualine.nvim" }
Plugin.dependencies = { "nvim-tree/nvim-web-devicons" }

Plugin.event = "VeryLazy"

function Plugin.init()
  vim.opt.showmode = false
end

-- See :help lualine.txt
Plugin.opts = {
  options = {
    theme = "dracula-nvim",
    globalstatus = true,
    icons_enabled = true,
    component_separators = "|",
    section_separators = "",
    disabled_filetypes = {
      statusline = { "neo-tree" },
    },
  },
}

return Plugin
