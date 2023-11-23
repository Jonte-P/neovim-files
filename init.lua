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

require('code_runner').setup({
  filetype = {
    c = {
      "cd $dir &&",
      "gcc $fileName &&",
      "$dir/a.out"
    },
    python = "python3 -u",
    typescript = "deno run",
    rust = {
      "cd $dir &&",
      "rustc $fileName &&",
      "$dir/$fileNameWithoutExt"
    },
  },
})
