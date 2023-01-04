local keymap = vim.keymap

vim.g.mapleader = " "

-- netrw
keymap.set("n", "<leader>fv", vim.cmd.Ex)

-- copy file path
keymap.set("n", "<leader>cp", "<cmd>Cppath<CR>")

-- delete character and not copy into the register
keymap.set("n", "x", '"_x')

-- highlighted line movement
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- cursor remain in place when appending
keymap.set("n", "J", "mzJ`z")

-- halfpage jumping cursor in the middle of the screen
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- allows search term to stay in the middle of the screen
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- delete highlighted word into the void register so it will not be on the clipboard when yanking
keymap.set("x", "<leader>p", [["_dP]])

-- copying and deleting in the global clipboard so yank in vim and global are separated
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set({"n", "v"}, "<leader>d", [["_d]])
keymap.set("n", "<leader>Y", [["+Y]])

-- escape
keymap.set("i", "<C-c>", "<Esc>")
keymap.set("i", "jk", "<Esc>")
keymap.set("i", "kj", "<Esc>")

-- better tabbing
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- save
keymap.set("n", "<C-s>", "<cmd>w<CR>")

-- quit
keymap.set("n", "<C-Q>", "<cmd>q!<CR>")

-- better window navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

keymap.set("n", "Q", "<nop>")

-- tmux
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix navigation
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- search and replace the word you are currently on cursor
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make bash executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- remove highlight on last search
keymap.set("n", "<cr>", ":nohl<CR>")

-- splitting window
keymap.set("n", "<leader>wv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
