local status, git = pcall(require, 'git')
if (not status) then return end
git.setup {

	keymaps = {
		blame = '<leader>gb', -- open blame window
		browser = '<leader>go', -- open file/folder in git repository
	}

}
