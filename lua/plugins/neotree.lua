local Plugin = { "nvim-neo-tree/neo-tree.nvim" }
Plugin.branch = "v3.x"
Plugin.dependencies = {
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons",
  "MunifTanjim/nui.nvim",
}

Plugin.lazy = false

function Plugin.init()
  -- disable netrw (neovim's default file explorer)
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1
end

Plugin.opts = {
  close_if_last_window = false,
  enable_diagnostics = true,
  enable_git_status = true,
  filesystem = {
    filtered_items = {
      visible = true,
    },
    follow_current_file = {
      enabled = true,
    },
    use_libuv_file_watcher = true,
  },
}

Plugin.cmd = "Neotree"

Plugin.keys = {
  { "<leader>1", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree" },
}

return Plugin
