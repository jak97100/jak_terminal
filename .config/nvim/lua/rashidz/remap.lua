vim.g.mapleader = "\\"
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)


-- TODO: when adding nerd tree
--vim.keymap.set("n", "<F1>" NERDTreeToggle<Enter>)
--vim.keymap.set("n", "<F2> :NERDTreeFind<Enter>

vim.keymap.set('n', '<F1>', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n', '<F2>', '<Cmd>Neotree filesystem reveal left<CR>')
vim.keymap.set("n", "<F3>", function() toggle_hlsearch() end)
vim.keymap.set("n", "<F4>", function() vim.o.list = not vim.o.list end)

--vim.keymap.set("n", "<leader>z", function() vim.o.relativenumber = not vim.o.relativenumber end)
vim.keymap.set("n", "<Space>", "<C-d><CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- nops
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "J", "<nop>")
vim.keymap.set("n", "<Up>" ,"<nop>")
vim.keymap.set("n", "<Down>", "<nop>")
vim.keymap.set("n", "<Left>", "<nop>")
vim.keymap.set("n", "<Right>", "<nop>")

vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv")

-- TODO: copying to clipboard

function toggle_hlsearch()
    vim.o.hlsearch = not vim.o.hlsearch
    print("set hlsearch!")
end
