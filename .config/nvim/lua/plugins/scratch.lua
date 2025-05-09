return {
    "LintaoAmons/scratch.nvim",
    event = "VeryLazy",
    dependencies = {
        { "ibhagwan/fzf-lua" },        --optional: if you want to use fzf-lua to pick scratch file. Recommanded, since it will order the files by modification datetime desc. (require rg)
        { "nvim-telescope/telescope.nvim" }, -- optional: if you want to pick scratch file by telescope
        { "stevearc/dressing.nvim" }   -- optional: to have the same UI shown in the GIF
    },
    config = function()
        require("scratch").setup({
            scratch_file_dir = vim.fn.stdpath("cache") .. "/scratch.nvim", -- where your scratch files will be put
            window_cmd = "rightbelow vsplit",                        -- '' | 'split' | 'edit' | 'tabedit' | 'rightbelow vsplit'
            use_telescope = true,
            -- fzf-lua is recommanded, since it will order the files by modification datetime desc. (require rg)
            file_picker = "fzflua",            -- "fzflua" | "telescope" | nil
            filetypes = { "py", "md", "txt", "go" }, -- you can simply put filetype here
        })
    end
}
