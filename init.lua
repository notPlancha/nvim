local vim = vim
local api = vim.api
local opt = vim.opt
vim.g.mapleader = [[\]]

require "plugman"
require "remaps"

vim.cmd.colorscheme "catppuccin"

local tel = require "telescope"
tel.load_extension "file_browser"

-- fold{
	vim.o.foldcolumn = '1' -- I have no idea
	vim.o.foldlevel = 99 -- don't know either
	vim.o.foldlevelstart = 99 -- like what is this
	vim.o.foldenable = true

	opt.foldmethod = "marker"
	vim.o.foldmarker = "{,}"
	-- opt.foldexpr = "nvim_treesitter#foldexpr()"
-- }

vim.o.number = true -- show line numbers
vim.o.relativenumber = true -- show relative line numbers

-- I think it highlights the line i'm on
vim.o.cursorline = true

-- set showmatch
-- With showmatch enabled, when you enter a close-bracket, the cursor briefly jumps to the matching open-bracket. This is only done when entering the text (i.e. in insert mode).
vim.o.showmatch = false

vim.g.loaded_matchparen = 1

if vim.g.neovide then
	vim.g.neovide_transparency = 0.95
end

-- ctrl x isn't working TODO
-- ctrl back isnt deleting a word
-- Tab is conflicted with the hider
-- ctrl v conflicted
