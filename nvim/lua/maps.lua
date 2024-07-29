vim.g.mapleader = " "
vim.keymap.set('n', "<leader>pv", vim.cmd.Ex)
local keymap = vim.keymap 

--donot yank with x
keymap.set('n',  'x',  '"_x')

-- increament/decremeent
keymap.set('n', '+', '<C-a>') -- increase the number on the cursor
keymap.set('n', '-', '<C-x>') -- decreasee the number 

--delete the word backwards

keymap.set('n', 'dw', 'vb"_d')

--select all

keymap.set('n', "<C-a>", "gg<S-v>G")
-- tab movement
keymap.set('n', "<tab>", ":tabn<cr>")
keymap.set('n', "<tab>-p", ":tabp<cr>")
-- new tab
keymap.set('n' , 'te', ":tabedit<Return>" , { silent = true }) -- editing in multiple files at the same time
-- split window
keymap.set('n', 'ss' , ":split<Return><C-w>w", { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- move between window
-- keymap.set("n", "<Space>", "<C-w>w") -- moving line wise
keymap.set("", "s<left>", "<C-w>h")
keymap.set("", "s<up>", "<C-w>j")
keymap.set("", "s<down>", "<C-w>k")
keymap.set("", "s<right>", "<C-w>l")

keymap.set("", "sh", "<C-w>h")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sl", "<C-w>l")


-- resize the window

keymap.set('n', "<C-w><left>", '<C-w><')
keymap.set('n', "<C-w><right>", '<C-w>>')
keymap.set('n', "<C-w><up>", '<C-w>+')
keymap.set('n', "<C-w><down>", '<C-w>-')


-- for saving and executing the file
vim.keymap.set('n', "<leader><leader>", function () 
        vim.cmd("so")
end )
