local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	 { "kyazdani42/nvim-tree.lua", dependencies = { "kyazdani42/nvim-web-devicons", }, },
	 { "nvim-lualine/lualine.nvim", dependencies = { "kyazdani42/nvim-web-devicons", }, },
	 { "neovim/nvim-lspconfig" },
	 { "williamboman/mason.nvim" },
	 { "nvim-treesitter/nvim-treesitter", build=":TSUpdate" },
	 { "hrsh7th/nvim-cmp" },
	 { "hrsh7th/cmp-nvim-lsp" },
	 { "catppuccin/nvim" , name ="catppuccin", priority = 1000 },
	 { "saadparwaiz1/cmp_luasnip" },
	 { "L3MON4D3/LuaSnip" },
	 { "rafamadriz/friendly-snippets" },
	 { "CRAG666/code_runner.nvim", config = true },

})
