local Plugin = { "nvim-telescope/telescope.nvim" }
Plugin.branch = "0.1.x"

Plugin.dependencies = {
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    enabled = true,
  },
}

Plugin.cmd = { "Telescope" }

Plugin.keys = {
  { "<leader><space>", "<cmd>Telescope buffers<cr>", desc = "Find buffer" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
  { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find files in git" },
  { "<leader>fp", "<cmd>Telescope live_grep<cr>", desc = "Find text recursively" },
  { "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Find text in current buffer" },
}

function Plugin.config()
  require("telescope").load_extension("fzf")
end

return Plugin
