local map = vim.api.nvim_set_keymap
local options = { silent = true }

-- Move between windows
map("n", "<C-Left>", "<C-W>h", options)
map("n", "<C-Down>", "<C-W>j", options)
map("n", "<C-Up>", "<C-W>k", options)
map("n", "<C-Right>", "<C-W>l", options)

map("i", "<C-Left>", "<C-W>h", options)
map("i", "<C-Down>", "<C-W>j", options)
map("i", "<C-Up>", "<C-W>k", options)
map("i", "<C-Right>", "<C-W>l", options)

map("v", "<C-Left>", "<C-W>h", options)
map("v", "<C-Down>", "<C-W>j", options)
map("v", "<C-Up>", "<C-W>k", options)
map("v", "<C-Right>", "<C-W>l", options)

-- Move Lines vertically
-- Original key mappings from: https://vim.fandom.com/wiki/Moving_lines_up_or_down

map("n", "<A-Up>",   ":m .-2<CR>==", options)
map("n", "<A-Down>", ":m .+1<CR>==", options)

map("i", "<A-Up>",   "<Esc>:m .-2<CR>==gi", options)
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", options)

map("v", "<A-Up>",   ":m '<-2<CR>gv=gv", options)
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", options)

-- NvimTree

map("n", "<C-n>", ":NvimTreeToggle<CR>", options)
map("n", "<C-l>", ":NvimTreeFocus<CR>",  options)

-- ToggleTerm
map("n", "<C-t>", ":ToggleTerm size=15<CR>", options)
map("i", "<C-t>", "<Esc>:ToggleTerm size=15<CR>", options)
map("v", "<C-t>", "<Esc>:ToggleTerm size=15<CR>", options)

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_set_keymap('t', '<C-Left>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_set_keymap('t', '<C-Down>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_set_keymap('t', '<C-Up>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_set_keymap('t', '<C-Right>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- CoC
map("i", "<Tab>", "<C-n>", options)
map("i", "<C-space>", "<C-n>", options)
