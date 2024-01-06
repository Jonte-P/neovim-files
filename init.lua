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
		theme = 'catppuccin'
	}
}
require('lspconfig')
require('mason').setup()
require('telescope').setup{}
require('code_runner').setup({
  filetype = {
    c = {
      "cd $dir &&",
      "gcc $fileName &&",
      "$dir/a.out"
    },
    python = "python3 -u",
      rust = {
      "cd $dir &&",
      "rustc $fileName &&",
      "$dir/$fileNameWithoutExt"
    },
  },
})
-- Telescope keys
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
