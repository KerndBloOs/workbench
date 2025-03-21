vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- paste without overwriting register
keymap.set("v", "p", '"_dP')

-- create new file
keymap.set("n", "<leader>ne", "<cmd>ene<CR>", { desc = "Create new file" }) -- create new file

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- buffers
-- keymap.set("n", "tj", ":blast<enter>", { noremap = false }) -- open last buffer
-- keymap.set("n", "th", ":bfirst<enter>", { noremap = false }) -- open first buffer
keymap.set("n", "<leader>j", ":bprev<enter>", { desc = "Go to previous buffer" }) -- open previous buffer
keymap.set("n", "<leader>k", ":bnext<enter>", { desc = "Go to next buffer" }) -- open next buffer
keymap.set("n", "<leader>q", "<cmd>bp|bd #<CR>", { desc = "Close buffer" }) -- close buffer
