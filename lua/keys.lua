vim.g.mapleader = '\\'
vim.keymap.set('n', "<Leader>t", [[:NvimTreeToggle<CR>]], {})
vim.keymap.set('n', '<leader>r', ':CompilerOpen<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rf', ':CompilerToggleResults<CR>', { noremap = true, silent = false })

