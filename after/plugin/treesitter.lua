require("nvim-treesitter.configs").setup({

  ensure_installed = {
    "bash",
    "diff",
    "dockerfile",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "go",
    "gomod",
    "gosum",
    "json",
    "markdown",
    "markdown_inline",
    "nix",
    "lua",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    module_path = "nvim-treesitter.incremental_selection",
  },
  indent = {
    enable = true,
    module_path = "nvim-treesitter.indent",
  },
})
