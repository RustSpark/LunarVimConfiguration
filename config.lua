-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Forum: https://www.reddit.com/r/lunarvim/
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.relativenumber = true
vim.opt.wrap = true
lvim.plugins = require("user.plugins")
require("user.dap-configs.daps")
local formatters = require("lvim.lsp.null-ls.formatters")
local null_ls = require("null-ls")

formatters.setup({
	null_ls.builtins.formatting.black,
	null_ls.builtins.formatting.prettier,
	null_ls.builtins.formatting.stylua,
	{
		command = "isort",
		filetypes = {
			"python",
		},
	},
	{
		command = "autoflake",
		filetypes = {
			"python",
		},
		args = {
			"--in-place",
			"--remove-unused-variables",
		},
	},
})
