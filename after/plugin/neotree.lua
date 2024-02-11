require("neo-tree").setup({
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
})

vim.keymap.set("n", "<leader>1", "<cmd>Neotree toggle<Return>")
