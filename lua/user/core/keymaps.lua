local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

--Setting leader key!

keymap("","<Space>","<Nop>",opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

		-- Keybinds for respective modes --
-- NORMAL MODE --

-- Window nav
keymap("n", "<C-h>","<C-w>h", opts)
keymap("n", "<C-j>","<C-w>j", opts)
keymap("n", "<C-k>","<C-w>k", opts)
keymap("n", "<C-l>","<C-w>l", opts)

--Buffer nav
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)


-- Move lines above and below --
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- INSERT MODE --

-- Quick normal mode! --
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- VISUAL MODE --

-- Allow continuous indentation in visual mode --
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move blocks up and down --

keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- VISUAL BLOCK MODE --

-- Move text up and down

keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

------------PLUGIN KEYMAPS---------------------
--
--
--	NVIM TREE --
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- TELESCOPE --
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
