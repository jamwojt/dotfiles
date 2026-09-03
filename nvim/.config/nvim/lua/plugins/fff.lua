local fff = require("fff")
fff.setup({
  opts = {
    debug = {
      enabled = true,
      show_scores = true,
    },
  },
  lazy = false, -- the plugin lazy-initialises itself
})
vim.keymap.set("n", "<Leader>fd", fff.find_files)
vim.keymap.set("n", "<Leader>fg", function() fff.live_grep({grep = {modes = {"fuzzy", "plain"}}}) end)
vim.keymap.set({"n", "x"}, "<Leader>fw", fff.live_grep_under_cursor)
