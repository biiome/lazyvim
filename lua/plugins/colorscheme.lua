local tokyonight = {
  "folke/tokyonight.nvim",
  opts = {
    transparent = { true },
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
}
local catppuccin = {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        term_colors = true,
        float = {
          transparent = true,
          solid = false,
        },
      })

      vim.cmd([[colorscheme catppuccin]])
    end,
  },
}

return { tokyonight }
