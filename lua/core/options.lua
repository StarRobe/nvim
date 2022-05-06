local home = vim.env.HOME
local config = home .. '/.config/nvim'

vim.cmd('filetype indent plugin on')
vim.cmd('syntax on')
vim.cmd('colorscheme gruvbox')
--vim.cmd('colorscheme base16-bright')

vim.notify             = require("notify")                 -- set notify by plugin nvim-notify

vim.opt.autoindent     = true                              -- maintain indent of current line
vim.opt.backspace      = 'indent,start,eol'                -- allow unrestricted backspacing in insert mode
vim.opt.backup         = false                             -- don't make backups before writing
vim.opt.colorcolumn    = '80'                              -- highlight 80 column
vim.opt.clipboard      = 'unnamedplus'                     -- use clipboard
vim.opt.completeopt    = 'menu'                            -- show completion menu (for nvim-cmp)
vim.opt.completeopt    = vim.opt.completeopt + 'menuone'   -- show menu even if there is only one candidate (for nvim-cmp)
vim.opt.completeopt    = vim.opt.completeopt + 'noselect'  -- don't automatically select canditate (for nvim-cmp)
vim.opt.cursorline     = true                              -- highlight current line
vim.opt.encoding       = "UTF-8"                           -- utf-8
vim.opt.expandtab      = true                              -- always use spaces instead of tabs
vim.opt.fileencoding   = "UTF-8"                           -- utf-8
vim.opt.foldlevelstart = 99                                -- start unfolded
vim.opt.foldmethod     = 'expr'                            -- set foldmethod by treesitter
vim.opt.foldexpr      = 'nvim_treesitter#foldexptr()'
vim.opt.hidden         = true                              -- allows you to hide buffers with unsaved changes without being prompted
vim.opt.hlsearch       = false                             -- cancel the highlighting of search
vim.opt.ignorecase     = true                              -- ignore case
vim.opt.laststatus     = 2                                 -- always show status line
vim.opt.list           = true                              -- show whitespace
vim.opt.listchars      = {
  nbsp                 = '⦸',                              -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
  extends              = '»',                              -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
  precedes             = '«',                              -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
  tab                  = '▷⋯',                             -- WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7) + MIDLINE HORIZONTAL ELLIPSIS (U+22EF, UTF-8: E2 8B AF)
  trail                = '•',                              -- BULLET (U+2022, UTF-8: E2 80 A2)
}
vim.opt.number         = true                              -- show line numbers in gutter
vim.opt.relativenumber = true                              -- show relative numbers in gutter
vim.opt.shada = "'0,<0,f0,n~/.config/nvim/shada"
vim.opt.scrolloff      = 3                                 -- start scrolling 3 lines before edge of viewport
vim.opt.shiftwidth     = 2                                 -- spaces per tab (when shifting)
vim.opt.shortmess      = vim.opt.shortmess + 'c'           -- completion messages
vim.opt.showmatch      = true                              -- auto-match bracket and highlighting
vim.opt.sidescrolloff  = 3                                 -- same as scrolloff, but for columns
vim.opt.smarttab       = true                              -- <tab>/<BS> indent/dedent in leading whitespace
vim.opt.softtabstop    = 2                                 -- two Space instand of Tab
vim.opt.splitbelow     = true                              -- open horizontal splits below current window
vim.opt.splitright     = true                              -- open vertical splits to the right of the current window
vim.opt.swapfile       = false                             -- don't create swap files
vim.opt.tabstop        = 2                                 -- spaces per tab
vim.opt.termguicolors  = true                              -- use guifg/guibg instead of ctermfg/ctermbg in terminal
vim.opt.undodir        = config .. '/undo//'               -- keep undo files out of the way
vim.opt.undodir        = vim.opt.undodir + '.'             -- fallback
vim.opt.undofile       = true                              -- actually use undo files
vim.opt.virtualedit    = 'block'                           -- allow cursor to move where there is no text in visual block mode
vim.opt.visualbell     = true                              -- stop annoying beeping for non-error errors
-- vim.opt.whichwrap      = 'b,h,l,s,<,>,[,],~'               -- allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries
vim.opt.wildmenu       = true                              -- show options as list when switching buffers etc
vim.opt.wrap           = false                             -- don't change the line
vim.opt.writebackup    = false                             -- don't keep backups after writing
