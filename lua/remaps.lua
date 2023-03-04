---args: 
---@mode: string|table of strings, between: 
---    n: normal mode
---    i: insert mode
---    v: visual mode
---    others not important rn
---@key: string of set of keys
---@func: string of what to write
---@silent: boolean, if true, then no echo, default false
local function map(key, func, mode, silent)
    vim.keymap.set(mode or "n", key, func, {noremap = true, silent = silent or false})
end

local function lmap(key, func, mode, silent)
    vim.keymap.set(mode or "n", "<leader>" .. key, func, {noremap = true, silent = silent or false})
end

local function cmd(words, func, nargs, desc, bangable, oncomplete) 
    vim.api.nvim_create_user_command(words, func, {
        nargs = nargs or 0,
        desc = desc or "No desc provided",
        bang = bangable or false,
        complete = oncomplete
    })
end
-- quit with :Q
cmd("Q",":wqa<CR>",0,"Quit all windows")
-- paste with v and ctrl v
-- map("v",'"+p',"n") --v is used for visual mode
map("<C-v>",'"+p',"n")
-- also in insert mode
map("<C-v>",'<Esc>"+pi',"i")
-- go to end of line shift e
map("<S-e>","$","n")
-- go to start of the word with q
map("q","b","n")
-- go to start of the line with shift q
map("<S-q>","^","n")
-- copy with c and ctrl c
map("c",'"+y',"v")
map("<C-c>",'"+y',"v")
-- copy line with cc
map("cc",'"+yy',"n")
-- cut with x
map("x",'"+d',"v")
-- cut line with xx
map("xx",'"+dd',"n")
-- undo with ctrl z
map("<C-z>","u","n")
map("<C-z>","<Esc>u","i")
-- redo with ctrl y
map("<C-y>","<C-r>","n")
-- alt arrow down to go to end of file
map("<A-Down>","G","n")
-- alt arrow up to go to start of file
map("<A-Up>","gg","n")
-- alt arrow left to go to start of line
map("<A-Left>","^","n") --TODO check if it works
-- alt arrow right to go to end of line
map("<A-Right>","$","n") --TODO check if it works
-- leader < to go back to last position of cursor
lmap("<", "<C-o>","n")
lmap(">","<C-i>","n")
-- shift arrow to walk words
map("<S-Left>","b","n")
map("<S-Right>","e","n")
-- enter blockwise visual mode with leader enter
lmap("<CR>", "<C-q>", "n")
-- center screen on cursor on leader space
lmap(" ","zz","n")
-- cut the rest of the line on x arrow
map("<x-Right>","d$","n")
-- copy the rest of the line on c arrow
map("<c-Right>","+y$","n")
-- copy the word with c w
map("cw","+yiw","n")
-- space to enter insert mode
map(" ","i ","n")
-- enter to enter insert mode on new line
map("<CR>","o","n")
-- shift arrow down to move line down
map("<S-Down>",":m .+1<Enter>","n")
map("<S-Down>","<Esc>:m .+1<Enter>i","i")
-- shift arrow up to move line up
map("<S-Up>",":m .-2<Enter>","n")
map("<S-Up>","<Esc>:m .-2<Enter>i","i")
-- repeat same command with .
map(".","@:","n")
-- delete with delete key
--map("<Del>","x","n")
-- delete previous with backspace
--map("<BS>","X","n")
-- delete word with ctrl backspace
map("<C-H>","diw","n") -- https://redd.it/prp8zw
-- delete selected with delete and backspace and enter insert mode
map("<Del>","xi","v")
map("<BS>","xi","v")
-- select all with ctrl a
map("<C-a>","ggVG","n")
map("<C-a>","<Esc>ggVG","i")
-- save with ctrl s
map("<C-s>", function() 
    vim.cmd("w")
    print("Saved")
end,{"n","i"})
-- save as with ctrl shift s
map("<C-S-s>",":w<Space>","n")
map("<C-S-s>","<Esc>:w<Space>","i")
-- insert key to replace
map("<Insert>","R","n")

-- tab lines
map("<Tab>",">>","n")
map("<S-Tab>","<<","n")
map("<Tab>",">gv","v")
map("<S-Tab>","<gv","v")

-- select everything inside x with s " or s ' etc
map('s"', "vi\"","n")
map("s'", "vi'","n")
map("s`", "vi`","n")
map("s(", "vi(","n")
map("s)", "vi)","n")
map("s[", "vi[","n")
map("s]", "vi]","n")
map("s{", "vi{","n")
map("s}", "vi}","n")

-- same thing but with delete instead of select, using backspace
map('<BS>"\""','di"i',"n")
map("<BS>'", "di'i","n")
map("<BS>`", "di`i","n")
map("<BS>(", "di(i","n")
map("<BS>)", "di)i","n")
map("<BS>[", "di[i","n")
map("<BS>]", "di]i","n")
map("<BS>{", "di{i","n")
map("<BS>}", "di}i","n")
-- goto end of "" with " and goto start of "" with shift "
-- TODO

-- map alt mouse1 to mouse3 
map("<MiddleMouse>", "<A-LeftMouse>","n")