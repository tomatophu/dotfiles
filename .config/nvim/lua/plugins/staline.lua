require('staline').setup({
   defaults = {
      bg = '#292c3c',
      fg = '#292c3c',
      true_colors = true,
      inactive_color = '#babbf1',
      line_column = ' [%l/%L] :%c',
   },

   mode_colors = {
      ['n'] = '#8caaee',
      ['nt'] = '#8caaee',
      ['no'] = '#8caaee',
      ['nov'] = '#8caaee',
      ['noV'] = '#8caaee',
      ['niI'] = '#8caaee',
      ['niR'] = '#8caaee',
      ['niV'] = '#8caaee',
      ['i'] = '#a6d189',
      ['ic'] = '#a6d189',
      ['ix'] = '#a6d189',
      ['s'] = '#a6d189',
      ['S'] = '#a6d189',
      ['t'] = '#a6d189',
      ['!'] = '#a6d189',
      ['c'] = '#ef9f76',
      ['v'] = '#ca9ee6',
      ['V'] = '#ca9ee6',
      [''] = '#ca9ee6',
      ['r'] = '#e78284',
      ['r?'] = '#e78284',
      ['R'] = '#e78284',
      ['Rv'] = '#e78284',

   },

   mode_icons = {
      ['n'] = 'NORMAL 󰋜 ',
      ['nt'] = 'NORMAL 󰋜 ', -- normal mode in terminal
      ['no'] = 'NORMAL 󰋜 ',
      ['nov'] = 'NORMAL 󰋜 ',
      ['noV'] = 'NORMAL 󰋜 ',
      ['niI'] = 'NORMAL 󰋜 ',
      ['niR'] = 'NORMAL 󰋜 ',
      ['niV'] = 'NORMAL 󰋜 ',
      ['i'] = 'INSERT 󰏫 ',
      ['ic'] = 'INSERT 󰏫 ',
      ['ix'] = 'INSERT 󰏫 ',
      ['s'] = 'INSERT 󰏫 ',
      ['S'] = 'INSERT 󰏫 ',
      ['t'] = 'TERMINAL  ',
      ['!'] = 'TERMINAL  ',
      ['c'] = 'COMMAND  ',
      ['v'] = 'VISUAL 󰈈 ',
      ['V'] = 'VISUAL 󰈈 ', -- visual line mode
      [''] = 'VISUAL 󰈈 ', -- visual block mode
      ['r'] = 'REPLACE  ',
      ['r?'] = 'REPLACE  ',
      ['R'] = 'REPLACE  ', 
      ['Rv'] = 'V-REPLACE  ' -- visual replace mode
   },

   lsp_symbols = {
      Error = ' ',
      Warn = ' ',
      Hint = '󰌶 ',
      Info = '󰋽 ',
   },

   sections = {
      left = { '- ', '-mode', 'left_sep', 'branch' },
      mid  = { 'file_name', 'lsp' },
      right = { 'cool_symbol', 'right_sep', '-line_column', '- ' },
   },

})

require('stabline').setup({
   inactive_fg = '#babbf1',
})

