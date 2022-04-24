-- Imports
require('vars')
require('opts')
require('keys')
require('plug')
require('plugs.treesitter')
require('plugs.lsp')
require('plugs.cmp')
require('plugs.luasnip')
-- Plugs
require('nvim-tree').setup{}

require('lualine').setup{
	options = {
		theme = 'dracula-nvim'
	}
}
require('lspconfig')
