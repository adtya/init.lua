return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'Mofiqul/dracula.nvim'

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', requires = { {'nvim-lua/plenary.nvim'} } }

  use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }

end)
