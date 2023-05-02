---- SET KEYMAP AND LEADER BUTTONS ----
local keymap = vim.keymap

---- OPEN NETRW ----
keymap.set("n", '<leader>pv', vim.cmd.Ex)


---- MOVEMENT ----
keymap.set("v", 'J', ":m '>+1<CR>gv=gv")    -- VISUAL: Moves highlighted text up
keymap.set("v", 'K', ":m '<-2<CR>gv=gv")    -- VISUAL: Moves highlighted text down
keymap.set("n", '<C-d>', "<C-d>zz")         -- Scrolls halfway up the document
keymap.set("n", '<C-u>', "<C-u>zz")         -- Scrolls halfway down the document
keymap.set("n", 'n', 'nzzzv')
keymap.set("n", 'N', 'Nzzzv')


---- TEXT ALTERATIONS ----
keymap.set("n", 'x', '"_x')             -- Do not yank with x
keymap.set("n", '+', '<C-+>')           -- Incremenet / decrement
keymap.set("n", '-', '<C-->')
keymap.set("n", 'dw', 'vb"_d')          -- Delete a word backwards
keymap.set("n", '<C-a>', 'gg<S-v>G')    -- Select all
keymap.set("n", '<leader>f', '=ap')     -- Format
keymap.set("x", '<leader>p', "\"_dP")   -- Replace highlight text with paste buffer and do not replace paste buffer



---- WINDOWS AND TABS ----
keymap.set("n", 'te', ':tabedit<Return>', {silent = true})          -- New tab 
keymap.set("n", 'tn', ':tabn<Return>', {silent = true})             -- Switch tab next
keymap.set("n", 'tp', ':tabp<Return>', {silent = true})             -- Switch tab previous

keymap.set("n", 'ss', ':split<Return><C-w>w', {silent = true})      -- Split window Horizontally
keymap.set("n", 'sv', ':vsplit<Return><C-w>w', {silent = true})     -- Split window Vertically

keymap.set("", 'sh', '<C-w>h')      -- Move to split window LEFT
keymap.set("", 'sk', '<C-w>k')      -- Move to split window UP
keymap.set("", 'sj', '<C-w>j')      -- Move to split window DOWN
keymap.set("", 'sl', '<C-w>l')      -- Move to split window RIGHT
-- Resize window
keymap.set("n", '<C-w><left>', '<C-w><')
keymap.set("n", '<C-w><right>', '<C-w>>')
keymap.set("n", '<C-w><up>', '<C-w>+')
keymap.set("n", '<C-w><down>', '<C-w>-')
