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
   { 
      'catppuccin/nvim',
      priority = 1000, 
   },

   { 
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate', 
   },

   { 
      'nvim-tree/nvim-tree.lua',
      lazy = false,
      dependencies = 'nvim-tree/nvim-web-devicons', 
   },

   { 
      'tamton-aquib/staline.nvim',
      dependencies = 'nvim-tree/nvim-web-devicons', 
   },

   { 
      'nvim-telescope/telescope.nvim',
      dependencies = 'nvim-lua/plenary.nvim', 
   },

   { 
      'ms-jpq/coq_nvim',
   },

   { 
      'ms-jpq/coq.artifacts',
   },

   { 
      'toppair/peek.nvim',
      event = 'VeryLazy',
      build = 'deno task --quiet build:fast', 
   },

   { 
      'folke/snacks.nvim',
      lazy = false,
      priority = 1000, 
   },

   {
      'neovim/nvim-lspconfig',
   },

   {
      'mason-org/mason.nvim',
      opts = {},
   },

   { 
      'mfussenegger/nvim-dap', 
   },

   {
      'mfussenegger/nvim-dap-python',
      dependencies = {
         'mfussenegger/nvim-dap',
      },
   },

   {
      'igorlfs/nvim-dap-view',
      ---@module 'dap-view'
      ---@type dapview.Config
      opts = {},
   },
})

