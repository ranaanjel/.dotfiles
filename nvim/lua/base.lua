-- print("inside the base.lua")

vim.cmd('autocmd!')

vim.opt.nu = true
vim.opt.relativenumber = true

vim.scriptencoding = 'utf-8'
vim.opt.encoding = "utf-8"
vim.opt.fileencoding= "utf-8"

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true 
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = "zsh"
vim.opt.backupskip = "/tmp/*,/private/tmp/*"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = true -- No wrap linees
vim.opt.backspace = "start,eol,indent"
vim.opt.path:append { "**" } -- finding files - search down into the subfolders
vim.opt.wildignore:append {"*/node_modules/*"}


-- undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:3m"]])
-- but doesn't work on iterm2 

-- turn off the paste mode when leaving the insert mode

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste"
})

-- add astericks in the block commeents 

vim.opt.formatoptions:append { 'r' }


