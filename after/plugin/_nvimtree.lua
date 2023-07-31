require("nvim-tree").setup()

vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<cr>", { noremap = true, silent = true })
