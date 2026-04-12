vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "88"

vim.o.guifont = "Hack Nerd Font"

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "

vim.diagnostic.config({
    virtual_text = true, -- Inline diagnostics
    signs = true,        -- Gutter signs
    underline = true,    -- Underline issues
    update_in_insert = true,
    severity_sort = true,
    float = { border = "single" }
})
