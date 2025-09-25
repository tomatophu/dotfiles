-- From Neil Sabde's "Neovim Lua from Scratch" 

local map = vim.api.nvim_set_keymap

map('v', '<', '<gv', { noremap = true, silent = false }) -- stays in visual after
map('v', '>', '>gv', { noremap = true, silent = false })

map('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })

map('n', '<C-a>', ':lua Snacks.terminal.toggle()<CR>', { noremap = true, silent = true })
map('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })
map('n', '<C-S-q>', ':q!<CR>', { noremap = true, silent = true })
map('n', '<C-S-s>', ':w ', { noremap = true, silent = false })
map('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
map('n', '<C-w>', ':lua Snacks.bufdelete.delete()<CR>', { noremap = true, silent = true })
map('n', '<C-S-w>', ':lua Snacks.bufdelete.all()<CR>', { noremap = true, silent = true })
map('n', '<C-S-e>', ':e ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })
map('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
map('n', '<C-r>', ':Telescope find_files<CR>', { noremap = true, silent = true })
map('n', '<C-f>', ':Telescope live_grep<CR>', { noremap = true, silent = true })
map('n', '<C-i>', ':PeekToggle<CR>',  {noremap = true, silent = true })

map('n', '<C-Tab>', ':bnext<CR>', { noremap = true, silent = true })
map('n', '<C-S-Tab>', ':bprev<CR>', { noremap = true, silent = true })

map('i', '<C-Tab>', '<esc>:bnext<CR>i', { noremap = true, silent = true })
map('i', '<C-S-Tab>', '<esc>:bprev<CR>i', { noremap = true, silent = true })

map('n', '<C-a>', '<esc>:lua Snacks.terminal.toggle()<CR>', { noremap = true, silent = true })
map('i', '<C-q>', '<esc>:q<CR>', { noremap = true, silent = true })
map('i', '<C-S-q>', '<esc>:q!<CR>', { noremap = true, silent = true })
map('i', '<C-S-s>', '<esc>:w ', { noremap = true, silent = false })
map('i', '<C-s>', '<esc>:w<CR>li', { noremap = true, silent = true })
map('i', '<C-w>', '<esc>:lua Snacks.bufdelete.delete()<CR>', { noremap = true, silent = true })
map('i', '<C-S-w>', '<esc>:lua Snacks.bufdelete.all()<CR>', { noremap = true, silent = true })
map('i', '<C-e>', '<esc>:e ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })
map('i', '<C-n>', '<esc>:NvimTreeToggle<CR>', { noremap = true, silent = true })
map('i', '<C-r>', '<esc>:Telescope find_files<CR>', { noremap = true, silent = true })
map('i', '<C-f>', '<esc>:Telescope live_grep<CR>', { noremap = true, silent = true })
map('i', '<C-i>', '<esc>:PeekToggle<CR>li',  {noremap = true, silent = true })

map('c', '<C-a>', '<C-b>', { noremap = true })
map('c', '<C-f>', '<Right>', { noremap = true })
map('c', '<C-b>', '<Left>', { noremap = true })

