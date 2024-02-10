local Plugin = { "akinsho/bufferline.nvim" }
Plugin.version = "*"
Plugin.dependencies = "nvim-tree/nvim-web-devicons"

Plugin.event = 'VeryLazy'

function Plugin.init()
  vim.opt.termguicolors = true
end

Plugin.opts = {
  options = {
    mode = 'buffers',
    offsets = {
      {filetype = 'neo-tree'},
    },
  },
  -- :help bufferline-highlights
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {attribute = 'fg', highlight = 'Function'},
      italic = false
    }
  }
}

return Plugin
