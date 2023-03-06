vim.g.mapleader = [[\]]

require "plugman"
require "remaps"

vim.cmd.colorscheme "catppuccin"

local tel = require "telescope"
tel.load_extension "file_browser"


-- options
-- highlight on yank TODO
vim.highlight.on_yank()


-- use system clipboard
--vim.o.clipboard = "unnamedplus"

-- show line numbers
vim.o.number = true

-- show relative line numbers
vim.o.relativenumber = true

-- show cursor line
vim.o.cursorline = true

-- permenently show absolute path
vim.o.shortmess = vim.o.shortmess .. "F"

-- set showmatch
vim.o.showmatch = true

vim.opt.foldmethod = "indent"
