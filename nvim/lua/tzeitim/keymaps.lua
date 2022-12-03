
local opts = {noremap = true, silent = true}
local term_opts = {silent = true}

-- alias
--
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
--keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = "'"
vim.g.maplocalleader = "'"
--- window navigation 
-- "n" is for "normal mode"
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- center screen while doing half page up/down
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- toggle Lexplore
keymap("", "<leader>e", ":Lex 40<cr>", opts)

-- LSP controls
--
keymap("n", "<leader>zz", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)

-- Resize with arrows

keymap("n", "<C-S-Up>", ":resize +2<cr>", opts)
keymap("n", "<C-S-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-S-Left>", ":vertical resize +2<cr>", opts)
keymap("n", "<C-S-Right>", ":vertical resize -2<cr>", opts)

-- Navigate buffers
keymap("n", "<S-j>", ":bnext<CR>", opts)
keymap("n", "<S-k>", ":bprevious<CR>", opts)
keymap("n", "<leader>bb", ":Buffers<CR>", opts)
keymap("n", "<leader>aa", ":History<CR>", opts)

-- Insert
-- Visual
-- Stay in indent mode

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-S-j>", ":m .+1<CR>==", opts) -- not working
keymap("v", "<A-S-k>", ":m .-2<CR>==", opts) -- not working
keymap("v", "p", '"_dP', opts) -- to fully understand one needs to lear registers beforehand. What it does is that when a selected text is replaced with a yanked string, the replaced one will not replace the previously yanked from the "clipboard"

-- Telescope
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>ss", [[<Cmd>lua require'tzeitim.telescope'.find_src()<CR>]], {})
keymap("n", "<leader>ee", [[<Cmd>lua require'tzeitim.telescope'.find_dot()<CR>]], {})
--keymap("n", "<leader>ee", [[<Cmd>lua require'tzeitim.telescope'.findnotes()<CR>]], { noremap = true, silent = true })
--

-- floaterm
--
keymap("n", "<leader>tt", ":FloatermNew<cr>", {})
--mine
