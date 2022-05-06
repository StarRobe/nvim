local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- nvim-tree
map('n', '<A-t>',':NvimTreeToggle<CR>',opt)

--Telescope
map('n','<C-f>',"<cmd>lua require('telescope.builtin').find_files()<CR>",opt)
map('n','<C-l>',"<cmd>lua require('telescope.builtin').live_grep()<CR>",opt)
map('n','<C-b>',"<cmd>lua require('telescope.builtin').buffers()<CR>",opt)
map('n','<C-h>',"<cmd>lua require('telescope.builtin').help_tags()<CR>",opt)

map('n','<C-y>',":Telescope notify<CR>",opt)


