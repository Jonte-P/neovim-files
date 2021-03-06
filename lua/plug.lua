local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
	use { 'nvim-lualine/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons' }
	use { 'Mofiqul/dracula.nvim' }
	use {
		'nvim-treesitter/nvim-treesitter', run = 'TSUpdate'
	}
	use { 'neovim/nvim-lspconfig' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'saadparwaiz1/cmp_luasnip' }
	use { 'L3MON4D3/LuaSnip' }
	use { 'rafamadriz/friendly-snippets' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
