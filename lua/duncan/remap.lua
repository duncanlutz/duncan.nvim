-- Remap leader to space
vim.g.mapleader = " "

-- Sets the exit command to space-pv
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Allows you to move selected lines of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Moves next line to the end of the current line, but keeps the cursor in the same place
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps the cursor in the same place when moving up and down with C-d and C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep the cursor in the same place when searching using /
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete and replace the current line with the yanked line
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Allows you to use space-y to copy a paragraph to the system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Deletes to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- I think this just remaps capital Q to do nothing?
vim.keymap.set("n", "Q", "<nop>")

-- Allows you to switch between buffers with C-h and C-l
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Format the current buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quickfix and navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set({ 'n', 'v', 'i' }, '<F1>', function()
end)
