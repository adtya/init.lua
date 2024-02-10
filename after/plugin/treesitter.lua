require'nvim-treesitter.configs'.setup {

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
    -- "yaml" Not compiling for some reason?
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
