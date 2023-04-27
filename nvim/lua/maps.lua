local keymap = vim.keymap


---- OPEN NETRW ----
keymap.set('n', '<C-p>', vim.cmd.Ex)


---- TEXT ALTERATIONS ----
-- Do not yank with x
keymap.set('n', 'x', '"_x')
--Incremenet / decrement
keymap.set('n', '+', '<C-+>')
keymap.set('n', '-', '<C-->')
-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')
-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')


---- WINDOWS AND TABS ----
-- New tab
keymap.set('n', 'te', ':tabedit<Return>', {silent = true})
keymap.set('n', 'tn', ':tabn<Return>', {silent = true})
keymap.set('n', 'tp', ':tabp<Return>', {silent = true})
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', {silent = true})
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', {silent = true})
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('n', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>j')
keymap.set('', 's<down>', '<C-w>k')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')
-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
