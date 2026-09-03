-- Imports
require('vars')
require('keys')
require('plug')
require('opts')
require('plugs.treesitter')
require('plugs.lsp')
require('plugs.cmp')
require('plugs.luasnip')
-- Plugs
require('nvim-tree').setup{}
require('lualine').setup{
	options = {
		theme = 'auto'
	}
}
-- NVM node
-- Dynamically grab your nvm default node binary path
-- Change 'v20.14.0' to whatever stable/default version you want Neovim to fallback on
local node_version = "v26.8.1" 
local nvm_node_path = vim.fn.expand("~/.nvm/versions/node/" .. node_version .. "/bin")

-- Prepend it to Neovim's PATH environment variable
if vim.fn.isdirectory(nvm_node_path) == 1 then
    vim.env.PATH = nvm_node_path .. ":" .. vim.env.PATH
end

require('lspconfig')
require('mason').setup()
require('telescope').setup{}
require('mason-lspconfig').setup {
	automatic_enable = false
}

--require('code_runner').setup({
--  filetype = {
--    c = {
--      "cd $dir &&",
--      "gcc $fileName &&",
--      "$dir/a.out"
--    },
--    python = "python3 -u",
--      rust = {
--      "cd $dir &&",
--      "rustc $fileName &&",
--      "$dir/$fileNameWithoutExt"
--    },
--  },
--})
require("which-key")
-- Telescope keys
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Which-key configuration
--local wk = require("which-key")
--wk.register(mappings, opts)
-- NeoGit configuration
local neogit = require('neogit')
neogit.setup {}
-- barbar config
vim.g.barbar_auto_setup = false
require 'barbar'.setup {
	animation = true,
	clickable = true,
	auto_hide = false,
}
