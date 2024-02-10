return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'Mofiqul/dracula.nvim'

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', requires = { {'nvim-lua/plenary.nvim'} } }
  use {
    'akinsho/bufferline.nvim',
    as = "bufferline.nvim",
    version = '4.5.0',
    requires = {
      {'nvim-tree/nvim-web-devicons'}
    }
  }

  use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
  use {
    'f-person/git-blame.nvim'
  }

end)
