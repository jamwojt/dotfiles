return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        harpoon = require("harpoon").setup()
        vim.keymap.set("n", "<leader>h", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>H", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "ą", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "ś", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "ð", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "æ", function() harpoon:list():select(4) end)
    end
}
