local Plugin = { "lewis6991/gitsigns.nvim" }

Plugin.event = { "BufReadPre", "BufNewFile" }

-- See :help gitsigns-usage
Plugin.opts = {
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text_pos = "right_align",
    delay = 0,
  },
  current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
}

return Plugin
