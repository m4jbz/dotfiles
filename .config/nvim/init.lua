-- Most VimTeX mappings rely on localleader and this can be changed with the
-- following line. The default is usually fine and is the symbol "\".
vim.g.maplocalleader = ","

require("dell.lazy")
require("dell.core")

vim.opt.termguicolors = false

-- Enable the display of special characters
vim.opt.list = true

-- Configure the characters for tabs, trailing spaces, and non-breaking spaces
vim.opt.listchars = { tab = "▸ ", trail = "·", nbsp = "␣" }

-- Use spaces instead of tabs
vim.opt.expandtab = true

vim.cmd("colorscheme naysayer")

-- This is necessary for VimTeX to load properly. The "indent" is optional.
-- Note: Most plugin managers will do this automatically!
vim.cmd('filetype plugin indent on')

-- This enables Vim's and neovim's syntax-related features. Without this, some
-- VimTeX features will not work (see ":help vimtex-requirements" for more
-- info).
-- Note: Most plugin managers will do this automatically!
vim.cmd('syntax enable')

-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
vim.g.vimtex_view_method = 'zathura'

-- Or with a generic interface:
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,
-- see ":help vimtex-compiler".
vim.g.vimtex_compiler_method = 'texliveonfly'

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.cmd("syntax on")
vim.cmd("filetype plugin on")
