return {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        local cmp = require("cmp")
        local auto_select = true

        opts.mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
            ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
            -- ["<C-Space>"] = cmp.mapping.complete(),
            ["ç"] = cmp.mapping.complete(),
            ["<CR>"] = LazyVim.cmp.confirm({ select = auto_select }),
            ["<C-y>"] = LazyVim.cmp.confirm({ select = true }),
            ["<S-CR>"] = LazyVim.cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            ["<C-CR>"] = function(fallback)
                cmp.abort()
                fallback()
            end,
        })
        -- opts.mapping = vim.tbl_extend("force", opts.mapping, {
        --     ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        --     ["<C-f>"] = cmp.mapping.scroll_docs(4),
        --     ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        --     ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        --     -- ["<C-Space>"] = cmp.mapping.complete(),
        --     ["ç"] = cmp.mapping.complete(),
        --     ["<CR>"] = LazyVim.cmp.confirm({ select = auto_select }),
        --     ["<C-y>"] = LazyVim.cmp.confirm({ select = true }),
        --     ["<S-CR>"] = LazyVim.cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        --     ["<C-CR>"] = function(fallback)
        --         cmp.abort()
        --         fallback()
        --     end,
        --
        --     -- My config
        --     -- ["<Down>"] = cmp.config.disable,
        --     -- ["<Up>"] = cmp.config.disable,
        --     -- ["<CR>"] = cmp.mapping.confirm({ select = false }), -- 'select = false' to only confirm explicitly selected item
        --     -- ["<S-CR>"] = cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        --
        --     -- LazyVim defaults
        --     -- ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        --     -- ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        --     -- ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        --     -- ["<C-f>"] = cmp.mapping.scroll_docs(4),
        --     -- ["<C-Space>"] = cmp.mapping.complete(),
        --     -- ["<C-e>"] = cmp.mapping.abort(),
        -- })
    end,
}
