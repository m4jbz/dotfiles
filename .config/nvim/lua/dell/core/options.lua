vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = false

vim.g.mapleader = " "

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.cmd("syntax on")
vim.cmd("filetype plugin on")

vim.cmd("let g:vimwiki_list = [{'path': '~/Documents/wiki/'}]")

-- Enable the display of special characters
vim.opt.list = true

-- Configure the characters for tabs, trailing spaces, and non-breaking spaces
vim.opt.listchars = { tab = "▸ ", trail = "·", nbsp = "␣" }

-- Use spaces instead of tabs
vim.opt.expandtab = true

vim.cmd("colorscheme naysayer")
