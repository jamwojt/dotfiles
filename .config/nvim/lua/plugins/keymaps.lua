return {
    vim.keymap.set("n", "K",function() vim.lsp.buf.hover({border = "single"}) end, {}),
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {}),
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}),
    vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {}),
    vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float() end),

    vim.keymap.set("n", "<leader>nh", ":noh<CR>", {}),

    vim.keymap.set("v", "<leader>y", '"+y', {}),
    vim.keymap.set("n", "<leader>p", '"+p', {}),

    vim.keymap.set("n", "<C-d>", "<C-d>zz", {}),
    vim.keymap.set("n", "<C-u>", "<C-u>zz", {}),

    vim.keymap.set("n", "<C-h>", ":wincmd h<CR>"),
    vim.keymap.set("n", "<C-j>", ":wincmd j<CR>"),
    vim.keymap.set("n", "<C-k>", ":wincmd k<CR>"),
    vim.keymap.set("n", "<C-l>", ":wincmd l<CR>"),

    vim.keymap.set("n", "<leader>te", ":lua MiniFiles.open(nil, false)<CR>", {}),
    vim.keymap.set("n", "<leader>v", ":TypstPreview<CR>", {}),

    vim.keymap.set("n", "<leader>sp", ":Scratch<CR>", {})
}
