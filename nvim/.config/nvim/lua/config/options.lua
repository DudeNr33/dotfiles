-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.python3_host_prog = "~/.config/nvim/.venv/bin/python3"
vim.o.timeoutlen = 300 -- timeout for 'normal' mappings
vim.o.ttimeoutlen = 10 -- timeout for terminal sequences, e.g. involving ESC

-- local powershell_options = {
--   shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
--   shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
--   shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
--   shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
--   shellquote = "",
--   shellxquote = "",
-- }

-- for option, value in pairs(powershell_options) do
--   vim.opt[option] = value
-- end
