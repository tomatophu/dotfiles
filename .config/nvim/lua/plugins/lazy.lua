-- Lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
   vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

   { 'catppuccin/nvim',
     version = '*',
     priority = 1000, },

   { 'nvim-treesitter/nvim-treesitter',
     version = '*',
     build = ':TSUpdate', },

   { 'nvim-tree/nvim-tree.lua',
     version = '*',
     lazy = false,
     dependencies = 'nvim-tree/nvim-web-devicons', },

   { 'tamton-aquib/staline.nvim',
     version = '*',
     dependencies = 'nvim-tree/nvim-web-devicons', },

   { 'nvim-telescope/telescope.nvim',
     version = '*',
     dependencies = 'nvim-lua/plenary.nvim', },

   { 'ms-jpq/coq_nvim',
     version = '*', },
   { 'ms-jpq/coq.artifacts',
     version = '*', },

   { 'toppair/peek.nvim',
     version = '*',
     event = 'VeryLazy',
     build = 'deno task --quiet build:fast', },

   { 'folke/snacks.nvim',
     version = '*',
     lazy = false,
     priority = 1000, },

})

