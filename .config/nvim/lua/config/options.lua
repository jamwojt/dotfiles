vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "88"
vim.o.guifont = "Hack Nerd Font"

vim.g.mapleader = " "
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.signcolumn = "yes"

vim.diagnostic.config({
    virtual_text = true,
    virtual_line = true,
    signs = true,        -- Gutter signs
    underline = true,    -- Underline issues
    update_in_insert = true,
    severity_sort = true,
    float = { border = "single" }
})
