vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true }
-- 分屏
map("n", "sv", ":vsp<CR>", opts)
map("n", "sh", ":sp<CR>", opts)
map("n", "sc", "<C-w>c", opts)
map("n", "so", "<C-w>o", opts) -- close others
-- 比例控制
map("n", "s,", ":vertical resize +10<CR>", opts)
map("n", "s.", ":vertical resize -10<CR>", opts)
map("n", "s=", "<C-w>=", opts)
map("n", "sl", ":resize +10<CR>",opts)
map("n", "sk", ":resize -10<CR>",opts)
-- 移动分屏
map("n", "<A-h>", "<C-w>h", opts)
map("n", "<A-j>", "<C-w>j", opts)
map("n", "<A-k>", "<C-w>k", opts)
map("n", "<A-l>", "<C-w>l", opts)
-- 代码缩进
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
-- buffer
map("n","<Tab>",":bn<CR>",opts)
map("n","<S-Tab>",":bp<CR>",opts)
map("n","<C-x>",":bd<CR>",opts)

require('lsp.mappings')
require('plugin.mappings')
