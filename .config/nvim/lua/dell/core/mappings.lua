vim.keymap.set('n', '<C-q>', ':q"<CR>')
vim.keymap.set('n', '^[[1;3C', ':tabn<CR>')
vim.api.nvim_set_keymap('n', '<Tab>', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bp<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-b>', ':!touch build.sh && chmod +x build.sh<CR>')
vim.keymap.set('n', 'ff', ':!./build.sh<CR>')
vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', '"+p', { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<C-n>', ':Ex<CR>')
vim.keymap.set('n', '<leader>t', ':edit ')
vim.keymap.set('n', '<leader>b', ':VimwikiGoBackLink<CR>')

vim.keymap.set('n', 'ty', ':VimtexCompile <CR>')

-- Define a function to set up LaTeX-specific keybindings
local function setup_tex_mappings()
  -- Insert mode mappings for LaTeX commands
  vim.api.nvim_buf_set_keymap(0, 'i', ',sec', '\\section{}<Left>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',tbf', '\\textbf{}<Left>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',tsc', '\\textsc{}<Left>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',tit', '\\textit{}<Left>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',toc', '\\tableofcontents<CR>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',btp', '\\begin{titlepage}<CR><CR>\\end{titlepage}<CR><CR><Esc>3kA<Space>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',box', '\\begin{tcolorbox}<CR><CR>\\end{tcolorbox}<CR><CR><Esc>3kA<Space>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',at', '\\documentclass[a4paper, 12pt]{article}<CR><CR>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',be', '\\documentclass[aspectratio=169, 10pt]{beamer}<CR><CR>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',bmm', '\\usetheme{Madrid}<CR>\\usecolortheme{dove}<CR>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',ssec', '\\subsection{}<Left>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',img', '\\includegraphics[width=0.5\\textwidth]{}<Left>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',pk', '\\usepackage{}<Left>', { noremap = true, silent = true })

  -- Insert mode mappings for LaTeX packages and configurations
  vim.api.nvim_buf_set_keymap(0, 'i', ',fal', [[
\usepackage[utf8]{inputenc}<CR>
\usepackage[T1]{fontenc}<CR>
\usepackage[spanish]{babel}<CR>
\usepackage[margin=1in, top=1in, bottom=1in, includefoot]{geometry}<CR>
\usepackage{graphicx}<CR>
\usepackage{fancyhdr}<CR>
\usepackage{xcolor}<CR>
\usepackage{amsmath}<CR>
\usepackage{amssymb}<CR>
\usepackage{pdflscape}<CR>
\usepackage{hyperref}<CR>
\usepackage{lipsum}<CR>
\usepackage{parskip}<CR>
\pagestyle{empty}<CR><CR>
]], { noremap = true, silent = true })

  vim.api.nvim_buf_set_keymap(0, 'i', ',fbm', [[
\usepackage[utf8]{inputenc}<CR>
\usepackage[spanish]{babel}<CR>
\usepackage{graphicx}<CR>
\usepackage{fancyhdr}<CR>
\usepackage{xcolor}<CR>
\usepackage{amsmath}<CR>
\usepackage{amssymb}<CR>
\usepackage{pdflscape}<CR>
\usepackage{hyperref}<CR>
\usepackage[figurename=Ejemplo]{caption}<CR>
\usepackage{lipsum}<CR>
\usepackage{parskip}<CR><CR>
]], { noremap = true, silent = true })

  -- Insert mode mappings for LaTeX environments
  vim.api.nvim_buf_set_keymap(0, 'i', ',ol', '\\begin{enumerate}<CR><CR>\\end{enumerate}<CR><CR><Esc>3kA\\item<Space>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',ul', '\\begin{itemize}<CR><CR>\\end{itemize}<CR><CR><Esc>3kA\\item<Space>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',bd', '\\begin{document}<CR><CR>\\end{document}<Esc>3kA<Tab>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',bf', '\\begin{frame}<CR><CR>\\end{frame}<Esc>3kA<Tab>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'i', ',bc', '\\begin{center}<CR><CR>\\end{center}<Esc>3kA<Tab>', { noremap = true, silent = true })
end

-- Set up the autocmd to apply the mappings for LaTeX files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tex',
  callback = setup_tex_mappings,
})
