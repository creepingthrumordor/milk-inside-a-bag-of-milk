return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#000000", -- Default background
                base01 = "#b394b8", -- Lighter background (status bars)
                base02 = "#000000", -- Selection background
                base03 = "#b394b8", -- Comments, invisibles
                base04 = "#d0c7d1", -- Dark foreground
                base05 = "#ddd3de", -- Default foreground
                base06 = "#ddd3de", -- Light foreground
                base07 = "#d0c7d1", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#b369bf", -- Variables, errors, red
                base09 = "#d5a7dd", -- Integers, constants, orange
                base0A = "#c27acc", -- Classes, types, yellow
                base0B = "#c06acd", -- Strings, green
                base0C = "#ca84d4", -- Support, regex, cyan
                base0D = "#bf57ce", -- Functions, keywords, blue
                base0E = "#bd77c8", -- Keywords, storage, magenta
                base0F = "#e2bae7", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
