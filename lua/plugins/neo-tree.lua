return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        spec = {
            -- { "<BS>", desc = "Decrement Selection", mode = "x" },
            -- { "<c-space>", desc = "Increment Selection", mode = { "x", "n" } },
            { "∆", desc = "Decrement Selection", mode = "x" },
            { "˚", desc = "Increment Selection", mode = { "x", "n" } },
        },
        filesystem = {
            filtered_items = {
                -- visible = true,
                visible = false,
                show_hidden_count = true,
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_by_name = {
                    ".git",
                    ".idea",
                    ".DS_Store",
                    -- 'thumbs.db',
                },
                -- never_show = {},
            },
        },
    },
}
