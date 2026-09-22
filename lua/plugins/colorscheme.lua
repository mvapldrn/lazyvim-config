return {
    {
        "EdenEast/nightfox.nvim",

        config = function()
            require("nightfox").setup({
                options = {
                    transparent = false,
                    dim_inactive = false,
                    colorblind = {
                        enable = true,
                        severity = {
                            protan = 0.8,
                            deutan = 0.3,
                            tritan = 0.3,
                        },
                    },
                    styles = {
                        comments = "italic",
                        strings = "italic",
                    },
                    inverse = {
                        visual = true,
                        search = true,
                    }
                },
                palettes = {
                    all = {
                        whitespace = "#FF0000",
                        comment = "#D0D050",
                    },
                },
                groups = {
                    all = {
                        Whitespace = { bg = "palette.whitespace" },
                        Comment = { fg = "palette.comment" },
                    },
                }
            })
        end,
    },

    -- Configure LazyVim to load nightfox
    {
        "LazyVim/LazyVim",
        opts = {
          colorscheme = "nightfox",
          --colorscheme = "duskfox",
          --colorscheme = "nordfox",
          --colorscheme = "terafox",
          --colorscheme = "carbonfox",
        },
    },
}
