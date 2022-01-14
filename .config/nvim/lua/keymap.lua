local map = vim.api.nvim_set_keymap

-- Move Lines vertically
-- Original key mappings from: https://vim.fandom.com/wiki/Moving_lines_up_or_down

map("n", "<A-Up>",   ":m .-2<CR>==", { silent = true })
map("n", "<A-Down>", ":m .+1<CR>==", { silent = true })

map("i", "<A-Up>",   "<Esc>:m .-2<CR>==gi", { silent = true })
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { silent = true })

map("v", "<A-Up>",   ":m '<-2<CR>gv=gv", { silent = true })
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { silent = true })

-- NvimTree

map("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<C-l>", ":NvimTreeFocus<CR>",  { silent = true })
