require("nvim-tree").setup()

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", { noremap = true, silent = true })
