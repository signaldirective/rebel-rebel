return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#070707",
        dark_bg    = "#050505",
        darker_bg  = "#040404",
        lighter_bg = "#202020",

        fg         = "#F9DEBE",
        dark_fg    = "#bba78f",
        light_fg   = "#fae3c8",
        bright_fg  = "#fbe6ce",
        muted      = "#5f5d57",

        red        = "#c5836b",
        yellow     = "#ffde94",
        orange     = "#ce9681",
        green      = "#f1b672",
        cyan       = "#ffd163",
        blue       = "#b36673",
        purple     = "#ee8d86",
        brown      = "#7c5a4d",

        bright_red    = "#e79375",
        bright_yellow = "#ffd878",
        bright_green  = "#ffc86b",
        bright_cyan   = "#ffe654",
        bright_blue   = "#d37485",
        bright_purple = "#ff9991",

        accent               = "#b36673",
        cursor               = "#F9DEBE",
        foreground           = "#F9DEBE",
        background           = "#070707",
        selection             = "#202020",
        selection_foreground = "#F9DEBE",
        selection_background = "#202020",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
