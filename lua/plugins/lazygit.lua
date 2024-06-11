local Plugin = { "kdheepak/lazygit.nvim" }
Plugin.cmd = {
  "LazyGit",
  "LazyGitConfig",
  "LazyGitCurrentFile",
  "LazyGitFilter",
  "LazyGitFilterCurrentFile",
}
Plugin.dependencies = { "nvim-lua/plenary.nvim" }
Plugin.keys = {
  { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
}

return Plugin
