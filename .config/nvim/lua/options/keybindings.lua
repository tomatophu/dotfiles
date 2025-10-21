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
map('n', '<C-z>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
map('n', '<C-r>', ':Telescope find_files<CR>', { noremap = true, silent = true })
map('n', '<C-f>', ':Telescope live_grep<CR>', { noremap = true, silent = true })
map('n', '<C-i>', ':PeekToggle<CR>',  {noremap = true, silent = true })

map('n', '<C-Tab>', ':bn<CR>', { noremap = true, silent = true })
map('n', '<C-S-Tab>', ':bp<CR>', { noremap = true, silent = true })

map('i', '<C-Tab>', '<esc>:bn<CR>i', { noremap = true, silent = true })
map('i', '<C-S-Tab>', '<esc>:bp<CR>i', { noremap = true, silent = true })

map('n', '<C-a>', '<esc>:lua Snacks.terminal.toggle()<CR>', { noremap = true, silent = true })
map('i', '<C-q>', '<esc>:q<CR>', { noremap = true, silent = true })
map('i', '<C-S-q>', '<esc>:q!<CR>', { noremap = true, silent = true })
map('i', '<C-S-s>', '<esc>:w ', { noremap = true, silent = false })
map('i', '<C-s>', '<esc>:w<CR>li', { noremap = true, silent = true })
map('i', '<C-w>', '<esc>:lua Snacks.bufdelete.delete()<CR>', { noremap = true, silent = true })
map('i', '<C-S-w>', '<esc>:lua Snacks.bufdelete.all()<CR>', { noremap = true, silent = true })
map('i', '<C-z>', '<esc>:NvimTreeToggle<CR>', { noremap = true, silent = true })
map('i', '<C-r>', '<esc>:Telescope find_files<CR>', { noremap = true, silent = true })
-- map('i', '<C-f>', '<esc>:Telescope live_grep<CR>', { noremap = true, silent = true })
map('i', '<C-i>', '<esc>:PeekToggle<CR>li', {noremap = true, silent = true })

-- Emacs style keybindings
map('i', '<C-a>', '<Home>', {noremap = true, silent = true })
map('i', '<C-e>', '<End>', {noremap = true, silent = true })
map('i', '<C-p>', '<Up>', {noremap = true, silent = true })
map('i', '<C-n>', '<Down>', {noremap = true, silent = true })
map('i', '<C-b>', '<Left>', {noremap = true, silent = true })
map('i', '<C-f>', '<Right>', {noremap = true, silent = true })

map('c', '<C-a>', '<C-b>', { noremap = true })
map('c', '<C-f>', '<Right>', { noremap = true })
map('c', '<C-b>', '<Left>', { noremap = true })

-- Quick Tab Switching
-- I know this looks weird but trust me it is for a reason
map('i', '<C-1>', '<esc>:b 1<CR>i', {noremap = true, silent = true })
map('i', '<C-2>', '<esc>:b 1<CR>:bn<CR>i', {noremap = true, silent = true })
map('i', '<C-3>', '<esc>:b 1<CR>:2bn<CR>i', {noremap = true, silent = true })
map('i', '<C-4>', '<esc>:b 1<CR>:3bn<CR>i', {noremap = true, silent = true })
map('i', '<C-5>', '<esc>:b 1<CR>:4bn<CR>i', {noremap = true, silent = true })
map('i', '<C-6>', '<esc>:b 1<CR>:5bn<CR>i', {noremap = true, silent = true })
map('i', '<C-7>', '<esc>:b 1<CR>:6bn<CR>i', {noremap = true, silent = true })
map('i', '<C-8>', '<esc>:b 1<CR>:7bn<CR>i', {noremap = true, silent = true })
map('i', '<C-9>', '<esc>:b 1<CR>:bp<CR>i', {noremap = true, silent = true })

map('n', '<C-1>', ':b 1<CR>', {noremap = true, silent = true })
map('n', '<C-2>', ':b 1<CR>:bn<CR>', {noremap = true, silent = true })
map('n', '<C-3>', ':b 1<CR>:2bn<CR>', {noremap = true, silent = true })
map('n', '<C-4>', ':b 1<CR>:3bn<CR>', {noremap = true, silent = true })
map('n', '<C-5>', ':b 1<CR>:4bn<CR>', {noremap = true, silent = true })
map('n', '<C-6>', ':b 1<CR>:5bn<CR>', {noremap = true, silent = true })
map('n', '<C-7>', ':b 1<CR>:6bn<CR>', {noremap = true, silent = true })
map('n', '<C-8>', ':b 1<CR>:6bn<CR>', {noremap = true, silent = true })
map('n', '<C-9>', ':b 1<CR>:bp<CR>', {noremap = true, silent = true })

-- Debugger
local dap = require('dap')

map('n', '<C-d>', ':DapNew<CR>', {noremap = true, silent = true })
map('n', '<C-S-d>', '', {noremap = true, silent = true, callback = dap.repl.open})
map('n', '<C-c>', ':DapContinue<CR>', {noremap = true, silent = true })
map('n', '<C-b>', ':DapToggleBreakpoint<CR>', {noremap = true, silent = true })
map('n', '<C-o>', ':DapStepOver<CR>', {noremap = true, silent = true })
map('n', '<C-n>', ':DapStepInto<CR>', {noremap = true, silent = true })

