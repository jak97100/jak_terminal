require('Comment').setup({
    ignore = '^$',
    toggler = {
        line = '<leader>cc',
        block = '<leader>bc',
    },
    opleader = {
        line = '<leader>c',
        block = '<leader>b',
    },
})

local ft = require('Comment.ft')

-- 1. Using set function
ft
 .set('lua', {'--%s', '--[[%s]]--'})
 -- .set('objc', {'//%s', '/*%s*/'})

-- Multiple filetypes
ft({'objc'}, ft.get('c'))
--ft({'toml', 'graphql'}, '#%s')


