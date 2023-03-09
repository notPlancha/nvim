local vim = vim
local api = vim.api
local opt = vim.opt
vim.g.mapleader = [[\]]

require "plugman"
require "remaps"

vim.cmd.colorscheme "catppuccin"

local tel = require "telescope"
tel.load_extension "file_browser"

-- ufo-fold{
	vim.o.foldcolumn = '1' -- '0' is not bad
	vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
	vim.o.foldlevelstart = 99
	vim.o.foldenable = true

	opt.foldmethod = "indent"
	-- opt.foldexpr = "nvim_treesitter#foldexpr()"
-- }

-- options
-- highlight on yank TODO
vim.highlight.on_yank()


-- use system clipboard
--vim.o.clipboard = "unnamedplus"

vim.o.number = true -- show line numbers


vim.o.relativenumber = true -- show relative line numbers

-- show cursor line
vim.o.cursorline = true

-- permenently show absolute path
vim.o.shortmess = vim.o.shortmess .. "F"

-- set showmatch
vim.o.showmatch = true


if vim.g.neovide then
	vim.g.neovide_transparency = 0.95
end

-- ctrl x isn't working TODO
-- ctrl back isnt deleting a word
-- Tab is conflicted with the hider
-- ctrl v conflicted
