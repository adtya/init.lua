local Plugin = { "nvim-treesitter/nvim-treesitter" }
Plugin.dependencies = {
  { "nvim-treesitter/nvim-treesitter-textobjects" },
}

Plugin.main = "nvim-treesitter.configs"

-- See :help nvim-treesitter-modules
Plugin.opts = {
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

  sync_install = true,
  auto_install = true,

  -- :help nvim-treesitter-textobjects-modules
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },

  ensure_installed = {
    "vim",
    "vimdoc",
    "lua",
  },
}

return Plugin
