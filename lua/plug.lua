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
	 { "NeogitOrg/neogit", dependencies = {"nvim-lua/plenary.nvim", "sindrets/diffview.nvim", "nvim-telescope/telescope.nvim", }, },
	 { "romgrk/barbar.nvim", dependencies = {"lewis6991/gitsigns.nvim", "nvim-tree/nvim-web-devicons", }, }, 
	 { "kkharji/sqlite.lua" },
{ -- The code runner
  "Zeioth/compiler.nvim",
  cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
  dependencies = { "stevearc/overseer.nvim" },
  opts = {},
},
{ -- The task runner we use
  "stevearc/overseer.nvim",
  commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
  cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
  opts = {
    task_list = {
      direction = "bottom",
      min_height = 25,
      max_height = 25,
      default_detail = 1
    },
  },
},
	 { "nvim-telescope/telescope.nvim", tag = '0.1.5', dependencies = { "nvim-lua/plenary.nvim", }, },
	 { "folke/which-key.nvim", event = "VeryLazy", init = function() 
		 vim.o.timeout = true vim.o.timeoutlen = 300
		 require("which-key").setup{
		 }
	 end
 }
})
