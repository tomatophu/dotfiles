require('peek').setup({
   auto_load = false,
})
vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
vim.api.nvim_create_user_command('PeekToggle', function()
   if require('peek').is_open() then
      require('peek').close()
   else
      require('peek').open()
   end
end, {})
