local opt = vim.opt

--General
opt.number = true
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 400

opt.wrap = true
opt.undofile = true
opt.smoothscroll = true
opt.showmode = false
opt.number = true
opt.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus" -- Sync with system clipboard


opt.splitbelow = true
opt.splitright = true
