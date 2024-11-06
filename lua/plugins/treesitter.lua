return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "˚",
                    node_incremental = "˚",
                    scope_incremental = false,
                    node_decremental = "∆",
                    -- init_selection = "<C-space>",
                    -- node_incremental = "<C-space>",
                    -- scope_incremental = false,
                    -- node_decremental = "<bs>",
                },
            },
        },
    },
}
