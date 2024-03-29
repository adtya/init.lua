return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use("lewis6991/gitsigns.nvim")
  use("lukas-reineke/indent-blankline.nvim")
  use("mrcjkb/nvim-lastplace")
  use("akinsho/toggleterm.nvim")
  use("wesleimp/stylua.nvim")
  use("neovim/nvim-lspconfig")
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lsp-signature-help")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("hrsh7th/cmp-buffer")
  use("onsails/lspkind.nvim")
  use("rafamadriz/friendly-snippets")
  use("https://git.sr.ht/~whynothugo/lsp_lines.nvim")

  use({
    "akinsho/bufferline.nvim",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
    },
  })

  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  })

  use({
    "kdheepak/lazygit.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })

  use({
    "Mofiqul/dracula.nvim",
    config = function()
      vim.cmd([[colorscheme dracula]])
    end,
  })

  use({
    "nvim-neo-tree/neo-tree.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  })

  use({
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
  })

  use({
    "nvim-telescope/telescope.nvim",
    requires = "nvim-lua/plenary.nvim",
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    { run = ":TSUpdate" },
  })

  use({
    "petertriho/cmp-git",
    requires = "nvim-lua/plenary.nvim",
  })

  use({
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end,
  })
end)
