local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- nvim-tree
map('n', '<A-t>',':NvimTreeToggle<CR>',opt)

--Telescope
map('n','<C-f>',"<cmd>lua require('telescope.builtin').find_files()<CR>",opt)
map('n','<leader>fg',"<cmd>lua require('telescope.builtin').live_grep()<CR>",opt)
map('n','<leader>fb',"<cmd>lua require('telescope.builtin').buffers()<CR>",opt)
map('n','<C-h>',"<cmd>lua require('telescope.builtin').help_tags()<CR>",opt)
