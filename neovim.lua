return {
  {
    "bjarneo/aether.nvim",
    name = "aether",
    priority = 1000,
    opts = {
      disable_italics = false,
      colors = {
        -- Monotone shades (base00-base07)
        base00 = "#05080A", -- Default background
        base01 = "#313c44", -- Lighter background (status bars)
        base02 = "#05080A", -- Selection background
        base03 = "#5482a1", -- Comments, invisibles
        base04 = "#EBECFD", -- Dark foreground
        base05 = "#ffffff", -- Default foreground
        base06 = "#ffffff", -- Light foreground
        base07 = "#EBECFD", -- Light background

        -- Accent colors (base08-base0F)
        base08 = "#f4349a", -- Variables, errors, red
        base09 = "#fe86c6", -- Integers, constants, orange
        base0A = "#b88faa", -- Classes, types, yellow
        base0B = "#7bbc96", -- Strings, green
        base0C = "#9BF1F2", -- Support, regex, cyan
        base0D = "#807cda", -- Functions, keywords, blue
        base0E = "#E957E8", -- Keywords, storage, magenta
        base0F = "#ddc6d5", -- Deprecated, brown/yellow
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
