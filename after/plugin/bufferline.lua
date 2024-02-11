vim.opt.termguicolors = true
require("bufferline").setup({
  options = {
    diagnostics = "nvim_lsp",
    themable = false,
    offsets = {
      {
        filetype = "neo-tree",
        text = "File Tree",
        separator = true,
      },
    },
    separator_style = "slant",
    show_buffer_close_icons = false,
    show_close_icon = false,
  },
})
