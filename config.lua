-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.relativenumber = true
require("user.dap-configs.daps")

local formatters = require("lvim.lsp.null-ls.formatters")
local null_ls = require("null-ls")

formatters.setup {
  null_ls.builtins.formatting.black,
  { command = "isort",     filetypes = { "python" } },
  { command = "autoflake", filetypes = { "python" }, args = { "--in-place", "--remove-unused-variables" } }
}
