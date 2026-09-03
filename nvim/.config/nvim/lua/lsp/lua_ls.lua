vim.lsp.enable("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }, -- avoid "undefined global vim"
      },
    },
  },
})
