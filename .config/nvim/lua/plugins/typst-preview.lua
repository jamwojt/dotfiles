vim.api.nvim_create_autocmd("FileType", {
  pattern = "typst",
  callback = function()
    vim.pack.add({
      { src = "https://github.com/chomosuke/typst-preview.nvim" },
    })

    require("typst-preview").setup({
      open_cmd = "brave-browser --new-window %s",
    })
  end,
})
