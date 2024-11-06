-- if true then
--   return {}
-- end

return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },
    -- add catppuccin
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin-macchiato",
        },
    },
}
