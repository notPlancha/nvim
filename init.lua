require "plugman"
require "remaps"

vim.cmd.colorscheme "catppuccin"

local tel = require "telescope"
tel.load_extension "file_browser"