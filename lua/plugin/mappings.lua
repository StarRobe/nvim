local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true }

-- nvim-tree
map('n', '<A-t>',':NvimTreeToggle<CR>',opts)
-- Telescope
map('n','<C-f>',"<cmd>lua require('telescope.builtin').find_files()<CR>",opts)
map('n','<C-b>',"<cmd>lua require('telescope.builtin').buffers()<CR>",opts)
map('n','<C-h>',"<cmd>lua require('telescope.builtin').help_tags()<CR>",opts)
map('n','<leader>co',":Telescope colorscheme<CR>",opts)
map('n','<C-y>',":Telescope notify<CR>",opts)
