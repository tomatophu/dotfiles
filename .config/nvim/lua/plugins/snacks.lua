require('snacks').setup({
   terminal = { enabled = true, },
   bufdelete = { enabled = true, },
   indent = { 
      enabled = true,
      priority = 1,
      scope = {
         enabled = false,
      },
      indent = {
         enabled = true,
         char = '▎',
         hl = 'IblIndent',
      },
   },
})
