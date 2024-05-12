local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>h', builtin.live_grep, {})
vim.keymap.set('n', '<leader>g', builtin.grep_string, {})

-- Not needed
-- vim.keymap.set('n', '<leader>g', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)
