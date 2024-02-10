return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/dracula.nvim'
  use 'lewis6991/gitsigns.nvim'
  use "lukas-reineke/indent-blankline.nvim"

  use {
    'akinsho/bufferline.nvim',
    as = "bufferline.nvim",
    requires = {
      {'nvim-tree/nvim-web-devicons'}
    }
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'}
    }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    { run = ':TSUpdate' }
  }
end)
