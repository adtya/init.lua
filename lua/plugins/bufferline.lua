local Plugin = { "akinsho/bufferline.nvim" }
Plugin.version = "*"
Plugin.dependencies = "nvim-tree/nvim-web-devicons"

Plugin.event = "VeryLazy"

function Plugin.init()
  vim.opt.termguicolors = true
end

Plugin.opts = {
  options = {
    themable = false,
    diagnostics = "nvim_lsp",
    mode = "buffers",
    offsets = {
      { filetype = "neo-tree", text = "File Tree", separator = true },
    },
    separator_style = "slant",
    show_buffer_close_icons = false,
    show_close_icon = false,
  },

  -- :help bufferline-highlights
  highlights = {
    buffer_selected = {
      italic = false,
    },
    indicator_selected = {
      fg = { attribute = "fg", highlight = "Function" },
      italic = false,
    },
  },
}

return Plugin
