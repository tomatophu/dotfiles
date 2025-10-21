vim.cmd('COQnow --shut-up')

-- so then they don't interfere with my own keybindings
vim.g.coq_settings = {
   ['keymap.bigger_preview'] = '',
   ['keymap.jump_to_mark'] = '<C-m>',
}

